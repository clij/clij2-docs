

# Tribolium embryo morphometry
Authors: Robert Haase, Daniela Vorkel, April 2020

[Source](https://github.com/clij/clij2-docs/tree/master/src/main/macro/tribolium_morphometry.ijm)

This script is an example of heavy GPU-accelerated processing. It is recommended to use a dedicated
graphics card with at least 8 GB of GDDR6 memory. Otherwise, it may be quite slow.

Let's initialize that graphics card and mesure the start time.

```java
run("CLIJ2 Macro Extensions", "cl_device=[GeForce RTX 2060 SUPER]");
Ext.CLIJ2_clear();

run("Close All");
time = getTime();
Ext.CLIJ2_startTimeTracing();
```

## Load a data set
The dataset is available [online](https://git.mpi-cbg.de/rhaase/clij2_example_data/blob/master/lund1051_resampled.tif).
It shows a *Tribolium castaneum* embryo, imaged by a custom light sheet microscope, at a wavelength of 488nm (Imaging credits: Daniela Vorkel, Myers lab, MPI CBG). 
The data set has been resampled to a voxel size of 1x1x1 microns. The embryo expresses nuclei-GFP. We will use the dataset to detect nuclei and to generate an estimated cell-segmentation.

All processing steps are performed in 3D space. For visualization purpose, we are using the maximum intensity projection in Z: 

```java
path = "C:/structure/teaching/clij2_example_data/";
open(path + "lund1051_resampled.tif");
input = getTitle();

print("Loading took " + (getTime() - time) + " msec");

Ext.CLIJ2_push(input);
run("Close All");

// visualize the dataset
show(input, "input");
```
<pre>
> Loading took 226 msec
</pre>
<a href="image_1588707820713.png"><img src="image_1588707820713.png" width="250" alt="CLIJ2_maximumZProjection_result209"/></a>

## Spot detection
After some noise removal/smoothing, we perform a local maximum detection:

```java
// gaussian blur
sigma = 2;
Ext.CLIJ2_gaussianBlur3D(input, blurred, sigma, sigma, sigma);

// detect maxima
radius = 2.0;
Ext.CLIJ2_detectMaximaBox(blurred, detected_maxima, radius);
show_spots(detected_maxima, "detected maxima");
```
<a href="image_1588707821064.png"><img src="image_1588707821064.png" width="250" alt="CLIJ2_maximumZProjection_result213"/></a>

## Spot curation
Now, we remove spots with values below a certain intensity and label the remaining spots.

```java
// threshold
threshold = 300.0;
Ext.CLIJ2_threshold(blurred, thresholded, threshold);

// mask
Ext.CLIJ2_mask(detected_maxima, thresholded, masked_spots);

// label spots
Ext.CLIJ2_labelSpots(masked_spots, labelled_spots);
show_spots(labelled_spots, "selected, labelled spots");
run("glasbey_on_dark");
```
<a href="image_1588707821371.png"><img src="image_1588707821371.png" width="250" alt="CLIJ2_maximumZProjection_result218"/></a>

Let's see how many spots are left:

```java
Ext.CLIJ2_getMaximumOfAllPixels(labelled_spots, number_of_spots);
print("Number of detected spots: " + number_of_spots);
```
<pre>
> Number of detected spots: 1501
</pre>

## Expanding labelled spots
Next, we spatially extend the labelled spots by applying a maximum filter.

```java
// label map closing
number_of_dilations = 10;
number_of_erosions = 4;
Ext.CLIJ2_copy(labelled_spots, flip);
for (i = 0; i < number_of_dilations; i++) {
	Ext.CLIJ2_onlyzeroOverwriteMaximumBox(flip, flop);
	Ext.CLIJ2_onlyzeroOverwriteMaximumDiamond(flop, flip);
	if (i % 2 == 0) {
		show(flip, "Extended spots after " + (i * 2) + " dilations");
		run("glasbey_on_dark");
	}
}
```
<a href="image_1588707821861.png"><img src="image_1588707821861.png" width="250" alt="CLIJ2_maximumZProjection_result221"/></a>
<a href="image_1588707821932.png"><img src="image_1588707821932.png" width="250" alt="CLIJ2_maximumZProjection_result222"/></a>
<a href="image_1588707821982.png"><img src="image_1588707821982.png" width="250" alt="CLIJ2_maximumZProjection_result223"/></a>
<a href="image_1588707822013.png"><img src="image_1588707822013.png" width="250" alt="CLIJ2_maximumZProjection_result224"/></a>
<a href="image_1588707822081.png"><img src="image_1588707822081.png" width="250" alt="CLIJ2_maximumZProjection_result225"/></a>

Afterwards, we erode all labels in the map and get a final result of cell segementation.

```java
Ext.CLIJ2_threshold(flip, flap, 1);
for (i = 0; i < number_of_erosions; i++) {
	Ext.CLIJ2_erodeBox(flap, flop);
	Ext.CLIJ2_erodeBox(flop, flap);
}
Ext.CLIJ2_mask(flip, flap, labels);
show(labels, "cell segmentation");
run("glasbey_on_dark");
```
<a href="image_1588707822223.png"><img src="image_1588707822223.png" width="250" alt="CLIJ2_maximumZProjection_result228"/></a>

We also save all labels to disc to use them as starting point in other notebooks, later.

```java
Ext.CLIJ2_pull(labels);
saveAs("TIF", path + "lund1051_labelled.tif");
close();

```

## Draw connectivity of the cells as a mesh
We then read out all current positions of detected nuclei as a pointlist to generate 
a distance matrix of all nuclei towards each other:

```java
Ext.CLIJ2_labelledSpotsToPointList(labelled_spots, pointlist);
Ext.CLIJ2_generateDistanceMatrix(pointlist, pointlist, distance_matrix);
show(distance_matrix, "distance matrix");
```
<a href="image_1588707823166.png"><img src="image_1588707823166.png" width="250" alt="CLIJ2_maximumZProjection_result231"/></a>

Starting from the label map of segmented cells, we generate a touch matrix:

```java
Ext.CLIJ2_generateTouchMatrix(labels, touch_matrix);

// touch matrix:
// set the first column to zero to ignore all spots touching the background (background label 0, first column)
Ext.CLIJ2_setColumn(touch_matrix, 0, 0);
show_spots(touch_matrix, "touch matrix");
```
<a href="image_1588707823913.png"><img src="image_1588707823913.png" width="250" alt="CLIJ2_maximumZProjection_result234"/></a>

Using element by element multiplication of a distance matrix and a touch matrix, we calculate the length of 
each edge. We use this result to draw a mesh with a color gradient of distance (between 0 and 50 micron):

```java
Ext.CLIJ2_multiplyImages(touch_matrix, distance_matrix, touch_matrix_with_distances);
Ext.CLIJ2_getDimensions(input, width, height, depth);
Ext.CLIJ2_create3D(mesh, width, height, depth, 32);
Ext.CLIJ2_touchMatrixToMesh(pointlist, touch_matrix_with_distances, mesh);
show(mesh, "distance mesh");
run("Green Fire Blue");
setMinAndMax(0, 50);
```
<a href="image_1588707824184.png"><img src="image_1588707824184.png" width="250" alt="CLIJ2_maximumZProjection_result237"/></a>

## Quantitative analysis of distance between neighbors
Next, we determine the averge distance between a node and of all its neighbors. The resulting 
vector has as many entries as nodes in the graph. We use this vector to color-code the 
label map of segmented cells. This means, label 1 gets replaced by the average distance to 
node 1, label 2 by the average distance to node 2, et cetera.

```java

Ext.CLIJ2_averageDistanceOfTouchingNeighbors(distance_matrix, touch_matrix, distances_vector);
Ext.CLIJ2_replaceIntensities(labels, distances_vector, distance_map);
show(distance_map, "distance map");
run("Fire");
setMinAndMax(0, 50);

```
<a href="image_1588707824421.png"><img src="image_1588707824421.png" width="250" alt="CLIJ2_maximumZProjection_result240"/></a>

Now, we measure the mean between neighbors and visualize it as above.

```java
Ext.CLIJ2_meanOfTouchingNeighbors(distances_vector, touch_matrix, local_mean_distances_vector);
Ext.CLIJ2_replaceIntensities(labels, local_mean_distances_vector, local_mean_pixel_count_map);
show(local_mean_pixel_count_map, "neighbor mean distance map");
run("Fire");
setMinAndMax(0, 50);
```
<a href="image_1588707824542.png"><img src="image_1588707824542.png" width="250" alt="CLIJ2_maximumZProjection_result243"/></a>

We can also use the minimum, median and maximum to measure distances:

```java
Ext.CLIJ2_minimumOfTouchingNeighbors(distances_vector, touch_matrix, local_minimum_distances_vector);
Ext.CLIJ2_replaceIntensities(labels, local_minimum_distances_vector, local_minimum_pixel_count_map);
show(local_minimum_pixel_count_map, "neighbor minimum distance map");
run("Fire");
setMinAndMax(0, 50);

Ext.CLIJ2_medianOfTouchingNeighbors(distances_vector, touch_matrix, local_median_distances_vector);
Ext.CLIJ2_replaceIntensities(labels, local_median_distances_vector, local_median_pixel_count_map);
show(local_median_pixel_count_map, "neighbor median distance map");
run("Fire");
setMinAndMax(0, 50);

Ext.CLIJ2_maximumOfTouchingNeighbors(distances_vector, touch_matrix, local_maximum_distances_vector);
Ext.CLIJ2_replaceIntensities(labels, local_maximum_distances_vector, local_maximum_pixel_count_map);
show(local_maximum_pixel_count_map, "neighbor maximum distance map");
run("Fire");
setMinAndMax(0, 50);

Ext.CLIJ2_standardDeviationOfTouchingNeighbors(distances_vector, touch_matrix, local_stddev_distances_vector);
Ext.CLIJ2_replaceIntensities(labels, local_stddev_distances_vector, local_stddev_pixel_count_map);
show(local_stddev_pixel_count_map, "neighbor standard deviation distance map");
run("Fire");
setMinAndMax(0, 50);

```
<a href="image_1588707824892.png"><img src="image_1588707824892.png" width="250" alt="CLIJ2_maximumZProjection_result246"/></a>
<a href="image_1588707824937.png"><img src="image_1588707824937.png" width="250" alt="CLIJ2_maximumZProjection_result249"/></a>
<a href="image_1588707824984.png"><img src="image_1588707824984.png" width="250" alt="CLIJ2_maximumZProjection_result252"/></a>
<a href="image_1588707825025.png"><img src="image_1588707825025.png" width="250" alt="CLIJ2_maximumZProjection_result255"/></a>

## Performance evaluation
Finally, a time measurement. Note that performing this workflow in ImageJ macro markdown is slower, 
because intermediate results are saved to disc.

```java
print("The whole workflow took " + (getTime() - time) + " msec");

```
<pre>
> The whole workflow took 4885 msec
</pre>

### Detailed time tracing for all operations

```java
Ext.CLIJ2_stopTimeTracing();
Ext.CLIJ2_getTimeTracing(time_traces);
print(time_traces);

```
<pre>
> > timeTracing
>  > MaximumZProjection
>  < MaximumZProjection           1.7032 ms
>  > Copy
>  < Copy                         8.6801 ms
>  > GaussianBlur3D
>  < GaussianBlur3D               51.8182 ms
>  > DetectMaximaBox
>  < DetectMaximaBox              43.5185 ms
>  > Maximum3DBox
>   > Copy
>   < Copy                        10.3 ms
>  < Maximum3DBox                 38.3688 ms
>  > MaximumZProjection
>  < MaximumZProjection           1.2814 ms
>  > Threshold
>   > GreaterOrEqualConstant
>   < GreaterOrEqualConstant      7.8369 ms
>  < Threshold                    7.8467 ms
>  > Mask
>  < Mask                         8.3492 ms
>  > LabelSpots
>   > SumXProjection
>   < SumXProjection              3.4635 ms
>   > SumYProjection
>   < SumYProjection              0.5872 ms
>  < LabelSpots                   26.8457 ms
>  > Maximum3DBox
>   > Copy
>   < Copy                        7.8119 ms
>  < Maximum3DBox                 33.3982 ms
>  > MaximumZProjection
>  < MaximumZProjection           1.5448 ms
>  > GetMaximumOfAllPixels
>   > MaximumOfAllPixels
>    > MaximumZProjection
>    < MaximumZProjection         1.4757 ms
>    > MaximumYProjection
>    < MaximumYProjection         0.3026 ms
>    > MaximumXProjection
>    < MaximumXProjection         0.2178 ms
>   < MaximumOfAllPixels          2.5449 ms
>  < GetMaximumOfAllPixels        2.55 ms
>  > Copy
>  < Copy                         7.5383 ms
>  > OnlyzeroOverwriteMaximumBox
>  < OnlyzeroOverwriteMaximumBox  15.7007 ms
>  > OnlyzeroOverwriteMaximumDiamond
>  < OnlyzeroOverwriteMaximumDiamond3.5853 ms
>  > MaximumZProjection
>  < MaximumZProjection           1.2408 ms
>  > OnlyzeroOverwriteMaximumBox
>  < OnlyzeroOverwriteMaximumBox  5.5987 ms
>  > OnlyzeroOverwriteMaximumDiamond
>  < OnlyzeroOverwriteMaximumDiamond3.4022 ms
>  > OnlyzeroOverwriteMaximumBox
>  < OnlyzeroOverwriteMaximumBox  5.6145 ms
>  > OnlyzeroOverwriteMaximumDiamond
>  < OnlyzeroOverwriteMaximumDiamond3.452 ms
>  > MaximumZProjection
>  < MaximumZProjection           1.365 ms
>  > OnlyzeroOverwriteMaximumBox
>  < OnlyzeroOverwriteMaximumBox  5.5722 ms
>  > OnlyzeroOverwriteMaximumDiamond
>  < OnlyzeroOverwriteMaximumDiamond3.3676 ms
>  > OnlyzeroOverwriteMaximumBox
>  < OnlyzeroOverwriteMaximumBox  5.5509 ms
>  > OnlyzeroOverwriteMaximumDiamond
>  < OnlyzeroOverwriteMaximumDiamond3.432 ms
>  > MaximumZProjection
>  < MaximumZProjection           1.1657 ms
>  > OnlyzeroOverwriteMaximumBox
>  < OnlyzeroOverwriteMaximumBox  5.5698 ms
>  > OnlyzeroOverwriteMaximumDiamond
>  < OnlyzeroOverwriteMaximumDiamond3.3146 ms
>  > OnlyzeroOverwriteMaximumBox
>  < OnlyzeroOverwriteMaximumBox  5.3113 ms
>  > OnlyzeroOverwriteMaximumDiamond
>  < OnlyzeroOverwriteMaximumDiamond3.3089 ms
>  > MaximumZProjection
>  < MaximumZProjection           1.2267 ms
>  > OnlyzeroOverwriteMaximumBox
>  < OnlyzeroOverwriteMaximumBox  5.3422 ms
>  > OnlyzeroOverwriteMaximumDiamond
>  < OnlyzeroOverwriteMaximumDiamond3.4418 ms
>  > OnlyzeroOverwriteMaximumBox
>  < OnlyzeroOverwriteMaximumBox  16.6047 ms
>  > OnlyzeroOverwriteMaximumDiamond
>  < OnlyzeroOverwriteMaximumDiamond3.2761 ms
>  > MaximumZProjection
>  < MaximumZProjection           1.232 ms
>  > OnlyzeroOverwriteMaximumBox
>  < OnlyzeroOverwriteMaximumBox  5.2219 ms
>  > OnlyzeroOverwriteMaximumDiamond
>  < OnlyzeroOverwriteMaximumDiamond3.3501 ms
>  > Threshold
>   > GreaterOrEqualConstant
>   < GreaterOrEqualConstant      8.0864 ms
>  < Threshold                    8.0961 ms
>  > ErodeBox
>  < ErodeBox                     4.4863 ms
>  > ErodeBox
>  < ErodeBox                     4.41 ms
>  > ErodeBox
>  < ErodeBox                     4.2245 ms
>  > ErodeBox
>  < ErodeBox                     4.1547 ms
>  > ErodeBox
>  < ErodeBox                     4.0565 ms
>  > ErodeBox
>  < ErodeBox                     3.9007 ms
>  > ErodeBox
>  < ErodeBox                     3.7941 ms
>  > ErodeBox
>  < ErodeBox                     3.6619 ms
>  > Mask
>  < Mask                         8.0845 ms
>  > MaximumZProjection
>  < MaximumZProjection           1.5882 ms
>  > LabelledSpotsToPointList
>  < LabelledSpotsToPointList     3.3621 ms
>  > GenerateDistanceMatrix
>  < GenerateDistanceMatrix       2.1924 ms
>  > MaximumZProjection
>  < MaximumZProjection           1.5115 ms
>  > GenerateTouchMatrix
>   > Set
>   < Set                         1.3066 ms
>  < GenerateTouchMatrix          4.2493 ms
>  > SetColumn
>  < SetColumn                    0.2206 ms
>  > Maximum3DBox
>  < Maximum3DBox                 3.0699 ms
>  > MaximumZProjection
>  < MaximumZProjection           1.0672 ms
>  > MultiplyImages
>  < MultiplyImages               1.1109 ms
>  > GetDimensions
>  < GetDimensions                0.003 ms
>  > TouchMatrixToMesh
>  < TouchMatrixToMesh            7.6061 ms
>  > MaximumZProjection
>  < MaximumZProjection           0.8022 ms
>  > AverageDistanceOfTouchingNeighbors
>  < AverageDistanceOfTouchingNeighbors1.5887 ms
>  > ReplaceIntensities
>  < ReplaceIntensities           10.2983 ms
>  > MaximumZProjection
>  < MaximumZProjection           0.8792 ms
>  > MeanOfTouchingNeighbors
>  < MeanOfTouchingNeighbors      1.1366 ms
>  > ReplaceIntensities
>  < ReplaceIntensities           10.3092 ms
>  > MaximumZProjection
>  < MaximumZProjection           0.9442 ms
>  > MinimumOfTouchingNeighbors
>  < MinimumOfTouchingNeighbors   1.4375 ms
>  > ReplaceIntensities
>  < ReplaceIntensities           10.0923 ms
>  > MaximumZProjection
>  < MaximumZProjection           0.9013 ms
>  > MedianOfTouchingNeighbors
>  < MedianOfTouchingNeighbors    1.2121 ms
>  > ReplaceIntensities
>  < ReplaceIntensities           10.3356 ms
>  > MaximumZProjection
>  < MaximumZProjection           0.9228 ms
>  > MaximumOfTouchingNeighbors
>  < MaximumOfTouchingNeighbors   1.215 ms
>  > ReplaceIntensities
>  < ReplaceIntensities           10.5516 ms
>  > MaximumZProjection
>  < MaximumZProjection           0.9592 ms
>  > ReplaceIntensities
>  < ReplaceIntensities           10.103 ms
>  > MaximumZProjection
>  < MaximumZProjection           0.9724 ms
> < timeTracing                   4888.6108 ms
>  
</pre>

Also, let's see how much of GPU memory got used by this workflow. At the end, cleaning up remains important.

```java
Ext.CLIJ2_reportMemory();

// finally, clean up
Ext.CLIJ2_clear();

```
<pre>
> GPU contains 27 images.
> - CLIJ2_gaussianBlur3D_result210[net.haesleinhuepf.clij.clearcl.ClearCLPeerPointer@265861ea] 204.8 Mb
> - CLIJ2_threshold_result226[net.haesleinhuepf.clij.clearcl.ClearCLPeerPointer@14e7fe1d] 204.8 Mb
> - CLIJ2_medianOfTouchingNeighbors_result247[net.haesleinhuepf.clij.clearcl.ClearCLPeerPointer@5ef609a9] 5.9 kb
> - CLIJ2_create3D_result236[net.haesleinhuepf.clij.clearcl.ClearCLPeerPointer@63c3f95e] 204.8 Mb
> - CLIJ2_averageDistanceOfTouchingNeighbors_result238[net.haesleinhuepf.clij.clearcl.ClearCLPeerPointer@67183fd] 5.9 kb
> - CLIJ2_multiplyImages_result235[net.haesleinhuepf.clij.clearcl.ClearCLPeerPointer@2dcd8238] 8.6 Mb
> - CLIJ2_replaceIntensities_result239[net.haesleinhuepf.clij.clearcl.ClearCLPeerPointer@43186d69] 204.8 Mb
> - CLIJ2_labelSpots_result216[net.haesleinhuepf.clij.clearcl.ClearCLPeerPointer@5d446226] 204.8 Mb
> - CLIJ2_mask_result227[net.haesleinhuepf.clij.clearcl.ClearCLPeerPointer@3fed755d] 204.8 Mb
> - CLIJ2_maximumOfTouchingNeighbors_result250[net.haesleinhuepf.clij.clearcl.ClearCLPeerPointer@35097736] 5.9 kb
> - CLIJ2_labelledSpotsToPointList_result229[net.haesleinhuepf.clij.clearcl.ClearCLPeerPointer@7414ffed] 17.6 kb
> - CLIJ2_meanOfTouchingNeighbors_result241[net.haesleinhuepf.clij.clearcl.ClearCLPeerPointer@7467a723] 5.9 kb
> - CLIJ2_replaceIntensities_result254[net.haesleinhuepf.clij.clearcl.ClearCLPeerPointer@2074736f] 204.8 Mb
> - CLIJ2_replaceIntensities_result251[net.haesleinhuepf.clij.clearcl.ClearCLPeerPointer@5e3a0090] 204.8 Mb
> - CLIJ2_detectMaximaBox_result211[net.haesleinhuepf.clij.clearcl.ClearCLPeerPointer@d02672d] 204.8 Mb
> - CLIJ2_threshold_result214[net.haesleinhuepf.clij.clearcl.ClearCLPeerPointer@44158711] 204.8 Mb
> - CLIJ2_generateTouchMatrix_result232[net.haesleinhuepf.clij.clearcl.ClearCLPeerPointer@47796bf7] 8.6 Mb
> - CLIJ2_onlyzeroOverwriteMaximumBox_result220[net.haesleinhuepf.clij.clearcl.ClearCLPeerPointer@4949cd08] 204.8 Mb
> - lund1051_resampled.tif[net.haesleinhuepf.clij.clearcl.ClearCLPeerPointer@576ce003] 204.8 Mb
> - CLIJ2_mask_result215[net.haesleinhuepf.clij.clearcl.ClearCLPeerPointer@3fa9d8f0] 204.8 Mb
> - CLIJ2_minimumOfTouchingNeighbors_result244[net.haesleinhuepf.clij.clearcl.ClearCLPeerPointer@33832a21] 5.9 kb
> - CLIJ2_replaceIntensities_result248[net.haesleinhuepf.clij.clearcl.ClearCLPeerPointer@342580d4] 204.8 Mb
> - CLIJ2_standardDeviationOfTouchingNeighbors_result253[net.haesleinhuepf.clij.clearcl.ClearCLPeerPointer@4f902ab] 5.9 kb
> - CLIJ2_copy_result219[net.haesleinhuepf.clij.clearcl.ClearCLPeerPointer@75e6349c] 204.8 Mb
> - CLIJ2_replaceIntensities_result245[net.haesleinhuepf.clij.clearcl.ClearCLPeerPointer@5f1eca23] 204.8 Mb
> - CLIJ2_replaceIntensities_result242[net.haesleinhuepf.clij.clearcl.ClearCLPeerPointer@47a5c234] 204.8 Mb
> - CLIJ2_generateDistanceMatrix_result230[net.haesleinhuepf.clij.clearcl.ClearCLPeerPointer@b856c31] 8.6 Mb
> = 3.4 Gb
>  
</pre>

Following methods are convenient for a proper visualization in a notebook:

```java
function show(input, text) {
	Ext.CLIJ2_maximumZProjection(input, max_projection);
	Ext.CLIJ2_pull(max_projection);
	setColor(100000);
	drawString(text, 20, 20);
	Ext.CLIJ2_release(max_projection);
}

function show_spots(input, text) {
	Ext.CLIJ2_maximum3DBox(input, extended, 1, 1, 0);
	Ext.CLIJ2_maximumZProjection(extended, max_projection);
	Ext.CLIJ2_pull(max_projection);
	setColor(100000);
	drawString(text, 20, 20);
	Ext.CLIJ2_release(extended);
	Ext.CLIJ2_release(max_projection);
}
```



```
```

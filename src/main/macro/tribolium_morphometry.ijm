/*
# Tribolium embryo morphometry
Author: Robert Haase
        April 2020

[Source](https://github.com/clij/clij2-docs/tree/master/src/main/macro/tribolium_morphometry.ijm)

This script is heavy GPU-accelerated processing. It is recommended to use a dedicated
graphics card with at least 8 GB of GDDR6 memory. It may otherwise be quite slow.

Let's initialize that graphics card and mesure the start time.
*/
run("CLIJ2 Macro Extensions", "cl_device=[GeForce RTX 2060 SUPER]");
Ext.CLIJ2_clear();

run("Close All");
time = getTime();
Ext.CLIJ2_startTimeTracing();
/*
## Load a data set
The dataset is available [online](https://git.mpi-cbg.de/rhaase/neubias_academy_clij2/blob/master/data/lund1051_resampled.tif).
It shows a Tribolium castaneum embryo imaged using a custom light sheet microscope using a wavelength of 488nm. 
The data set has been resampled to a voxel size of 1x1x1 microns. The embryo expresses nuclei-GFP. We will use it for detecting nuclei and generating an estimated cell-segmentation first.

All processing steps are performed in 3D, for visualisation purposes, we're looking at maximum intensity projections in Z: 
*/
open("C:/structure/teaching/neubias_academy_clij2/data/lund1051_resampled.tif");
input = getTitle();

print("Loading took " + (getTime() - time) + " msec");

Ext.CLIJ2_push(input);
run("Close All");

// visualise the dataset
show(input, "input");
/*
## Spot detection
After some noise removal / smoothing, we perform local maximum detection:
*/
// gaussian blur
sigma = 2;
Ext.CLIJ2_gaussianBlur3D(input, blurred, sigma, sigma, sigma);

// detect maxima
radius = 2.0;
Ext.CLIJ2_detectMaximaBox(blurred, detected_maxima, radius);
show_spots(detected_maxima, "detected maxima");
/*
## Spot curation
We now remove spots which are below a certain intensity and label the remaining spots.
*/
// threshold
threshold = 300.0;
Ext.CLIJ2_threshold(blurred, thresholded, threshold);

// mask
Ext.CLIJ2_mask(detected_maxima, thresholded, masked_spots);

// label spots
Ext.CLIJ2_labelSpots(masked_spots, labelled_spots);
show_spots(labelled_spots, "selected, labelled spots");
run("glasbey_on_dark");
/*
Let's see how many spots are there:
*/
Ext.CLIJ2_getMaximumOfAllPixels(labelled_spots, number_of_spots);
print("Number of detected spots: " + number_of_spots);
/*
## Expanding labelled spots
We next extend the numbered spots spatially by applying a maximum filter.
*/
// labelmap closing
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
/*
Afterwards, we erode the label map again and get the final result of the cell segementation
*/
Ext.CLIJ2_threshold(flip, flap, 1);
for (i = 0; i < number_of_erosions; i++) {
	Ext.CLIJ2_erodeBox(flap, flop);
	Ext.CLIJ2_erodeBox(flop, flap);
}
Ext.CLIJ2_mask(flip, flap, labels);
show(labels, "cell segmentation");
run("glasbey_on_dark");
/*
## Draw connectivity of the cells as mesh
We then read out the positions of the detected nuclei. 
Furthermore, using this pointlist, we can generate a distance matrix of all nuclei to each other:
*/
Ext.CLIJ2_labelledSpotsToPointList(labelled_spots, pointlist);
Ext.CLIJ2_generateDistanceMatrix(pointlist, pointlist, distance_matrix);
show(distance_matrix, "distance matrix");
/*
Starting from the label map of the cells, we can generate a touch matrix:
*/
Ext.CLIJ2_generateTouchMatrix(labels, touch_matrix);

// we set the first column in the touch matrix to zero because we want to ignore that spots touch the background (background label 0, first column)
Ext.CLIJ2_setColumn(touch_matrix, 0, 0);
show_spots(touch_matrix, "touch matrix");
/*
By element-wise multiplication of distance matrix and touch matrix, we know the length of 
each edge. We can use this information to draw a mesh with colour doing distance (between 0 and 50 micron):
*/
Ext.CLIJ2_multiplyImages(touch_matrix, distance_matrix, touch_matrix_with_distances);
Ext.CLIJ2_getDimensions(input, width, height, depth);
Ext.CLIJ2_create3D(mesh, width, height, depth, 32);
Ext.CLIJ2_touchMatrixToMesh(pointlist, touch_matrix_with_distances, mesh);
show(mesh, "distance mesh");
run("Green Fire Blue");
setMinAndMax(0, 50);
/*
## Quantitative analysis of distances between neighbors
We next determine the averge distance between a node and all of its neighbors. Th result is
a vector with as many entries as nodes in the graph. We use this vector to colour-code the 
label map of the cell segmentation. This means, we replace label 1 with the average distance to 
node 1 and label 2 with the average distance to node 2.
*/
Ext.CLIJ2_averageDistanceOfTouchingNeighbors(distance_matrix, touch_matrix, distances_vector);
Ext.CLIJ2_replaceIntensities(labels, distances_vector, distance_map);
show(distance_map, "distance map");
run("Fire");
setMinAndMax(0, 50);

/*
Now we measure the mean of the neighbors neighbord to their neigbors and visualise it as above.
*/
Ext.CLIJ2_meanOfTouchingNeighbors(distances_vector, touch_matrix, local_mean_distances_vector);
Ext.CLIJ2_replaceIntensities(labels, local_mean_distances_vector, local_mean_pixel_count_map);
show(local_mean_pixel_count_map, "neighbor mean distance map");
run("Fire");
setMinAndMax(0, 50);
/*
We can do the same with minimum, median and maximum distances:
*/
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
/*
## Performance evaluation
Finally a time measurement. Note that performing this workflow with ImageJ macro markdown is slower 
as intermediate results are save to disc.
*/
print("The whole workflow took " + (getTime() - time) + " msec");

/*
### Detailed time tracing for all operations
*/
Ext.CLIJ2_stopTimeTracing();
Ext.CLIJ2_getTimeTracing(time_traces);
print(time_traces);

/*
Also let's see how much memory this workflow used. Cleaning up by the end is also important.
*/
Ext.CLIJ2_reportMemory();

// clean up finally.
Ext.CLIJ2_clear();

/*
The following are convienence methods for proper visualisation in a noteboook:
*/
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

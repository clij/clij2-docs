

# CLIJ example macro: mean_of_touching_neighbors.ijm

This macro shows how to apply an get a
voronoi image of a binary image in the GPU.

Author: Robert Haase 
        March 2020

Get test data

```java

run("Blobs (25K)");
//open("C:/structure/data/blobs.gif");
input = getTitle();

```
<a href="image_1587208868976.png"><img src="image_1587208868976.png" width="250" alt="blobs.gif"/></a>

Init GPU
 and data

```java
run("CLIJ2 Macro Extensions", "cl_device=");
Ext.CLIJ2_clear();

// push data to GPU
Ext.CLIJ2_push(input);

// cleanup ImageJ
run("Close All");

```

Create a mask using the Otsu threshold algorithm

```java
Ext.<a href="https://clij.github.io/clij2-docs/reference_thresholdOtsu">CLIJ2_thresholdOtsu</a>(input, mask);
Ext.CLIJ2_pull(mask);

```
<a href="image_1587208872620.png"><img src="image_1587208872620.png" width="250" alt="CLIJ2_thresholdOtsu_result94"/></a>

Draw a Voronoi diagram and invert it

```java

Ext.<a href="https://clij.github.io/clij2-docs/reference_voronoiOctagon">CLIJ2_voronoiOctagon</a>(mask, voronoi_diagram);
// invert
Ext.<a href="https://clij.github.io/clij2-docs/reference_binaryNot">CLIJ2_binaryNot</a>(voronoi_diagram, inverted_voronoi);

Ext.CLIJ2_pullBinary(voronoi_diagram);
Ext.CLIJ2_pullBinary(inverted_voronoi);

```
<a href="image_1587208872779.png"><img src="image_1587208872779.png" width="250" alt="CLIJ2_voronoiOctagon_result95"/></a>
<a href="image_1587208872812.png"><img src="image_1587208872812.png" width="250" alt="CLIJ2_binaryNot_result96"/></a>

Generate a label map and extend it to make labels touch

```java
Ext.<a href="https://clij.github.io/clij2-docs/reference_connectedComponentsLabelingBox">CLIJ2_connectedComponentsLabelingBox</a>(inverted_voronoi, labelled);

// Extend labels so that they touch
Ext.<a href="https://clij.github.io/clij2-docs/reference_maximum2DBox">CLIJ2_maximum2DBox</a>(labelled, labelled_extended, 2, 2);

Ext.CLIJ2_pull(labelled);
Ext.CLIJ2_pull(labelled_extended);

```
<a href="image_1587208878087.png"><img src="image_1587208878087.png" width="250" alt="CLIJ2_connectedComponentsLabelingBox_result97"/></a>
<a href="image_1587208878105.png"><img src="image_1587208878105.png" width="250" alt="CLIJ2_maximum2DBox_result98"/></a>

Determine touch matrix

```java
Ext.<a href="https://clij.github.io/clij2-docs/reference_generateTouchMatrix">CLIJ2_generateTouchMatrix</a>(labelled_extended, touch_matrix);
Ext.CLIJ2_pullBinary(touch_matrix);

```
<a href="image_1587208880155.png"><img src="image_1587208880155.png" width="250" alt="CLIJ2_generateTouchMatrix_result99"/></a>

Do statistics on the label map
 and push the mean intensity column back to the GPU

```java
run("Clear Results");
Ext.<a href="https://clij.github.io/clij2-docs/reference_statisticsOfBackgroundAndLabelledPixels">CLIJ2_statisticsOfBackgroundAndLabelledPixels</a>(input, labelled_extended);

Ext.<a href="https://clij.github.io/clij2-docs/reference_resultsTableColumnToImage">CLIJ2_resultsTableColumnToImage</a>(intensity_values, "MEAN_INTENSITY");

```

Show Mean intensity per label as parametric image

```java
Ext.<a href="https://clij.github.io/clij2-docs/reference_replaceIntensities">CLIJ2_replaceIntensities</a>(labelled_extended, intensity_values, intensity_map);
Ext.CLIJ2_pull(intensity_map);
rename("label intensity");

```
<a href="image_1587208883406.png"><img src="image_1587208883406.png" width="250" alt="label intensity"/></a>

Determine mean (mean) intensity of local neighbors and draw another parametric image

```java

Ext.<a href="https://clij.github.io/clij2-docs/reference_meanOfTouchingNeighbors">CLIJ2_meanOfTouchingNeighbors</a>(intensity_values, touch_matrix, local_mean_intensity_values);
Ext.<a href="https://clij.github.io/clij2-docs/reference_replaceIntensities">CLIJ2_replaceIntensities</a>(labelled_extended, local_mean_intensity_values, local_mean_intensity_map);
Ext.CLIJ2_pull(local_mean_intensity_map);
rename("mean neighbor intensity");

```
<a href="image_1587208883463.png"><img src="image_1587208883463.png" width="250" alt="mean neighbor intensity"/></a>

Determine min and max (mean) intensity of local neighbors and draw two more parametric image

```java

// min
Ext.<a href="https://clij.github.io/clij2-docs/reference_minimumOfTouchingNeighbors">CLIJ2_minimumOfTouchingNeighbors</a>(intensity_values, touch_matrix, local_minimum_intensity_values);
Ext.<a href="https://clij.github.io/clij2-docs/reference_replaceIntensities">CLIJ2_replaceIntensities</a>(labelled_extended, local_minimum_intensity_values, local_minimum_intensity_map);
Ext.CLIJ2_pull(local_minimum_intensity_map);
rename("minimum neighbor intensity");

// max
Ext.<a href="https://clij.github.io/clij2-docs/reference_maximumOfTouchingNeighbors">CLIJ2_maximumOfTouchingNeighbors</a>(intensity_values, touch_matrix, local_maximum_intensity_values);
Ext.<a href="https://clij.github.io/clij2-docs/reference_replaceIntensities">CLIJ2_replaceIntensities</a>(labelled_extended, local_maximum_intensity_values, local_maximum_intensity_map);
Ext.CLIJ2_pull(local_maximum_intensity_map);
rename("maximum neighbor intensity");

```
<a href="image_1587208887023.png"><img src="image_1587208887023.png" width="250" alt="minimum neighbor intensity"/></a>
<a href="image_1587208887046.png"><img src="image_1587208887046.png" width="250" alt="maximum neighbor intensity"/></a>

Clean up by the end.

```java
Ext.CLIJ2_clear();
```



```
```

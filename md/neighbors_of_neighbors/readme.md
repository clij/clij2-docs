

# Neighbors of neighbors
Authors: Robert Haase, Daniela Vorkel, April 2020

[Source](https://github.com/clij/clij2-docs/tree/master/src/main/macro/neighbors_of_neighbors.ijm)

This macro shows how to apply a filter to values of a graph, considering neighbors of neighbors.

```java

// initialize GPU
run("CLIJ2 Macro Extensions", "cl_device=[GeForce RTX 2060 SUPER]");
Ext.CLIJ2_clear();

run("Close All");

```

## The dataset
We start with a list of random point coordinates, draw a spots image 
and partition the image space between these points. 

```java

// make a pointlist of random coordinates in the GPU
number_of_points = 200;
number_of_dimensions = 2;
bit_depth = 32;
Ext.CLIJ2_create2D(pointlist, number_of_points, number_of_dimensions, bit_depth);
random_min = 0;
random_max = 400;
seed = getTime();
Ext.CLIJ2_setRandom(pointlist, random_min, random_max, seed);

// draw labelled spots (1, 2, 3, ...) in 2D space
Ext.CLIJ2_pointlistToLabelledSpots(pointlist, spots_image);

// partition the space between points
Ext.CLIJ2_labelVoronoiOctagon(spots_image, label_map);
Ext.CLIJ2_pull(label_map);
run("glasbey_on_dark");
```
<a href="image_1588707389177.png"><img src="image_1588707389177.png" width="250" alt="CLIJ2_labelVoronoiOctagon_result103"/></a>

Before running operations on neighbors, we need to determine which labels of the 
label map are neighbors. Furthermore, we can draw the neighborhood relationships as a graph/mesh.

```java
// determine the touch matrix
Ext.CLIJ2_generateTouchMatrix(label_map, touch_matrix);

// draw mesh
Ext.CLIJ2_touchMatrixToMesh(pointlist, touch_matrix, mesh);
Ext.CLIJ2_pull(mesh);
```
<a href="image_1588707389261.png"><img src="image_1588707389261.png" width="250" alt="CLIJ2_touchMatrixToMesh_result105"/></a>

## Distribute values in space
We get the center of mass of all objects in our label map and generate vector 
measurement values which are a bit random, but also differ on the left and 
right side of the image.

```java
run("Clear Results");
Ext.CLIJ2_statisticsOfBackgroundAndLabelledPixels(label_map, label_map);
for (i = 0; i < nResults(); i++) {
	offset = 80;
	if (getResult("MASS_CENTER_X", i) > 200) {
		offset = 60;
	}
	setResult("Measurement", i, offset + random() * 20);
}
Ext.CLIJ2_pushResultsTableColumn(measurement, "Measurement");
run("Clear Results");

```


## Create a parametric image showing measurements in 2D space

```java
drawResult(label_map, measurement);

function drawResult(label_map, measurement) {
	// replace label in the label map with corresponding measurements
	Ext.CLIJ2_replaceIntensities(label_map, measurement, parametric_image);
	// show the parametric image
	Ext.CLIJ2_pull(parametric_image);
	setMinAndMax(50, 100);
	run("Fire");
}

```
<a href="image_1588707389508.png"><img src="image_1588707389508.png" width="250" alt="CLIJ2_replaceIntensities_result107"/></a>

## Smoothing between neighbors
We can apply smoothing operations, e.g. the mean filter:

```java
// determine the mean value of each neighboring nodes
Ext.CLIJ2_meanOfTouchingNeighbors(measurement, touch_matrix, mean_measurement);
drawResult(label_map, mean_measurement);
```
<a href="image_1588707389595.png"><img src="image_1588707389595.png" width="250" alt="CLIJ2_replaceIntensities_result109"/></a>

To prevent the orange stripe in the center, we use the median filter:

```java
// determine the median value of each neighboring nodes
Ext.CLIJ2_medianOfTouchingNeighbors(measurement, touch_matrix, median_measurement);
drawResult(label_map, median_measurement);
```
<a href="image_1588707389685.png"><img src="image_1588707389685.png" width="250" alt="CLIJ2_replaceIntensities_result111"/></a>

Based on that image, we can visualize the border:

```java
// determine the standard deviation between neighbors
Ext.CLIJ2_standardDeviationOfTouchingNeighbors(median_measurement, touch_matrix, stddev_measurement);
drawResult(label_map, stddev_measurement);
setMinAndMax(0, 10);

```
<a href="image_1588707389789.png"><img src="image_1588707389789.png" width="250" alt="CLIJ2_replaceIntensities_result113"/></a>

## Increasing the radius of operation
Furthermore, we can increase the radius of operation by using `neighborsOfNeighbors();`.
When applying the mean filter, one can see a wider orange stripe in the middle of the image.

```java

Ext.CLIJ2_neighborsOfNeighbors(touch_matrix, neighbor_matrix);
Ext.CLIJ2_meanOfTouchingNeighbors(measurement, neighbor_matrix, mean_measurement);
drawResult(label_map, mean_measurement);

```
<a href="image_1588707389916.png"><img src="image_1588707389916.png" width="250" alt="CLIJ2_replaceIntensities_result115"/></a>

At the end of the macro, clean up:

```java
Ext.CLIJ2_clear();

```



```
```

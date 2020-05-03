/* 
# Neighbors of neighbors
Author: Robert Haase, April 2020

[Source](https://github.com/clij/clij2-docs/tree/master/src/main/macro/neighbors_of_neighbors.ijm)

This macro shows how to apply a filters to values in a graph considering neighbors of neighbors
*/

// Initialize GPU
run("CLIJ2 Macro Extensions", "cl_device=[GeForce RTX 2060 SUPER]");
Ext.CLIJ2_clear();

run("Close All");

/*
## The dataset
We start with a list of random point coordinates, to draw a spots image 
and partion the image space between these points. 
*/

// make a pointlist with random coordinates on the GPU
number_of_points = 200;
number_of_dimensions = 2;
bit_depth = 32;
Ext.CLIJ2_create2D(pointlist, number_of_points, number_of_dimensions, bit_depth);
random_min = 0;
random_max = 400;
seed = getTime();
Ext.CLIJ2_setRandom(pointlist, random_min, random_max, seed);

// Draw the spots labelled (1, 2, 3, ...) in 2D space
Ext.CLIJ2_pointlistToLabelledSpots(pointlist, spots_image);

// Partition the space between the points.
Ext.CLIJ2_labelVoronoiOctagon(spots_image, label_map);
Ext.CLIJ2_pull(label_map);
run("glasbey_on_dark");
/*
Before we can run operations on neighbors, we need to determine which labels
in our label map are neighbors. Furthermore, we can draw the neighborhood relationships as graph/mesh.
*/
// determine the touch matrix
Ext.CLIJ2_generateTouchMatrix(label_map, touch_matrix);

// daw mesh
Ext.CLIJ2_touchMatrixToMesh(pointlist, touch_matrix, mesh);
Ext.CLIJ2_pull(mesh);
/*
## Distribute values in space
We get the center of mass of the objects in our label map and generate a vector of 
measurement values which are a bit random, but also different on the left and on 
the right side of the image.
*/
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

/*
## Make a parametric image showing measurements in 2D space
*/
drawResult(label_map, measurement);

function drawResult(label_map, measurement) {
	// replace the labels in the label map with the corresponding measurement
	Ext.CLIJ2_replaceIntensities(label_map, measurement, parametric_image);
	// show the parametric image
	Ext.CLIJ2_pull(parametric_image);
	setMinAndMax(50, 100);
	run("Fire");
}

/*
## Smoothing between neighbors
We can apply smoothing operations, e.g. a mean filter:
*/
// determine mean value of each nodes neighbors
Ext.CLIJ2_meanOfTouchingNeighbors(measurement, touch_matrix, mean_measurement);
drawResult(label_map, mean_measurement);
/*
To prevent the orange stripe in the center, we need to use the median filter:
*/
/// determine median value of each nodes neighbors
Ext.CLIJ2_medianOfTouchingNeighbors(measurement, touch_matrix, median_measurement);
drawResult(label_map, median_measurement);
/*
From that image, we can make the border visible:
*/
/// determine standard deviation between neighbors
Ext.CLIJ2_standardDeviationOfTouchingNeighbors(median_measurement, touch_matrix, stddev_measurement);
drawResult(label_map, stddev_measurement);
setMinAndMax(0, 10);

/*
## Increasing the radius of the operation
We can further increase the radius of the operation by using `neighborsOfNeighbors()`.
One can see that because there is a wider orange stripe in the middle when applying
the mean filter.
*/

Ext.CLIJ2_neighborsOfNeighbors(touch_matrix, neighbor_matrix);
Ext.CLIJ2_meanOfTouchingNeighbors(measurement, neighbor_matrix, mean_measurement);
drawResult(label_map, mean_measurement);

/*
Clean up by the end
*/
Ext.CLIJ2_clear();


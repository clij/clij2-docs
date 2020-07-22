

# Neighbors of neighbors
Authors: Robert Haase, Daniela Vorkel, April 2020

[Source](https://github.com/clij/clij2-docs/tree/master/src/main/macro/neighbors_of_neighbors.ijm)

This macro shows how to apply a filter to values of a graph, considering neighbors of neighbors.

<pre class="highlight">

// initialize GPU
run("CLIJ2 Macro Extensions", "cl_device=[GeForce RTX 2060 SUPER]");
Ext.<a href="https://clij.github.io/clij2-docs/reference_clear">CLIJ2_clear</a>();

run("Close All");

</pre>

## The dataset
We start with a list of random point coordinates, draw a spots image 
and partition the image space between these points. 

<pre class="highlight">

// make a pointlist of random coordinates in the GPU
number_of_points = 200;
number_of_dimensions = 2;
bit_depth = 32;
Ext.<a href="https://clij.github.io/clij2-docs/reference_create2D">CLIJ2_create2D</a>(pointlist, number_of_points, number_of_dimensions, bit_depth);
random_min = 0;
random_max = 400;
seed = getTime();
Ext.<a href="https://clij.github.io/clij2-docs/reference_setRandom">CLIJ2_setRandom</a>(pointlist, random_min, random_max, seed);

// draw labelled spots (1, 2, 3, ...) in 2D space
Ext.<a href="https://clij.github.io/clij2-docs/reference_pointlistToLabelledSpots">CLIJ2_pointlistToLabelledSpots</a>(pointlist, spots_image);

// partition the space between points
Ext.<a href="https://clij.github.io/clij2-docs/reference_labelVoronoiOctagon">CLIJ2_labelVoronoiOctagon</a>(spots_image, label_map);
Ext.<a href="https://clij.github.io/clij2-docs/reference_pull">CLIJ2_pull</a>(label_map);
run("glasbey_on_dark");
</pre>
<a href="image_1588707389177.png"><img src="image_1588707389177.png" width="224" alt="CLIJ2_labelVoronoiOctagon_result103"/></a>

Before running operations on neighbors, we need to determine which labels of the 
label map are neighbors. Furthermore, we can draw the neighborhood relationships as a graph/mesh.

<pre class="highlight">
// determine the touch matrix
Ext.<a href="https://clij.github.io/clij2-docs/reference_generateTouchMatrix">CLIJ2_generateTouchMatrix</a>(label_map, touch_matrix);

// draw mesh
Ext.<a href="https://clij.github.io/clij2-docs/reference_touchMatrixToMesh">CLIJ2_touchMatrixToMesh</a>(pointlist, touch_matrix, mesh);
Ext.<a href="https://clij.github.io/clij2-docs/reference_pull">CLIJ2_pull</a>(mesh);
</pre>
<a href="image_1588707389261.png"><img src="image_1588707389261.png" width="224" alt="CLIJ2_touchMatrixToMesh_result105"/></a>

## Distribute values in space
We get the center of mass of all objects in our label map and generate vector 
measurement values which are a bit random, but also differ on the left and 
right side of the image.

<pre class="highlight">
run("Clear Results");
Ext.<a href="https://clij.github.io/clij2-docs/reference_statisticsOfBackgroundAndLabelledPixels">CLIJ2_statisticsOfBackgroundAndLabelledPixels</a>(label_map, label_map);
for (i = 0; i < nResults(); i++) {
	offset = 80;
	if (getResult("MASS_CENTER_X", i) > 200) {
		offset = 60;
	}
	setResult("Measurement", i, offset + random() * 20);
}
Ext.<a href="https://clij.github.io/clij2-docs/reference_pushResultsTableColumn">CLIJ2_pushResultsTableColumn</a>(measurement, "Measurement");
run("Clear Results");

</pre>


## Create a parametric image showing measurements in 2D space

<pre class="highlight">
drawResult(label_map, measurement);

function drawResult(label_map, measurement) {
	// replace label in the label map with corresponding measurements
	Ext.<a href="https://clij.github.io/clij2-docs/reference_replaceIntensities">CLIJ2_replaceIntensities</a>(label_map, measurement, parametric_image);
	// show the parametric image
	Ext.<a href="https://clij.github.io/clij2-docs/reference_pull">CLIJ2_pull</a>(parametric_image);
	setMinAndMax(50, 100);
	run("Fire");
}

</pre>
<a href="image_1588707389508.png"><img src="image_1588707389508.png" width="224" alt="CLIJ2_replaceIntensities_result107"/></a>

## Smoothing between neighbors
We can apply smoothing operations, e.g. the mean filter:

<pre class="highlight">
// determine the mean value of each neighboring nodes
Ext.<a href="https://clij.github.io/clij2-docs/reference_meanOfTouchingNeighbors">CLIJ2_meanOfTouchingNeighbors</a>(measurement, touch_matrix, mean_measurement);
drawResult(label_map, mean_measurement);
</pre>
<a href="image_1588707389595.png"><img src="image_1588707389595.png" width="224" alt="CLIJ2_replaceIntensities_result109"/></a>

To prevent the orange stripe in the center, we use the median filter:

<pre class="highlight">
// determine the median value of each neighboring nodes
Ext.<a href="https://clij.github.io/clij2-docs/reference_medianOfTouchingNeighbors">CLIJ2_medianOfTouchingNeighbors</a>(measurement, touch_matrix, median_measurement);
drawResult(label_map, median_measurement);
</pre>
<a href="image_1588707389685.png"><img src="image_1588707389685.png" width="224" alt="CLIJ2_replaceIntensities_result111"/></a>

Based on that image, we can visualize the border:

<pre class="highlight">
// determine the standard deviation between neighbors
Ext.<a href="https://clij.github.io/clij2-docs/reference_standardDeviationOfTouchingNeighbors">CLIJ2_standardDeviationOfTouchingNeighbors</a>(median_measurement, touch_matrix, stddev_measurement);
drawResult(label_map, stddev_measurement);
setMinAndMax(0, 10);

</pre>
<a href="image_1588707389789.png"><img src="image_1588707389789.png" width="224" alt="CLIJ2_replaceIntensities_result113"/></a>

## Increasing the radius of operation
Furthermore, we can increase the radius of operation by using `neighborsOfNeighbors();`.
When applying the mean filter, one can see a wider orange stripe in the middle of the image.

<pre class="highlight">

Ext.<a href="https://clij.github.io/clij2-docs/reference_neighborsOfNeighbors">CLIJ2_neighborsOfNeighbors</a>(touch_matrix, neighbor_matrix);
Ext.<a href="https://clij.github.io/clij2-docs/reference_meanOfTouchingNeighbors">CLIJ2_meanOfTouchingNeighbors</a>(measurement, neighbor_matrix, mean_measurement);
drawResult(label_map, mean_measurement);

</pre>
<a href="image_1588707389916.png"><img src="image_1588707389916.png" width="224" alt="CLIJ2_replaceIntensities_result115"/></a>

At the end of the macro, clean up:

<pre class="highlight">
Ext.<a href="https://clij.github.io/clij2-docs/reference_clear">CLIJ2_clear</a>();

</pre>





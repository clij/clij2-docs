/* 
# Large matrices
Authors: Robert Haase, Daniela Vorkel, April 2020

[Source](https://github.com/clij/clij2-docs/tree/master/src/main/macro/large_matrices.ijm)

This macro shows how to process matrices larger than images that can be handled in ImageJ.
*/

// initialize GPU
run("CLIJ2 Macro Extensions", "cl_device=[GeForce RTX 2060 SUPER]");
Ext.CLIJ2_clear();

run("Close All");

/*
## The dataset
We start with a list of random point coordinates, draw a spots image 
and partition the image space between these points. 
*/

// make a pointlist of random coordinates in the GPU
number_of_points = 32000;
number_of_dimensions = 2;
bit_depth = 32;
Ext.CLIJ2_create2D(pointlist, number_of_points, number_of_dimensions, bit_depth);
random_min = 0;
random_max = 2000;
seed = getTime();
Ext.CLIJ2_setRandom(pointlist, random_min, random_max, seed);

// draw labelled spots (1, 2, 3, ...) in 2D space
Ext.CLIJ2_pointlistToLabelledSpots(pointlist, spots_image);

// partition the space between points
Ext.CLIJ2_labelVoronoiOctagon(spots_image, label_map);
Ext.CLIJ2_pull(label_map);
run("glasbey_on_dark");
/*
Before running operations on neighbors, we need to determine which labels of the 
label map are neighbors. Furthermore, we can draw the neighborhood relationships as a graph/mesh.
*/
// determine the touch matrix
Ext.CLIJ2_generateTouchMatrix(label_map, touch_matrix);

Ext.CLIJ2_getDimensions(touch_matrix, width, height, depth);

print("Size of the touch matrix: " + width + "/" + height);

// draw mesh
Ext.CLIJ2_touchMatrixToMesh(pointlist, touch_matrix, mesh);
Ext.CLIJ2_pull(mesh);

/*
At the end of the macro, clean up:
*/
Ext.CLIJ2_clear();


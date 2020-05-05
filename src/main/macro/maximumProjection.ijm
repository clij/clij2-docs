/* 
# Maximum projections
Authors: Robert Haase, Daniela Vorkel, April 2020

[Source](https://github.com/clij/clij2-docs/tree/master/src/main/macro/maximumProjection.ijm)


This macro shows how a maximum projection 
can be done in the GPU.


## Start
Let's clean up first and load some 3D example data:
*/
run ("Close All");

// get test data
run("T1 Head (2.4M, 16-bits)");

/*
We then initialize the GPU and send the image to its memory:
*/
run("CLIJ2 Macro Extensions", "cl_device=");
Ext.CLIJ2_clear();

// push images to GPU
input = getTitle();
Ext.CLIJ2_push(input);

// clean up ImageJ
close();
/*
## Maximum projections
We can use the classic maximum intensity projection in Z:
*/
Ext.CLIJ2_maximumZProjection(input, maximum_z_projected);
Ext.CLIJ2_pull(maximum_z_projected);
/*
But also, we can project maximum intensity in X and Y direction:
*/
Ext.CLIJ2_maximumYProjection(input, maximum_y_projected);
Ext.CLIJ2_pull(maximum_y_projected);

Ext.CLIJ2_maximumXProjection(input, maximum_x_projected);
Ext.CLIJ2_pull(maximum_x_projected);
/*
Furthermore, we can frame the range from which the projection is drawn:
*/
min_z = 90;
max_z = 100;
Ext.CLIJ2_maximumZProjectionBounded(input, bound_projection, min_z, max_z);
Ext.CLIJ2_pull(bound_projection);
/*
At the end of the macro, clean up:
*/
Ext.CLIJ2_clear();

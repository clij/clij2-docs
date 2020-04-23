/* 
# CLIJ example macro: blur.ijm

[Source](https://github.com/clij/clij2-docs/tree/master/src/main/macro/blur.ijm)

This macro shows how to blur an image in the GPU.

Author: Robert Haase
December 2018

Get test data
*/
run("Close All");

run("Blobs (25K)");
run("Invert LUT");
input = getTitle();

/*
Init GPU and push image data to GPU
*/
run("CLIJ2 Macro Extensions", "cl_device=");
Ext.CLIJ2_clear();

// push images to GPU
Ext.CLIJ2_push(input);

// cleanup ImageJ
run("Close All");

/*
Apply a Gaussian blur filter in GPU
*/
Ext.CLIJ2_gaussianBlur3D(input, blurred, 5, 5, 1);

// Get results back from GPU
Ext.CLIJ2_pull(blurred);

/*
Cleanup by the end
*/
Ext.CLIJ2_clear();

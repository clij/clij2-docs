/* 
# Gaussian blur
Author: Robert Haase
December 2018

[Source](https://github.com/clij/clij2-docs/tree/master/src/main/macro/blur.ijm)

This macro shows how to blur an image in the GPU.

First, we get test data:
*/
run("Close All");

run("Blobs (25K)");
run("Invert LUT");
input = getTitle();
/*
## Initialize GPU and push image data to GPU memory
*/
run("CLIJ2 Macro Extensions", "cl_device=");
Ext.CLIJ2_clear();

// push images to GPU
Ext.CLIJ2_push(input);

// cleanup ImageJ
run("Close All");
/*
## Apply a Gaussian blur filter in GPU
We apply a filter to an image by specifying the input image, the output image and other parameters:
*/
Ext.CLIJ2_gaussianBlur3D(input, blurred, 5, 5, 1);

// Get results back from GPU
Ext.CLIJ2_pull(blurred);
/*
Note: In contrast to CLIJ, the `blurred` variable, which contains the name of the output image, does not have to specified in advance. 
CLIJ2 automatically names images, in this case:
*/
print(blurred);
/*
If you don't like the names CLIJ2 gives to the images, just name them as you wish before calling the filter function.

## Cleanup by the end
Always clean up GPU memory by the end.
*/
Ext.CLIJ2_clear();

/*
# Multiply vectors and matrices
Authors: Robert Haase, Daniela Vorkel, April 2020

[Source](https://github.com/clij/clij2-docs/tree/master/src/main/macro/anisotropic_coordinates.ijm)

When dealing with three dimensional point coordinates, it is mandatory to 
take the voxel size into account, e.g. for measuring distances between points.
This example shows how to multiply a list of coordinates by a given voxel size.

## Initialize GPU
*/
run("CLIJ2 Macro Extensions", "cl_device=[gfx900]");
Ext.CLIJ2_clear();
/*
## Get test data 
We define the voxel size as an ImageJ macro array and push it to the GPU:
*/
Ext.CLIJ2_pushArray(voxel_size, newArray(0.2, 0.2, 0.5), 1, 3, 1);
Ext.CLIJ2_print(voxel_size);
/*
We also define a CLIJ-matrix of XYZ coordinates:
*/
number_of_coordinates = 4;
number_of_dimensions = 3;
Ext.CLIJ2_pushArray(pointlist, newArray(
	1, 3, 5, 11, // X
	0, 6, 1, 2,  // Y
	9, 11, 6, 2  // Z
	), number_of_coordinates, number_of_dimensions, 1);
Ext.CLIJ2_print(pointlist);
/*
## Multiplying images element by element
When multiplying images of different size, the 
[clamp-to-edge (CLK_ADDRESS_CLAMP_TO_EDGE)](https://www.khronos.org/registry/OpenCL/sdk/1.2/docs/man/xhtml/sampler_t.html) 
strategy is used: to access a pixel outside the image, the value of a closest pixel at the image boundary is used, instead.
This enables to multiply a vector by a matrix, like shown above:
*/
Ext.CLIJ2_multiplyImages(pointlist, voxel_size, transformed_pointlist);
Ext.CLIJ2_print(transformed_pointlist);
/*
Note: If the resulting image does not exist in first place, CLIJ has to guess
its size. Thus, it takes the input size of the first image to operate. So, 
if you permute the input parameters, the resulting matrix size will be 'wrong':
*/
Ext.CLIJ2_multiplyImages(voxel_size, pointlist, transformed_pointlist2);
Ext.CLIJ2_print(transformed_pointlist2);
/*
At the end of the macro, clean up:
*/
Ext.CLIJ2_clear();


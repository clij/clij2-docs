/*
# Multiply vectors and matrices
Author: Robert Haase, rhaase@mpi-cbg.de
April 2020

[Source](https://github.com/clij/clij2-docs/tree/master/src/main/macro/anisotropic_coordinates.ijm)

When dealing with point coordinates in three dimensions, one must take the
voxel size into account, e.g. when measuring distances between points.
This example shows how to multiply a list of coordinates with a given voxel size.

## Initialize GPU
*/
run("CLIJ2 Macro Extensions", "cl_device=[gfx900]");
Ext.CLIJ2_clear();
/*
## Get test data 
We define the voxel size as ImageJ macro array and push it to the GPU:
*/
Ext.CLIJ2_pushArray(voxel_size, newArray(0.2, 0.2, 0.5), 1, 3, 1);
Ext.CLIJ2_print(voxel_size);
/*
We also define a clij matrix of XYZ coordinates:
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
## Multiplying images element-wise
When multiplying images of different size, the 
[clamp-to-edge (CLK_ADDRESS_CLAMP_TO_EDGE)](https://www.khronos.org/registry/OpenCL/sdk/1.2/docs/man/xhtml/sampler_t.html) 
strategy is used: That means if a pixel outside the image is accessed, the value of the closest pixel at the boundary of the image is used instead.
This enables multiplying a vector with a matrix like the two above:
*/
Ext.CLIJ2_multiplyImages(pointlist, voxel_size, transformed_pointlist);
Ext.CLIJ2_print(transformed_pointlist);
/*
Note: Just be careful, if the result image doesn't exist in advance, CLIJ has to guess
its size. Thus, for this operation, it takes the input size of the input image.
If you permute the input parameters, the result matrix size is 'wrong':
*/
Ext.CLIJ2_multiplyImages(voxel_size, pointlist, transformed_pointlist2);
Ext.CLIJ2_print(transformed_pointlist2);
/*
Clean up by the end
*/
Ext.CLIJ2_clear();


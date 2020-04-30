/* 
# Binary operations
Author: Robert Haase
        April 2020

[Source](https://github.com/clij/clij2-docs/tree/master/src/main/macro/binary_processing.ijm)

This macro shows how to deal with binary images, e.g. 
thresholding, dilation, erosion, fill holes etc, in the GPU.

All demonstrated operations work in 2D and 3D. For demonstration 
purpose, we use a 2D example.

*/
// clean up first
run("Close All");

/* 
## Get test data
*/
run("Embryos (42K)");
run("8-bit");
makeRectangle(714, 14, 768, 394);
run("Crop", " ");
input = getTitle();

/* 
Initialize GPU and push image to GPU memory:
*/
run("CLIJ Macro Extensions", "cl_device=");
Ext.CLIJ2_clear();

// push data to GPU
Ext.CLIJ2_push(input);


/* 
## Thresholding
We create a binary mask image with white objects on black background, using the Otsu's 
tresholding method. As the image has a bright background, we need to invert it first.
*/
Ext.CLIJ2_subtractImageFromScalar(input, inverted, 255);

// apply threshold method
Ext.CLIJ2_thresholdOtsu(inverted, thresholded);

// show thresholding result
Ext.CLIJ2_pull(thresholded);

/*
## Binary opening using erosion and dilation
First, we apply binary opening: it consists of binary erosion, followed by binary dilation.
By hand, we apply each step twice to obtain two iterations.

*/
Ext.CLIJ2_erodeBox(thresholded, temp);
Ext.CLIJ2_erodeBox(temp, intermediate_result);

// show intermediate result
Ext.CLIJ2_pull(intermediate_result);
/*
*/
Ext.CLIJ2_dilateBox(intermediate_result, temp);
Ext.CLIJ2_dilateBox(temp, opening_result);

// show result
Ext.CLIJ2_pull(opening_result);

/*
## Binary closing using dilation and erosion
Given the number of dilation/erosion steps we want to apply, we can call a direct method, too. 

*/
number_of_iterations = 2;
Ext.CLIJ2_closingBox(thresholded, closing_result, number_of_iterations);
// show result
Ext.CLIJ2_pull(closing_result);

/*
## Fill holes
It is also possible to fill holes:
*/
Ext.CLIJ2_binaryFillHoles(thresholded, holes_filled);
// show result
Ext.CLIJ2_pullBinary(holes_filled);

/*
## Edge detection
We can retrieve an edge-detected image like this:
*/
Ext.CLIJ2_binaryEdgeDetection(thresholded, edges);
// show result
Ext.CLIJ2_pullBinary(edges);

/*
Finally, always clean up:
*/
Ext.CLIJ2_clear();


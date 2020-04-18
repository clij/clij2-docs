// CLIJ example macro: mean_squared_error.ijm
//
// This macro shows how to measure the mean 
// squared eroor of two images in the GPU.
//
// Author: Robert Haase
//         April 2020
// ---------------------------------------------


// Get test data
run("Blobs (25K)");
//open("C:/structure/data/blobs.gif");
input = getTitle();

// Init GPU
run("CLIJ2 Macro Extensions", "cl_device=");
Ext.CLIJ2_clear();

// push data to GPU
Ext.CLIJ2_push(input);

// cleanup ImageJ
run("Close All");

// blure the image
Ext.CLIJ2_gaussianBlur2D(input, blurred, 5, 5);

// measure MSE between original and blurred version
Ext.CLIJ2_getMeanSquaredError(input, blurred, mean_squared_error);

Ext.CLIJ2_clear();

print("MSE: " + mean_squared_error);


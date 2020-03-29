// CLIJ example macro: blur.ijm
//
// This macro shows how to blur an image in the GPU.
//
// Author: Robert Haase
// December 2018
// ---------------------------------------------
run("Close All");

// Get test data
run("T1 Head (2.4M, 16-bits)");
input = getTitle();
getDimensions(width, height, channels, slices, frames);

blurred = "Blurred";

// Init GPU
run("CLIJ Macro Extensions", "cl_device=");
Ext.CLIJ2_clear();

// push images to GPU
Ext.CLIJ2_push(input);

// cleanup ImageJ
run("Close All");

//sigma = 10;
radius = 10;

// Blur in GPU
time = getTime();
Ext.CLIJ2_topHatSphere(input, blurred, radius, radius, 0);
//Ext.CLIJ2_gaussianBlur3D(input, blurred, sigma, sigma, 1);
print("TopHatSphere took " + (getTime() - time));
Ext.CLIJ2_pull(blurred);

time = getTime();
Ext.CLIJxt_topHatSphere(input, blurred, radius, radius, 0, 64, 64, 129, radius, radius, 0);
//Ext.CLIJxt_gaussianBlur3D(input, blurred, sigma, sigma, 1, 128, 128, 129, sigma * 3, sigma * 3, 0);
print("TopHatSphere xt took " + (getTime() - time));


// Get results back from GPU
Ext.CLIJ2_pull(blurred);

// Cleanup by the end
Ext.CLIJ2_clear();

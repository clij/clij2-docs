// CLIJ example macro: statistics,ijm
//
// This macro shows how to derive simple 
// statistics from an image in the GPU.
//
// Author: Robert Haase
//         September 2019
// ---------------------------------------------


// Get test data
run("Blobs (25K)");
//open("C:/structure/data/blobs.gif");
getDimensions(width, height, channels, slices, frames);
input = getTitle()

// Init GPU
run("CLIJ2 Macro Extensions", "cl_device=");
Ext.CLIJ2_clear();

// push data to GPU
Ext.CLIJ2_push(input);

// get min/max of all pixels
Ext.CLIJ2_getMinimumOfAllPixels(input, minimumIntensity);
Ext.CLIJ2_getMaximumOfAllPixels(input, maximumIntensity);

print("Intensity range: " + minimumIntensity + " - " + maximumIntensity);

// create a binary image
binary = "binary";
Ext.CLIJ2_automaticThreshold(input, binary, "Otsu");

// area of binary image
Ext.CLIJ2_getSumOfAllPixels(binary, num_pixels);

// determine center of mass
Ext.CLIJ2_getCenterOfMass(binary, mx, my, _);

print("Area: " + num_pixels);
print("Center of mass: " + mx + "/" + my);

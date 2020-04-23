// CLIJ example macro: addImages3D.ijm
//
// This macro shows how add images of different bit-type
//
// Author: Robert Haase
// January 2019
// ---------------------------------------------

run("Close All");

// Get test data
//open("C:/structure/data/t1-head.tif");
run("T1 Head (2.4M, 16-bits)");
getDimensions(width, height, channels, slices, frames);
original = getTitle();

newImage("background", "16-bit ramp", width, height, slices);
background = getTitle();

// init GPU
run("CLIJ2 Macro Extensions", "cl_device=");
Ext.CLIJ2_clear();

// push images to GPU
Ext.CLIJ2_push(original);
Ext.CLIJ2_push(background);


// cleanup imagej
run("Close All");

// create output image with 32 bits
Ext.CLIJ2_create3D(originalWithBackground, width, height, slices, 32);

// add images
Ext.CLIJ2_addImagesWeighted(original, background, originalWithBackground, 1, 0.01);

// show result
Ext.CLIJ2_pull(originalWithBackground);

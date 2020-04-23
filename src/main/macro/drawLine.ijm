// CLIJ example macro: drawLine.ijm
//
// This macro shows how to draw a line into
// an image on the GPU
//
// Author: Robert Haase
//         September 2019
// ---------------------------------------------

run("Close All");

// init GPU
run("CLIJ2 Macro Extensions", "cl_device=");
Ext.CLIJ2_clear();

width = 100;
height = 100;

// create output image with different bit-type
Ext.CLIJ2_create2D(image, width, height, 8);
Ext.CLIJ2_set(image, 0);

// draw a line
Ext.CLIJ2_drawLine(image, 10, 10, 0, 50, 50, 0, 5, 1);

// show result
Ext.CLIJ2_pull(image);



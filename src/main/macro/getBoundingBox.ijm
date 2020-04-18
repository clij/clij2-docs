// CLIJ example macro: getBoundingBox.ijm
//
// This macro shows how to determine the bounding
// box of a thresholded object
//
// Author: Robert Haase
//         April 2020
// ---------------------------------------------

run("T1 Head (2.4M, 16-bits)");

// push data to GPU
run("CLIJ2 Macro Extensions", "cl_device=");
input = getTitle();
Ext.CLIJ_push(input);

// threshold
Ext.CLIJ2_thresholdHuang(input, thresholded);

// measure bounding box
Ext.CLIJ2_getBoundingBox(thresholded, boundingBoxX, boundingBoxY, boundingBoxZ, boundingBoxWidth, boundingBoxHeight, boundingBoxDepth);

// print results
print("X: " + boundingBoxX);
print("Y: " + boundingBoxY);
print("Z: " + boundingBoxZ);
print("W: " + boundingBoxWidth);
print("H: " + boundingBoxHeight);
print("D: " + boundingBoxDepth);




// CLIJ example macro: debugging_pixels,ijm
//
// This macro shows how to debug workflows by
// handling pixels as strings and arrays.
//
// Author: Robert Haase
//         May 2020
// ---------------------------------------------

// Init GPU
run("CLIJ2 Macro Extensions", "cl_device=");
Ext.CLIJ2_clear();

// push array as 2x3 image
array = newArray(1, 2, 3, 4, 5, 6);
Ext.CLIJ2_pushArray(input, array, 2, 3, 1);

// do something while recording processing duration
Ext.CLIJ2_startTimeTracing();
Ext.CLIJ2_multiplyImageAndScalar(input, result, 3);
Ext.CLIJ2_stopTimeTracing();

// print out how long operations took
Ext.CLIJ2_getTimeTracing(time_traces);
print(time_traces);

// print output image
Ext.CLIJ2_print(result);





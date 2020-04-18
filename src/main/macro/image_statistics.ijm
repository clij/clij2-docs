// CLIJ example macro: image_statistics.ijm
//
// This macro shows how to determine basic image
// statistics
//
// Author: Robert Haase
//         April 2020
// ---------------------------------------------


// Get test data
run("Blobs (25K)");
run("32-bit");

input = getTitle();

// Init GPU
run("CLIJ2 Macro Extensions", "cl_device=");
Ext.CLIJ2_clear();

// push data to GPU
Ext.CLIJ2_push(input);

// cleanup ImageJ
run("Close All");

Ext.CLIJ2_getSumOfAllPixels(input, sum_of_all_pixels);
Ext.CLIJ2_getMinimumOfAllPixels(input, min_of_all_pixels);
Ext.CLIJ2_getMaximumOfAllPixels(input, max_of_all_pixels);
Ext.CLIJ2_getMeanOfAllPixels(input, mean_of_all_pixels);

print("Sum: " + sum_of_all_pixels);
print("Min: " + min_of_all_pixels);
print("Max: " + max_of_all_pixels);
print("Mean: " + mean_of_all_pixels);


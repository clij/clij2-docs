/* 
# Image statistics
Author: Robert Haase
        April 2020

[Source](https://github.com/clij/clij2-docs/tree/master/src/main/macro/image_statistics.ijm)
        

This macro shows how to determine basic image statistics
*/

// Get test data
run("Blobs (25K)");
run("Invert LUT");
input = getTitle();

/*
## Initialize GPU and push image data to GPU memory
*/
run("CLIJ2 Macro Extensions", "cl_device=");
Ext.CLIJ2_clear();

// push data to GPU
Ext.CLIJ2_push(input);

// cleanup ImageJ
run("Close All");

/*
## Image properties
In order to read out image size properties, we can get all of them by one call. 
CLIJ does not take pixel/voxel dimensions into account. There are not physical units in CLIJ.
*/
Ext.CLIJ2_getDimensions(input, width, height, depth);

print("Image width: " + width);
print("Image height: " + height);
print("Image depth: " + depth);
/*
## Image statistics
We can derive basic image statistics parameter by parameter.
*/
Ext.CLIJ2_getSumOfAllPixels(input, sum_of_all_pixels);
Ext.CLIJ2_getMinimumOfAllPixels(input, min_of_all_pixels);
Ext.CLIJ2_getMaximumOfAllPixels(input, max_of_all_pixels);
Ext.CLIJ2_getMeanOfAllPixels(input, mean_of_all_pixels);

print("Sum: " + sum_of_all_pixels);
print("Min: " + min_of_all_pixels);
print("Max: " + max_of_all_pixels);
print("Mean: " + mean_of_all_pixels);

/*
## Detailed statistics
More detailed statistics can be derived by using this method. Note: We hand over an empyy
*/

Ext.CLIJ2_statisticsOfImage(input);

/*
Cleanup by the end.
*/
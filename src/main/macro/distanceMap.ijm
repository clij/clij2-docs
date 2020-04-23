// CLIJ example macro: distanceMap.ijm
//
// This macro shows how to draw a distance map
// from a binary image on the GPU
//
// Author: Robert Haase
//         September 2019
// ---------------------------------------------


// Get test data
run("Blobs (25K)");
//open("C:/structure/data/blobs.gif");
input = getTitle();

mask = "mask";
labelmap = "labelmap";

// Init GPU
run("CLIJ2 Macro Extensions", "cl_device=");
Ext.CLIJ2_clear();

// push data to GPU
Ext.CLIJ2_push(input);

// cleanup ImageJ
run("Close All");

// create a mask using a threshold algorithm
Ext.CLIJ2_thresholdOtsu(input, mask);

distance_map = "distance_map";
Ext.CLIJ2_distanceMap(mask, distance_map);


Ext.CLIJ2_pullBinary(mask);
Ext.CLIJ2_pull(distance_map);
//run("Fire");
run("Enhance Contrast", "saturated=0.35");

// CLIJ example macro: excludeLabelsWithinRange.ijm
//
// This macro shows how to remove objects in
// label maps which have a measurement in a range on the GPU
//
// Author: Robert Haase
//         May 2020
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

// create a mask using a fixed threshold
Ext.CLIJ2_automaticThreshold(input, mask, "Otsu");

// label objects
Ext.CLIJ2_connectedComponentsLabeling(mask, labelmap);
Ext.CLIJ2_pull(labelmap);

// measure properties such as shape
Ext.CLIJ2_statisticsOfBackgroundAndLabelledPixels(input, labelmap);

// push a measurement column back to GPU
Ext.CLIJ2_pushResultsTableColumn(shape, "MAX_MEAN_DISTANCE_TO_CENTROID_RATIO");

minimum = 1.7;
maximum = 1000000;

// make 2 new label maps according to shape
Ext.CLIJ2_excludeLabelsWithValuesWithinRange(shape, labelmap, round_objects, minimum, maximum);
Ext.CLIJ2_excludeLabelsWithValuesOutOfRange(shape, labelmap, elongated_objects, minimum, maximum);

// show result
Ext.CLIJ2_pull(labelmap);
run("glasbey on dark");

Ext.CLIJ2_pull(round_objects);
run("glasbey on dark");

Ext.CLIJ2_pull(elongated_objects);
run("glasbey on dark");



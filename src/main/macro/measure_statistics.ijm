/* 
# CLIJ example macro: measure_statistics.ijm

Author: Robert Haase 
        March 2020

[Source](https://github.com/clij/clij2-docs/tree/master/src/main/macro/measure_statistics.ijm)

This macro shows how to apply an automatic 
threshold method, connected components labeling 
and do basic measurments using CLIJ


Get test data
*/
run("Blobs (25K)");
//open("C:/structure/data/blobs.gif");
getDimensions(width, height, channels, slices, frames);
input = getTitle();


/* 
## Init GPU and push image data to the GPU 
*/
run("CLIJ2 Macro Extensions", "cl_device=");
Ext.CLIJ2_clear();

// push data to GPU
Ext.CLIJ2_push(input);

// cleanup ImageJ
run("Close All");

/* 
## Segment the image and create a label mask
*/
Ext.CLIJ2_thresholdOtsu(input, mask);

// connected components analysis
Ext.CLIJ2_connectedComponentsLabeling(mask, labelmap);

// show labelling
Ext.CLIJx_pull(labelmap);
run("glasbey on dark");


/* 
## Basic measurements 
*/
Ext.CLIJ2_statisticsOfLabelledPixels(input, labelmap);

/* 
Clean up by the end 
*/
Ext.CLIJ2_clear();

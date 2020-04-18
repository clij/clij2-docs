/* 
# CLIJ example macro: measure_overlap.ijm

This macro shows how to measure the overlap 
of two binary images in the GPU.

Author: Robert Haase
July 2019


Get test data
*/
run("Blobs (25K)");
//open("C:/structure/data/blobs.gif");
input = getTitle();

/* 
## Init GPU and push image data to GPU memory
*/
run("CLIJ2 Macro Extensions", "cl_device=");
Ext.CLIJ2_clear();

// push data to GPU
Ext.CLIJ2_push(input);

// cleanup ImageJ
run("Close All");


/*
## Create a mask using two different threshold methods
*/

Ext.CLIJ2_automaticThreshold(input, mask1, "Otsu");
Ext.CLIJ2_automaticThreshold(input, mask2, "MinError");

Ext.CLIJ2_pullBinary(mask1);
Ext.CLIJ2_pullBinary(mask2);

/*
## measure overlap between the two masks
*/
Ext.CLIJ2_getJaccardIndex(mask1, mask2, jaccardIndex);
Ext.CLIJ2_getSorensenDiceCoefficient(mask1, mask2, diceIndex);

// output result
IJ.log("Overlap (Jaccard index): " + (jaccardIndex*100) + "%");
IJ.log("Overlap (Sorensen / Dice coefficient): " + (diceIndex*100) + "%");


/*
cleanup GPU memory
*/
Ext.CLIJ2_clear();

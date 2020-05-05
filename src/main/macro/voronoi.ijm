/*
# Voronoi diagrams

This macro shows how to create a Voronoi 
diagram out of a binary image in the GPU.

Author: Robert Haase, March 2020


## Get test data
*/
run("Blobs (25K)");
//open("C:/structure/data/blobs.gif");
input = getTitle();


/* 
## Initialize GPU
and push image data to GPU memory:
*/
run("CLIJ2 Macro Extensions", "cl_device=");
Ext.CLIJ2_clear();

// push data to GPU
Ext.CLIJ2_push(input);

// cleanup ImageJ
run("Close All");

/*
## Create a binary mask and draw the Voronoi diagram 
First, apply Otsu's thresholding method to obtain a 
binary mask image, then draw the Voronoi diagram.

*/
Ext.CLIJ2_thresholdOtsu(input, mask);

// voronoi
Ext.CLIJ2_voronoiOctagon(mask, voronoi_diagram);

// show result
Ext.CLIJ2_pullBinary(mask);
Ext.CLIJ2_pullBinary(voronoi_diagram);

/*
Clean up at the end.
*/
Ext.CLIJ2_clear();


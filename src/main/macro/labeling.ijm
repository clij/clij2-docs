/*
# Labelling
Author: Robert Haase, Daniela Vorkel, April 2020

[Source](https://github.com/clij/clij2-docs/tree/master/src/main/macro/labeling.ijm)

This macro shows how to apply an automated 
threshold method and how to label connected components
on an image using GPU.



*/
//Get test data
run("Blobs (25K)");
input = getTitle();
/*
## Initialize GPU
First we initialize the GPU and push image data to the GPU memory:
*/
run("CLIJ2 Macro Extensions", "cl_device=");
Ext.CLIJ2_clear();

// push data to GPU
Ext.CLIJ2_push(input);

// cleanup ImageJ
run("Close All");
/*
## Create a mask using a fixed threshold
*/
Ext.CLIJ2_automaticThreshold(input, mask, "Otsu");
Ext.CLIJ2_pull(mask);
/*
## Label connected components
*/
Ext.CLIJ2_connectedComponentsLabelingBox(mask, labelmap);

Ext.CLIJ2_pull(labelmap);
run("glasbey on dark");

/*
## Remove labels touching image borders
*/
Ext.CLIJ2_excludeLabelsOnEdges(labelmap, labels_not_touching_image_borders);
Ext.CLIJ2_pull(labels_not_touching_image_borders);
run("glasbey on dark");

/*
Clean up by the end.
*/

Ext.CLIJ2_clear();




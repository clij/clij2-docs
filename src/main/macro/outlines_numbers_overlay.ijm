/*
# Adding label outlines and numbers as overlay 
Authors: Robert Haase and Bram van den Broek, March 2021

[Source](https://github.com/clij/clij2-docs/tree/master/src/main/macro/outlines_numbers_overlay.ijm)

This macro shows how to label outlines of segmented objects 
and how to draw label numbers to the image as overlay.

*/
// clean up first
close("*");
/* get test data */
run("Blobs (25K)");
input = getTitle();
/*
## Image segmentation using CLIJ
First we initialize the GPU and push image data to the GPU memory:
*/
run("CLIJ2 Macro Extensions", "cl_device=");
Ext.CLIJ2_clear();

// push data to GPU
Ext.CLIJ2_push(input);

// Blur the image and create a mask using a fixed threshold
Ext.CLIJ2_gaussianBlur2D(input, input_blurred, 1, 1);
// binarization
Ext.CLIJ2_thresholdOtsu(input_blurred, mask);
// label connected components
Ext.CLIJ2_connectedComponentsLabelingBox(mask, labelmap);
// Remove labels touching image borders
Ext.CLIJ2_excludeLabelsOnEdges(labelmap, labels_not_touching_image_borders);
Ext.CLIJ2_pull(labels_not_touching_image_borders);
run("glasbey on dark");
resetMinAndMax;
/*
## Create thick label outlines
We now take the label image an generate an image where only 
the label outlines are highlighted.
*/
// determine label borders
Ext.CLIJ2_detectLabelEdges(labels_not_touching_image_borders, labelmap_edges);
// make borders a bit wider
Ext.CLIJ2_dilateBox(labelmap_edges, labelmap_edges_dilated);
// bring label numbers (colours) to the label edge image 
Ext.CLIJ2_mask(labels_not_touching_image_borders, labelmap_edges_dilated, labelmap_outlines);
// visualize labeled image
Ext.CLIJ2_pull(labelmap_outlines);
run("glasbey_on_dark");
resetMinAndMax;

/* 
## Add the label outlines as overlay to the original image
*/
selectWindow(input);
run("Add Image...", "image=["+labelmap_outlines+"] x=0 y=0 opacity=100 zero");

/*
## Add label numbers as overlay to the input image
Count labels and measure the label statistics
*/
run("Clear Results");
// measure maximum intensity in the label image which equals 
// the number of labeled objects
Ext.CLIJ2_getMaximumOfAllPixels(labels_not_touching_image_borders, number_of_labels);
// determine mass center (and other statistics)
Ext.CLIJ2_statisticsOfLabelledPixels(labels_not_touching_image_borders, labels_not_touching_image_borders);

// configure font for drawing text
labelFontSize = 11;
labelFontColor = "yellow";
style = "bold italic";
setFont("SansSerif", labelFontSize, style);
setColor(labelFontColor);

// Draw the label numbers as overlays. The x,y coordinates 
// are retrieved from the label statistics in the results table.
selectWindow(input);
for (i = 0; i < number_of_labels; i++) {
	x = getResult("MASS_CENTER_X", i);
	y = getResult("MASS_CENTER_Y", i);
	Overlay.drawString(i+1, x - labelFontSize/2, y + labelFontSize/2);
}
// clean up results table
run("Clear Results");
Overlay.show();

/*
At the end of the macro, clean up:
*/
Ext.CLIJ2_clear();
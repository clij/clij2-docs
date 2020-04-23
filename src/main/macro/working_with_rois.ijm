/* 
# Working with ROIs 
Author: Robert Haase
        April 2020

[Source](https://github.com/clij/clij2-docs/tree/master/src/main/macro/working_with_rois.ijm)

This macro shows how to apply an automatic threshold method, use connected 
components labeling and visualize / measure bounding boxes of objects .

*/
// clean up first
run("Close All");
run("Clear Results");
if (roiManager("count") > 0) {
	roiManager("deselect");
	roiManager("delete");
}

/*
Get test data
*/
run("Blobs (25K)");
run("Invert LUT");
input = getTitle();

/* 
## Initialize GPU and push push image data to GPU memory
*/
run("CLIJ2 Macro Extensions", "cl_device=");
Ext.CLIJ2_clear();

// push data to GPU
Ext.CLIJ2_push(input);

/*
## Image segmentation + labelling
We now apply a threshold method and connected components analysis to separate objects.
*/
Ext.CLIJ2_thresholdOtsu(input, mask);
Ext.CLIJ2_connectedComponentsLabelingBox(mask, labelmap);

/*
## Visualize the labelled objects
*/
// show the image
Ext.CLIJ2_pull(input);
// show the labels as ROIs on top of the image
Ext.CLIJ2_pullLabelsToROIManager(labelmap);
roiManager("show all");
show();
/*
## We now go through the labelled objects in the label map and measure their bounding box area:
*/

// how many objects are in the labelmap?
Ext.CLIJ2_getMaximumOfAllPixels(labelmap, number_of_objects);

for (i = 0; i < number_of_objects; i++) {
	// cut label map into individual masks
	Ext.CLIJ2_labelToMask(labelmap, binaryImage, i + 1); // 0 is background, 1 is the first label
	// put bounding boxes in the ROI manager
	Ext.CLIJ2_getBoundingBox(binaryImage, x, y, z, w, h, d);

	// draw the bounding box
	makeRectangle(x, y, w, h);
	Roi.setStrokeColor("cyan");
	roiManager("add");

	// draw the number of the bounding box
	makeText("" + (i + 1), x, y + h);
	Roi.setStrokeColor("cyan");
	roiManager("add");

	// save measurements to a table
	setResult("ROI_number", i, i + 1);
	setResult("Bounding_Box_Area", i, w * h);
}

/*
## Bounding box visualisation
*/
// show the image
Ext.CLIJ2_pull(input);

// show all labels as ROIs on top of the image
roiManager("show all");
show();

/*
Clean up by the end
*/
Ext.CLIJ2_clear();

/*
This is just a convenience method for showing images properly in the notebook 
*/

function show() {
	run("Flatten");
}
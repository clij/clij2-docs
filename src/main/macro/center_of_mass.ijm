// CLIJ example macro: boundingBoxes.ijm
//
// This macro shows how to apply an automatic 
// threshold method, use connected components labeling
// and measure bounding boxes of object 
//
// Author: Robert Haase
// August 2019
// ---------------------------------------------

run("Close All");
if (roiManager("count") > 0) {
	roiManager("deselect");
	roiManager("delete");
}


// Get test data
run("Blobs (25K)");
//open("C:/structure/data/blobs.gif");
getDimensions(width, height, channels, slices, frames);
input = getTitle();

mask = "mask";
labelmap = "labelmap";
binaryImage = "binaryImage";

// Init GPU
run("CLIJ Macro Extensions", "cl_device=");
Ext.CLIJ2_clear();

// push data to GPU
Ext.CLIJ2_push(input);

// create a mask using a fixed threshold
Ext.CLIJ2_automaticThreshold(input, mask, "Otsu");

Ext.CLIJ2_connectedComponentsLabeling(mask, labelmap);

Ext.CLIJ2_getMaximumOfAllPixels(labelmap, number_of_objects);

for (i = 0; i < number_of_objects; i++) {
	// cut label map into individual masks
	Ext.CLIJ2_labelToMask(labelmap, binaryImage, i + 1); // 0 is background, 1 is the first label
	// put bounding boxes in the ROI manager
	Ext.CLIJ2_getBoundingBox(binaryImage, x, y, z, w, h, d);

	makeRectangle(x, y, w, h);
	roiManager("add");
}

// show all
roiManager("show all with labels");




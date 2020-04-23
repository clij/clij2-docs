// CLIJ example macro: create_object_outlines.ijm
//
// This macro shows how to deal with binary images, e.g. thresholding, dilation, erosion, in the GPU.
//
// This macro was generate using the ImageJ macro recorder. 
//
// Author: Robert Haase
// December 2018
// ---------------------------------------------

run("Close All");

run("Blobs (25K)");

run("CLIJ2 Macro Extensions", "cl_device=[GeForce RTX 2060 SUPER]");

// mean
image1 = getTitle();
Ext.CLIJ_push(image1);
image2 = "mean-379861202";
radius_x = 2.0;
radius_y = 2.0;
Ext.CLIJ2_mean2DBox(image1, image2, radius_x, radius_y);
Ext.CLIJ_pull(image2);

// threshold otsu
image3 = "threshold_otsu1213781482";
Ext.CLIJ2_thresholdOtsu(image2, image3);
Ext.CLIJ_pull(image3);

// erode
image4 = "erode1098774671";
Ext.CLIJ2_erodeBox(image3, image4);
Ext.CLIJ_pull(image4);

// binary x or
image5 = "binary_x_or-1653784026";
Ext.CLIJ2_binaryXOr(image3, image4, image5);
Ext.CLIJ_pull(image5);

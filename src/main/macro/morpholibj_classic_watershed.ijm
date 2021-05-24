/*
# Classic Watershed (MorphoLibJ extension)
Author: Robert Haase, May 2021

[Source](https://github.com/clij/clij2-docs/tree/master/src/main/macro/morpholibj_classic_watershed.ijm)

This tutorial demonstrates the use of the Classic Waterhsed plugin as CLIJx extension.

See also
* [Classic watershed in the ImageJ Wiki](https://imagej.net/Classic_Watershed)

To make this script run, please activate the update sites clij, clij2 and 
install the [clijx-assistant-extensions](https://clij.github.io/assistant/installation#extensions) 
in your Fiji.

We cleanup first and load the blobs image as example.
*/
close("*");

// Init GPU
run("CLIJ2 Macro Extensions", "cl_device=");
Ext.CLIJ2_clear();

// Load image from disc 
run("Blobs (25K)");
blobs_image = getTitle();
Ext.CLIJ2_pushCurrentZStack(blobs_image);
/*
The algorithm expects a grey value image representing hills (high values, white) and valleys (low values, dark).
Thus, we need to invert the input image. 
*/
// invert
Ext.CLIJ2_subtractImageFromScalar(blobs_image, inverted_image, 255);

Ext.CLIJ2_pull(inverted_image);
/*
Furthermore, the authors suggest to use a blurred version of the image and optionally a binary image as mask. 
The clijx-assistant-extension for that algorithm has the binary image as mandatory input. 
Thus, we need to provide it.
*/
sigma = 4;
Ext.CLIJ2_gaussianBlur2D(inverted_image, blurred_image, sigma, sigma);
Ext.CLIJ2_pull(blurred_image);

// threshold
Ext.CLIJ2_thresholdOtsu(blobs_image, binary_image);
Ext.CLIJ2_pullBinary(binary_image);
/*
The result will be a label image.
*/
// Classic Watershed
h_min = 1.0;
h_max = 3.4028235E38;
Ext.CLIJx_morphoLibJClassicWatershed(blurred_image, binary_image, watershed_label_image, h_min, h_max);

Ext.CLIJ2_pull(watershed_label_image);
run("glasbey_on_dark");
/*
Clean up by the end
*/
Ext.CLIJ2_clear();

/*
# Custom clij macro functions
[Source](https://github.com/clij/clij2-docs/tree/master/src/main/macro/custom_clij_macro_functions.ijm)

This notebook demonstrates how you can write your own clij macro functions. 
Goal is to formulate a custom function `my_image_segmentation(image, sigma, radius)` 
function for image segmentation that can be reused.

We start by cleaning up, initializing the GPU, loading an example image and pushing it to the GPU:
*/
// clean up first
run("Close All");
run("Clear Results");

// initialize GPU
run("CLIJ2 Macro Extensions", "cl_device=");
Ext.CLIJ2_clear();

// open an example image
open("http://imagej.nih.gov/ij/images/blobs.gif");

// push it to GPU memory
input = getTitle();
Ext.CLIJ2_push(input);
/*
Assume, we have a workflow with binarizes and the labels the image nicely.
*/
sigma = 2;
Ext.CLIJ2_gaussianBlur2D(input, blurred, sigma, sigma);
radius = 10;
Ext.CLIJ2_topHatBox(blurred, background_subtracted, radius, radius, radius);
Ext.CLIJ2_thresholdOtsu(background_subtracted, binary);
Ext.CLIJ2_connectedComponentsLabelingBox(binary, labels);
// show result
Ext.CLIJ2_pull(labels);
run("glasbey_on_dark");
/*
## Define custom functions
We can now formulate a function, that takes an image, sigma and radius as parameters 
and performs this operation. 
Note the added release commands we are using to free memory of intermediate results. 
When working with many custom functions it is recommended to work like this to minimize 
memory consumption.
*/
function my_image_segmentation(image, sigma, radius) {
	// This functions denoises an image, subtracts its background, thresholds it 
	// and labels objects in the given image. The sigma parameter controls the 
	// Gaussian blur function used for denoising. The radius parameter controls 
	// the background subtraction.
	Ext.CLIJ2_gaussianBlur2D(image, blurred, sigma, sigma);
	Ext.CLIJ2_topHatBox(blurred, background_subtracted, radius, radius, radius);
	Ext.CLIJ2_release(blurred);
	Ext.CLIJ2_thresholdOtsu(background_subtracted, binary);
	Ext.CLIJ2_release(background_subtracted);
	Ext.CLIJ2_connectedComponentsLabelingBox(binary, labels);
	Ext.CLIJ2_release(binary);
	return labels;
}
/*
## Call custom functions
We can then call the custom function, e.g. with different sigma and radius parameters.
*/
segmented = my_image_segmentation(input, 2, 25);
// show result
Ext.CLIJ2_pull(segmented);
run("glasbey_on_dark");

segmented = my_image_segmentation(input, 5, 25);
// show result
Ext.CLIJ2_pull(segmented);
run("glasbey_on_dark");
/*
Furthermore, we can also use the same function to process other images. 
That keeps the image processing code short and easier to overview.
Furthermore, reusing functions is efficient and makes macro writing more sustainable.
Consider publishing useful functions, e.g. as 
[pull request to the clij2-docs repository](https://github.com/clij/clij2-docs/pulls).
*/
// clean up first
Ext.CLIJ2_clear();

// load a new image
open("http://imagej.nih.gov/ij/images/Cell_Colony.jpg");
run("Invert");
/*
*/
// push it to GPU memory
input = getTitle();
Ext.CLIJ2_push(input);

// process the image
result = my_image_segmentation(input, 1, 10);
// show result
Ext.CLIJ2_pull(result);
run("glasbey_on_dark");
/*
Clean up by the end
*/
Ext.CLIJ2_clear();
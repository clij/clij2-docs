/*
# Basics of image processing with CLIJ

This notebooks introduces how images can be processed with CLIJ. 

Let's start by cleaaning up and opening an example dataset. For this, we use ImageJ-functions:
*/
// clean up first
run("Close All");
run("Clear Results");

// open the T1 heade example, a 3D MRI image
open("http://imagej.nih.gov/ij/images/t1-head.zip");
/*
We now initialize the GPU and push the image as explained in the [basics of clij tutorial](https://clij.github.io/clij2-docs/md/basics/).
*/
run("CLIJ2 Macro Extensions", "cl_device=");
Ext.CLIJ2_clear();

// push image to GPU memory
stack = getTitle();
Ext.CLIJ2_push(stack);
/*
## Images and image stacks
The image we loaded and pushed to the GPU is a 3D image, which can also be called an image stack. CLIJ supports 2D and 3D images only. Time lapses and multi-channel data need to be processed timepoint-by-timepoint and channel by channel.

We can find out how large our current image is by measuring its dimensions and writing them to the results table:
*/
Ext.CLIJ2_getDimensions(stack, width, height, number_of_slices);
setResult("Width", 0, width);
setResult("Height", 0, height);
setResult("Number of slices", 0, number_of_slices);
/*
If you want to work with a single slice of such an image, you can retrieve it by copying it out of the stack.
You need to provide a slice number, which counts 0-based. Thus, the first slice has index 0:
*/
// copy a given slice
slice_index = 50;
Ext.CLIJ2_copySlice(stack, slice, slice_index);
// show the slice
Ext.CLIJ2_pull(slice);
/*
Alternatively, you can use projections to reduce a 3D image to a 2D image. This might makes sense for better visualization depending on the data:
*/
// create projections
Ext.CLIJ2_maximumZProjection(stack, max_z_projection);
Ext.CLIJ2_meanXProjection(stack, mean_x_projection);
// show projections
Ext.CLIJ2_pull(max_z_projection);
Ext.CLIJ2_pull(mean_x_projection);
/*
## Processing images in 2D and 3D
When processing images, you call a function and hand over at least two images: the input image and an output image.
If the output image doesn't exist yet, it will be created. If the output image exists already, it will be overwritten. 
*/
// apply a Gaussian blur filter
sigma = 5;
Ext.CLIJ2_gaussianBlur2D(slice, blurred, sigma, sigma);
// show result
Ext.CLIJ2_pull(blurred);
/*
Note: If the output image exists already but has the wrong size, its size will not be changed. 
We can demonstrate that by creating an image in advance. Note: The size of the image may be misleading when viewing this example in the browser.
*/
width = 150;
height = 150;
bit_depth = 32;
Ext.CLIJ2_create2D(to_small_image, width, height, bit_depth);
Ext.CLIJ2_gaussianBlur2D(slice, to_small_image, sigma, sigma);
// show result
Ext.CLIJ2_pull(to_small_image);
/*
Furthermore, when working with some operations, e.g. the Gaussian blur, two versions exist: a 2D filter and a 3D filter.
2D filters cannot be applied to 3D images and vise versa. If you want to apply a filter slice by slice to a 3D image, 
set the radius or sigma parameter in z to 0:
*/
sigma_z = 0;
Ext.CLIJ2_gaussianBlur3D(stack, blurred_stack, sigma, sigma, sigma_z);
/*
Furthermore, there are operations which can be applied in 2D and 3D. Those don't have either in their name. 
For example thresholding operations are dimensionality-agnostic:
*/
Ext.CLIJ2_thresholdOtsu(slice, binary_slice);
Ext.CLIJ2_thresholdOtsu(stack, binary_stack);
// show binary masks
Ext.CLIJ2_pull(binary_slice);
Ext.CLIJ2_pull(binary_stack);

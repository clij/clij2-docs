/*
# Images, binary images, label images and parametric images
This notebooks introduces different image types and how they can be processed with CLIJ.

Let's start by cleaaning up and opening an example image. For this, we use ImageJ-functions:
*/
// clean up first
run("Close All");
run("Clear Results");

// open the T1 heade example, a 3D MRI image
open("http://imagej.nih.gov/ij/images/blobs.gif");
run("Invert LUT");
/*
We now initialize the GPU and push the image as explained in the [basics of clij tutorial](https://clij.github.io/clij2-docs/md/basics/).
*/
run("CLIJ2 Macro Extensions", "cl_device=");
Ext.CLIJ2_clear();

// push image to GPU memory
blobs = getTitle();
Ext.CLIJ2_push(blobs);
/*
# Filtering images
Images can be filtered. [Filters](https://en.wikipedia.org/wiki/Filter_(signal_processing)) typically result in another image.
We demonstrate that using a local median filter. As pixel neighborhood, we use "Box" which is also known as the [8-connected, or Moore neighborhood](https://en.wikipedia.org/wiki/Moore_neighborhood). Alternatively, the diamond-neighborhood coul be used, which is also known as the [4-connected, or von Neumann neighborhood](https://en.wikipedia.org/wiki/Von_Neumann_neighborhood).
*/
radius = 3;
Ext.CLIJ2_median2DBox(blobs, denoised_blobs, radius, radius);
// show result
Ext.CLIJ2_pull(denoised_blobs);
/*
# Binarizing images
Operations which lead from any kind of image to binary images, binarze the given data. A binary images, or mask, has typically two values: 0 and 1.
A common description of these two numbers is that 1 represents objects and 0 represents background. 
In CLIJ you can binarze images using mathematical operation such as comparison of pixels with a constant:
*/
// compare if pixels are qual than a given value:
value = 72;
Ext.CLIJ2_equalConstant(blobs, binary, value);
Ext.CLIJ2_pull(binary);
/*
Note that we overwrite the results of the former operation when writing to the same "binary" image again using a different operation:
*/
// compare if pixels are larger than a given value:
value = 100;
Ext.CLIJ2_greaterConstant(blobs, binary, value);
Ext.CLIJ2_pull(binary);
/*
In order eliminate the need for specifying such a threshold value manually, automatic thresholding algorithms have been developed, for example [Otsu's method](https://en.wikipedia.org/wiki/Otsu%27s_method):
*/
Ext.CLIJ2_thresholdOtsu(blobs, binary);
Ext.CLIJ2_pull(binary);
/*
## Labeling images
Operations which result in images where objects are numbered, are labeling the image data. 
One common operation for this is called [connected component labeling](https://en.wikipedia.org/wiki/Connected-component_labeling).
It takes a binary image as input:
*/
Ext.CLIJ2_connectedComponentsLabelingBox(binary, labeled_blobs);
Ext.CLIJ2_pull(labeled_blobs);
// use a special [lookup-table](https://en.wikipedia.org/wiki/Lookup_table#Lookup_tables_in_image_processing) to visualize it:
run("glasbey_on_dark");
/*
There are more operations for labeling images, for example using a [Voronoi diagram](https://en.wikipedia.org/wiki/Voronoi_diagram) for separting the space between the white binary objects:
*/
Ext.CLIJ2_voronoiLabeling(binary, labeled_blobs);
Ext.CLIJ2_pull(labeled_blobs);
run("glasbey_on_dark");
/*
A shortcut for skipping filtering, thresholding, including a [seeded watershed](https://en.wikipedia.org/wiki/Watershed_(image_processing)) and labeling allows to go from an image to a label image directly. 
The method called Voronoi-Otsu-Labeling is explained in more detail [here](https://github.com/clEsperanto/pyclesperanto_prototype/blob/master/demo/segmentation/voronoi_otsu_labeling.ipynb).
*/
sigma_spot_finder = 4;
sigma_outline_finder = 2;
Ext.CLIJx_voronoiOtsuLabeling(blobs, labeled_blobs, sigma_spot_finder, sigma_outline_finder);
Ext.CLIJ2_pull(labeled_blobs);
run("glasbey_on_dark");
/*
## Parametric images
For visualization of quantitative measurements, parametric images can be used. 
Their pixel values represent a measurment that was taken from the labeled objects:
*/
Ext.CLIJx_labelPixelCountMap(labeled_blobs, pixel_count_map);
Ext.CLIJ2_pull(pixel_count_map);
// use a different look-up table for visualization
run("Green Fire Blue");
/*
When working with parametric images, we should use ImageJ's functionality to add a calibration bar and a scale bar:
*/
run("Calibration Bar...", "location=[Upper Right] fill=White label=Black number=5 decimal=0 font=12 zoom=1");
run("Scale Bar...", "width=100 height=4 font=14 color=White background=None location=[Lower Left] bold overlay");




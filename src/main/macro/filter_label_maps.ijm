/* 
# Filter label maps

Author: Robert Haase, May 2020
Thanks to Ofra Golani for the [idea/challange](https://forum.image.sc/t/neubias-academy-home-webinar-gpu-accelerated-image-processing-with-clij2-questions-answers/37456/2)

[Source](https://github.com/clij/clij2-docs/tree/master/src/main/macro/filter_label_maps.ijm)

This macro shows how to remove labels from a label map depending on a
measurement taken from the label map and a given corresponding binary
image.

*/
run("Close All");

// Define test data
binary_array = newArray(
	0, 0, 0, 0, 0,
	1, 0, 1, 0, 1,
	0, 1, 0, 0, 0,
	0, 0, 0, 0, 1,
	0, 0, 0, 1, 0);

label_array = newArray(
	1, 1, 1, 2, 2,
	1, 1, 1, 2, 2,
	1, 1, 0, 2, 2,
	4, 4, 4, 3, 3,
	4, 4, 4, 3, 3);

width = 5;
height = 5;
depth = 1;

/*
## Initialize GPU and push example images to GPU memory
*/
run("CLIJ2 Macro Extensions", "cl_device=");
Ext.CLIJ2_clear();

Ext.CLIJ2_pushArray(binary_image, binary_array, width, height, depth);
Ext.CLIJ2_pushArray(label_image, label_array, width, height, depth);

// Show example images
Ext.CLIJ2_pull(binary_image);
setMinAndMax(0, 1);
zoom(100);

Ext.CLIJ2_pull(label_image);
setMinAndMax(0,4);
run("glasbey_on_dark");
zoom(100);

/*
## Perform statistics to count the number of spots per label
We now measure the mean intensity in the binary image per label
and multiply it with the area to find out how many spots there are 
for each label.
*/
run("Clear Results");
Ext.CLIJ2_statisticsOfBackgroundAndLabelledPixels(binary_image, label_image);
// push two columns to GPU
Ext.CLIJ2_pushResultsTableColumn(mean_intensity, "MEAN_INTENSITY");
Ext.CLIJ2_pushResultsTableColumn(pixel_count, "PIXEL_COUNT");
run("Clear Results");

// do math with two vectors
Ext.CLIJ2_multiplyImages(mean_intensity, pixel_count, spot_count);
print("\\Clear");

// print out intermediate result
print("Number of spots per label:");
Ext.CLIJ2_print(spot_count);

/*
## Threshold a vector and make a binary vector
*/
// threeshold the vector
Ext.CLIJ2_greaterOrEqualConstant(spot_count, binary_spot_selection, 2);

Ext.CLIJ2_print(binary_spot_selection);

// make a new label image
Ext.CLIJ2_excludeLabels(binary_spot_selection, label_image, selected_label_image);

Ext.CLIJ2_pull(selected_label_image);
setMinAndMax(0,4);
run("glasbey_on_dark");
zoom(100);


/*
At the end of the macro, clean up:
*/
Ext.CLIJ2_clear();

/*
This is just a useful function to get a nice visualization in the notebook:
*/
function zoom(factor) {
	getDimensions(width, height, channels, slices, frames);
	before = getTitle();	
	run("Scale...", "x=" + factor + " y=" + factor + " width=" + (width * factor) + " height=" + (height* factor) + " interpolation=None average create");
	selectWindow(before);
	close();
}

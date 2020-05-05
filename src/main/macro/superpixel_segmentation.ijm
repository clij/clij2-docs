/*
# Superpixel segmentation
Author: Robert Haase
        April 2020

[Source](https://github.com/clij/clij2-docs/tree/master/src/main/macro/superpixel_segmentation.ijm)

Clean up ImageJ and initialize GPU:
*/
run("Close All");

run("CLIJ2 Macro Extensions", "cl_device=[GeForce RTX 2060 SUPER]");
Ext.CLIJ2_clear();

// time measurements
time = getTime();
Ext.CLIJ2_startTimeTracing();
/*
## Load a data set
The dataset is available [online](https://git.mpi-cbg.de/rhaase/neubias_academy_clij2/blob/master/data/lund1051_resampled.tif).
It shows a *Tribolium castaneum* embryo, imaged by a custom light sheet microscope, at a wavelength of 488nm (Imaging credits: Daniela Vorkel, Myers lab, MPI CBG). 
The data set has been resampled to a voxel size of 1x1x1 microns. The embryo expresses nuclei-GFP. We will use the dataset to detect nuclei and to generate an estimated cell-segmentation.

In addition, we use a label map of segmented cells, which got generated using [this macro](https://github.com/clij/clij2-docs/tree/master/src/main/macro/tribolium_morphometry.ijm).

All processing steps are performed in 3D space. For visualization purpose, we are using the maximum intensity projection in Z: 
*/
path = "C:/structure/teaching/neubias_academy_clij2/data/";

// load data
open(path + "lund1051_resampled.tif");
input = getTitle();
open(path + "lund1051_labelled.tif");
labels = getTitle();

// push images to GPU
Ext.CLIJ2_push(input);
Ext.CLIJ2_push(labels);

// clean up imageJ
run("Close All");
/*
## Viewing input data
Processed 3D-data will be shown in 2D, using maximum projections in Z:
*/
show(input, "input");
show(labels, "labels");
run("glasbey_on_dark");
/*
## Determine neighborhood relationships between segmented objects
From the label map, we derive a touch-matrix to process neighboring pixel :
*/
Ext.CLIJ2_generateTouchMatrix(labels, touch_matrix);

// visualise the touch matrix
Ext.CLIJ2_pull(touch_matrix);
/*
## Measure statistics
Now, we get statistics of labelled objects, in the form of a results table. From this table, we push the column PIXEL_SIZE as image back to the GPU:
*/
run("Clear Results");
Ext.CLIJ2_statisticsOfBackgroundAndLabelledPixels(input, labels);
Ext.CLIJ2_pushResultsTableColumn(pixel_count, "PIXEL_COUNT");
run("Clear Results");

// show the pixel count vector image
Ext.CLIJ2_pull(pixel_count);
/*
## Visualize measurements in space
Next, we color-code measurements based on the label map: 
*/
Ext.CLIJ2_replaceIntensities(labels, pixel_count, pixel_count_map);
show(pixel_count_map, "pixel count map");
run("Fire");

/*
## Thresholding based on derived features
Using a pixel count threshold, we segment the image by differentiating large and small objects. 
Thresholded 2D binary images overlap, because we look at maximum projections of 3D binary image stacks:
*/
pixel_count_threshold = 4000;

threshold_vector_and_visualise(pixel_count, labels, pixel_count_threshold);

// This function takes a vector, binarizes it using a threshold and 
// visualises the results as parametric image using a given labelmap
function threshold_vector_and_visualise(vector, labelmap, threshold) {

	// threshold the vector in two vectors:
	Ext.CLIJ2_smallerConstant(vector, small_objects, threshold);
	Ext.CLIJ2_greaterOrEqualConstant(vector, large_objects, threshold);
	// alternative: use binaryNot
	
	// visualise resulting binary images
	Ext.CLIJ2_replaceIntensities(labelmap, small_objects, small_objects_map);
	Ext.CLIJ2_replaceIntensities(labelmap, large_objects, large_objects_map);
	show(small_objects_map, "below threshold");
	show(large_objects_map, "above threshold");
}
/*
## Improving segmentation by superpixel filtering
Having two regions in the dataset, we can differentiate them more clearly by filtering the 
pixel count factor, using corresponding neighborhood relationships:
*/

// for every object, determine the minimum pixel count in its local neighbor hood
Ext.CLIJ2_minimumOfTouchingNeighbors(pixel_count, touch_matrix, filtered_pixel_count);

// we also make a parametric image out of that filtered vector
Ext.CLIJ2_replaceIntensities(labels, filtered_pixel_count, filtered_pixel_count_map);
show(filtered_pixel_count_map, "filtered pixel count map");
run("Fire");
/*
## Thresholding filtered features
To apply a threshold on a filtered vector, we reuse the macro command from above:
*/
threshold_vector_and_visualise(filtered_pixel_count, labels, pixel_count_threshold);
/*
## Renumbering label maps
Based on thresholded features, labels can get excluded and resorted within the label map. 
*/
// threshold the feature vector
Ext.CLIJ2_greaterOrEqualConstant(filtered_pixel_count,  binary_vector, pixel_count_threshold);
// remove all labels above the threshold from the labelmap
Ext.CLIJ2_excludeLabels(binary_vector, labels, labels_embryo);
show(labels_embryo, "labels_embryo");
run("glasbey_on_dark");


/*
## Visualization of segmented ROIs
We can also show different regions using ImageJs ROIs and Overlays:
*/
threshold_vector_and_visualise_as_rois(filtered_pixel_count, labels, input, pixel_count_threshold);

// This function takes a vector, binarizes it by thresholding 
// and visualizes the results as regions of interest
function threshold_vector_and_visualise_as_rois(vector, labelmap, input_image, threshold) {

	// threshold the vector in two vectors:
	Ext.CLIJ2_smallerConstant(vector, small_objects, threshold);
	Ext.CLIJ2_greaterOrEqualConstant(vector, large_objects, threshold);
	// alternative: use binaryNot

	show(input, "Input with rois");
	
	// visualise resulting binary images
	Ext.CLIJ2_replaceIntensities(labelmap, small_objects, small_objects_map);
	Ext.CLIJ2_replaceIntensities(labelmap, large_objects, large_objects_map);

	Ext.CLIJ2_maximumZProjection(small_objects_map, small_objects_map_projected);
	Ext.CLIJ2_maximumZProjection(large_objects_map, large_objects_map_projected);

	// pull a binary image from the GPU as ROI
	Ext.CLIJ2_pullAsROI(small_objects_map_projected);
	run("Enlarge...", "enlarge=-1"); // prevent overlapping outlines
	Overlay.addSelection("green");

	// pull a binary image from the GPU as ROI
	Ext.CLIJ2_pullAsROI(large_objects_map_projected);
	run("Enlarge...", "enlarge=-1"); // prevent overlapping outlines
	Overlay.addSelection("magenta");

	temp = getTitle();
	run("Flatten");
	selectWindow(temp);
	close();
}
/*
## Performance evaluation
Finally, a time measurement. Note that performing this workflow in ImageJ macro markdown is slower, 
because intermediate results are saved to disc.
*/
print("The whole workflow took " + (getTime() - time) + " msec");
/*
### Detailed time tracing for all operations
*/
Ext.CLIJ2_stopTimeTracing();
Ext.CLIJ2_getTimeTracing(time_traces);
print(time_traces);
/*
Also, let's see how much of GPU memory got used by this workflow. At the end, cleaning up remains important.
*/
Ext.CLIJ2_reportMemory();

// clean up finally.
Ext.CLIJ2_clear();
/*
Following methods are convenient for a proper visualization in a notebook:
*/
function show(input, text) {
	Ext.CLIJ2_maximumZProjection(input, max_projection);
	Ext.CLIJ2_pull(max_projection);
	setColor(100000);
	drawString(text, 20, 20);
	Ext.CLIJ2_release(max_projection);
}

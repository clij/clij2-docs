/*
# Measuring presence of objects between channels
This notebook explains how to count labeled objects in one channel that overlap with
objects in another channel. It also shows how to count those objects that are within
a certain distance range.

[Source](https://github.com/clij/clij2-docs/tree/master/src/main/macro/count_overlap_between_channels.ijm) 

We start by cleaning up and initializing the GPU.
*/
close("*");
run("Clear Results");

// Init GPU
run("CLIJ2 Macro Extensions", "cl_device=");
Ext.CLIJ2_clear();

/*
We now load an example image. You find it [online](https://github.com/clij/clij2-docs/tree/master/src/main/macro/artificial_nuclei_and_granules.tif) as well.
*/

// Load image from disc 
open("C:/structure/code/clij2-docs/src/main/macro/artificial_nuclei_and_granules.tif");
// open("https://github.com/clij/clij2-docs/tree/master/src/main/macro/artificial_nuclei_and_granules.tif")
input_image = getTitle();
/*
# Push channel images to the GPU
We now push this image twice to the GPU, while having different channels selected, and copy it. 
Afterwards, we will have two images corresponding to the two channels.   
*/

// Copy nuclei channel
Stack.setChannel(1);
Ext.CLIJ2_pushCurrentSlice(input_image);
Ext.CLIJ2_copy(input_image, nuclei_channel);

// Copy granules channel
Stack.setChannel(2);
Ext.CLIJ2_pushCurrentSlice(input_image);
Ext.CLIJ2_copy(input_image, granules_channel);

// show both; just for demonstration purposes
Ext.CLIJ2_pull(nuclei_channel);
Ext.CLIJ2_pull(granules_channel);

/*
# Image segmentation
We now segment the objects in both channels and label them. 
In these label images, object have different colors because their pixels have different values.
E.g. the first object has label 1, the second label and pixel value 2.
*/
// Threshold Otsu
Ext.CLIJ2_thresholdOtsu(nuclei_channel, nuclei_binary);
Ext.CLIJ2_thresholdOtsu(granules_channel, granules_binary);

// Connected Components Labeling
Ext.CLIJ2_connectedComponentsLabelingBox(nuclei_binary, nuclei_labels);
Ext.CLIJ2_connectedComponentsLabelingBox(granules_binary, granules_labels);

// show both; just for demonstration purposes
Ext.CLIJ2_pull(nuclei_labels);
run("glasbey_on_dark");
Ext.CLIJ2_pull(granules_labels);
run("glasbey_on_dark");
/*
# Count overlap between channels
We will now count for every nucleus, how many granules are in it. On object is not visible, because the granule count is 0, corresponding to black.
*/
Ext.CLIJx_labelOverlapCountMap(nuclei_labels, granules_labels, granules_per_nucleus_count_map);

// Visualize the count in an image with a calibration bar
Ext.CLIJ2_pull(granules_per_nucleus_count_map);
setMinAndMax(0,15);
run("16 colors");
run("Calibration Bar...", "location=[Lower Left] fill=White label=Black number=4 decimal=0 font=12 zoom=1 overlay");

/*
# Count objects in the proximity
We will now count the objects in proximity, a given distance range. 
As distance measure, we use the distance betweeen centroids.
*/
min_distance = 0;
max_distance = 120;
Ext.CLIJx_labelProximalNeighborCountMap(nuclei_labels, granules_labels, granules_close_to_nucleus_count_map, min_distance, max_distance);

// Visualize the count in an image with a calibration bar
Ext.CLIJ2_pull(granules_close_to_nucleus_count_map);
setMinAndMax(0,15);
run("16 colors");
run("Calibration Bar...", "location=[Lower Left] fill=White label=Black number=4 decimal=0 font=12 zoom=1 overlay");

/*
# Quantitative measurements
If you want to have measurements in tables, the easiest way is read the intensities from the maps we just created and putting them into a table.
Note that the first line in that table corresponds to background measurements which are set to zero in this case.
*/
Ext.CLIJx_readIntensitiesFromMap(nuclei_labels, granules_close_to_nucleus_count_map, granules_close_to_nucleus_count);
Ext.CLIJx_readIntensitiesFromMap(nuclei_labels, granules_per_nucleus_count_map, granules_per_nucleus_count);
// put the measurements in a table
Ext.CLIJx_pullToResultsTableColumn(granules_per_nucleus_count, "Granules_in_nucleus", false);
Ext.CLIJx_pullToResultsTableColumn(granules_close_to_nucleus_count, "Granules_in_proximity_of_nucleus", false);
/*
# Advanced measurements
In combination with label-extension, one can also measure how many objects are overlapping between channels.

For example, we artifically extend the granules to make them virtually overlap with the nuclei.
*/
radius = 20;
Ext.CLIJx_extendLabelsWithMaximumRadius(granules_labels, granules_labels_extended, radius);

// visualize the extended granules
Ext.CLIJ2_pull(granules_labels_extended);
run("glasbey_on_dark");
/*
We then measure the overlap of nuclei and extended granules extactly the same way as above.
*/
Ext.CLIJx_labelOverlapCountMap(nuclei_labels, granules_labels_extended, granules_extended_per_nucleus_count_map);

// Visualize the count in an image with a calibration bar
Ext.CLIJ2_pull(granules_extended_per_nucleus_count_map);
setMinAndMax(0,15);
run("16 colors");
run("Calibration Bar...", "location=[Lower Left] fill=White label=Black number=4 decimal=0 font=12 zoom=1 overlay");
/*
Furthermore, we can just print out the measurements:
*/
print("Number of extended granules overlapping with nuclei (ignore the first value, it represents label 0):");
Ext.CLIJx_readIntensitiesFromMap(nuclei_labels, granules_extended_per_nucleus_count_map, granules_extended_close_to_nucleus_count);
Ext.CLIJ2_print(granules_extended_close_to_nucleus_count);
/*
By the end, we should always clean up
*/
Ext.CLIJ2_clear();
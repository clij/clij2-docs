// CLIJ example macro: voronoi.ijm
//
// This macro shows how to apply an get a
// voronoi image of a binary image in the GPU.
//
// Author: Robert Haase
//         March 2020
// ---------------------------------------------


// Get test data
run("Blobs (25K)");
//open("C:/structure/data/blobs.gif");
getDimensions(width, height, channels, slices, frames);
input = getTitle();

mask = "Mask";
voronoi_diagram = "voronoi_diagram";
inverted_voronoi = "inverted_voronoi";
labelled = "labelled";
labelled_extended = "labelled_extended";
touch_matrix = "touch_matrix";

// Init GPU
run("CLIJ Macro Extensions", "cl_device=");
Ext.CLIJ2_clear();

// push data to GPU
Ext.CLIJ2_push(input);

// cleanup ImageJ
run("Close All");

// create a mask using a fixed threshold
Ext.CLIJ2_thresholdOtsu(input, mask);

// voronoi
Ext.CLIJ2_voronoiOctagon(mask, voronoi_diagram);

// invert
Ext.CLIJ2_binaryNot(voronoi_diagram, inverted_voronoi);

// label
Ext.CLIJ2_connectedComponentsLabelingBox(inverted_voronoi, labelled);

// extend labels so that they touch
Ext.CLIJ2_maximum2DBox(labelled, labelled_extended, 2, 2);

// determine touch matrix
Ext.CLIJ2_generateTouchMatrix(labelled_extended, touch_matrix);
Ext.CLIJ2_pull(touch_matrix);

// get a statistics table
Ext.CLIJ2_statisticsOfBackgroundAndLabelledPixels(input, labelled_extended);

intensity_values = "intensity_values";
Ext.CLIJ2_resultsTableColumnToImage(intensity_values, "MEAN_INTENSITY");

local_mean_intensity_values = "local_mean_intensity_values";
Ext.CLIJ2_meanOfTouchingNeighbors(intensity_values, touch_matrix, local_mean_intensity_values);

local_minimum_intensity_values = "local_minimum_intensity_values";
Ext.CLIJ2_minimumOfTouchingNeighbors(intensity_values, touch_matrix, local_minimum_intensity_values);

local_maximum_intensity_values = "local_maximum_intensity_values";
Ext.CLIJ2_maximumOfTouchingNeighbors(intensity_values, touch_matrix, local_maximum_intensity_values);

intensity_map = "intensity_map";
Ext.CLIJ2_replaceIntensities(labelled_extended, intensity_values, intensity_map);

local_mean_intensity_map = "local_mean_intensity_map";
Ext.CLIJ2_replaceIntensities(labelled_extended, local_mean_intensity_values, local_mean_intensity_map);

local_minimum_intensity_map = "local_minimum_intensity_map";
Ext.CLIJ2_replaceIntensities(labelled_extended, local_minimum_intensity_values, local_minimum_intensity_map);

local_maximum_intensity_map = "local_maximum_intensity_map";
Ext.CLIJ2_replaceIntensities(labelled_extended, local_maximum_intensity_values, local_maximum_intensity_map);

Ext.CLIJ2_pull(input);
Ext.CLIJ2_pull(intensity_map);
Ext.CLIJ2_pull(local_mean_intensity_map);
Ext.CLIJ2_pull(local_minimum_intensity_map);
Ext.CLIJ2_pull(local_maximum_intensity_map);



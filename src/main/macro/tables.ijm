/*
# Combining meausrements in tables

This notebook demonstrates how measurements from CLIJ2 methods can
be combined in ImageJs results tables.

Author: Robert Haase
January 2021

## Load example data
*/
// clean up first
run("Close All");
run("Clear Results");

// Get test data
//run("Blobs (25K)");
open("C:/structure/data/blobs.tif");
getDimensions(width, height, channels, slices, frames);
input = getTitle();
makeRectangle(74, 44, 100, 100);
run("Crop");
/*
## Initialize GPU and segment the image
*/
run("CLIJ2 Macro Extensions", "cl_device=");
Ext.CLIJ2_clear();
Ext.CLIJ2_push(input);
Ext.CLIJ2_thresholdOtsu(input, binary);
Ext.CLIJ2_connectedComponentsLabeling(binary, labels);
Ext.CLIJ2_pull(labels);
run("glasbey_on_dark");
/*
## Measurements

We perform a measurement which results in a table. 
To keep the resulting example table simple, we delete all columns but IDENTIFIER and MEAN_INTENSITY.
Note, the first row corresponds to measurement resulting from label 0, corresponding to background.
*/
// put many columns in
Ext.CLIJ2_statisticsOfBackgroundAndLabelledPixels(input, labels);
// remove all columns but one
headings = split(Table.headings(), "\t");
for (i = 0; i < lengthOf(headings); i++) {
	column_name = headings[i];
	if (column_name != "MEAN_INTENSITY" && column_name != "IDENTIFIER" && column_name != " ") {
		Table.deleteColumn(column_name);
	}
}
/*
## Adding a column

We will now measure the centroid distance of every label to the 
nearest neighbor and put it in the table as a new column:
*/
// determine nearest neighbor distance
Ext.CLIJ2_centroidsOfLabels(labels, centroids);
Ext.CLIJ2_generateDistanceMatrix(centroids, centroids, distance_matrix);
Ext.CLIJ2_averageDistanceOfNClosestPoints(distance_matrix, distance_list, 1);

// save measurements to table in new column
append_new_rows = false;
Ext.CLIJx_pullToResultsTableColumn(distance_list, "nearest_neighbor_distance", append_new_rows);
/*
We will now determine if labels are on the edge of the image and add
a column with 1 if the label touches an edge and 0 if not.
*/
Ext.CLIJx_flagLabelsOnEdges(labels, flag_vector);

append_new_rows = false;
Ext.CLIJx_pullToResultsTableColumn(flag_vector, "is_on_image_edge", append_new_rows);

/*
Last but not least, we clean up GPU memory :-)
*/
Ext.CLIJ2_clear();


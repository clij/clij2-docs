run("CLIJ2 Macro Extensions", "cl_device=");
Ext.CLIJ2_clear();
run("Clear Results");
close("*");

image_width = 2560;
image_height = 2560;

num_points = 2000000;

// -----------------------------------------------------------------------
// make test data

// make random input image
binary_mask = "binary_mask";
Ext.CLIJ2_create2D(binary_mask, image_width, image_height, 8);
Ext.CLIJ2_setRandom(binary_mask, 0, 2, 0);
Ext.CLIJ2_pull(binary_mask);

// make random pointlist
num_dimensions = 2;
pointlist = "pointlist";
Ext.CLIJ2_create2D(pointlist, num_points, num_dimensions, 32);
Ext.CLIJ2_setRandom(pointlist, 0, image_width, 0);

// output pointlist as table
Ext.CLIJ2_transposeXY(pointlist, pointlist_t);
Ext.CLIJ2_pullToResultsTable(pointlist_t);

// clean up
Ext.CLIJ2_release(pointlist);
Ext.CLIJ2_release(pointlist_t);

// -----------------------------------------------------------------------
// measure how long it takes to push such a table to GPU
start_time = getTime();
Ext.CLIJ2_pushResultsTable(pointlist);
print("Pushing such a table of coordinates to GPU memory takes " + (getTime() - start_time) + " ms");

// -----------------------------------------------------------------------
// read values from the binary image at given positions
start_time = getTime();
Ext.CLIJx_readValuesFromPositions(pointlist, binary_mask, in_roi_vector);
print("Reading intensity from positions took " + (getTime() - start_time) + " ms");

// -----------------------------------------------------------------------
// output binary intensities to the the results table 
start_time = getTime();
Ext.CLIJx_pullToResultsTableColumn(in_roi_vector, "in_roi", false);
print("Pull result from GPU memory to the results table took " + (getTime() - start_time) + " ms");


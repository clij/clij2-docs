// centroid visualisation.ijm
// ==========================
// 
// This script applies stardist to blobs.gif and determines centroid positions.
// The centroids are then visualised again in a label image.
// 
// Author: Robert Haase
//         September 2020  
//----------------------------------------------------------------------------

run("Blobs (25K)");
run("Command From Macro", "command=[de.csbdresden.stardist.StarDist2D], args=['input':'blobs.gif', 'modelChoice':'Versatile (fluorescent nuclei)', 'normalizeInput':'true', 'percentileBottom':'1.0', 'percentileTop':'99.8', 'probThresh':'0.01', 'nmsThresh':'0.05', 'outputType':'Label Image', 'nTiles':'1', 'excludeBoundary':'2', 'roiPosition':'Automatic', 'verbose':'false', 'showCsbdeepProgress':'false', 'showProbAndDist':'false'], process=[false]");
run("Duplicate...", " ");

run("CLIJ2 Macro Extensions", "cl_device=");
Ext.CLIJ2_clear();

labels = getTitle();
Ext.CLIJ2_push(labels);

// read out centroids of a label map. 
// This is a 2D image with points from left to right and coordinates X/Y/Z from top to bottom
Ext.CLIJ2_centroidsOfLabels(labels, pointlist);

// make another similar image which contains the coordinates + another line with intensities (1, 2, ... n) 
Ext.CLIJ2_getDimensions(pointlist, number_of_labels, dimensionality, _);
Ext.CLIJ2_create2D(coordinates_and_index, number_of_labels + 1, dimensionality + 1, 32);
Ext.CLIJ2_setRampX(coordinates_and_index);
Ext.CLIJ2_paste2D(pointlist, coordinates_and_index, 1, 0);

// generate an output image, set it to 0 everywhwere
Ext.CLIJ2_getDimensions(labels, width, height, depth);
Ext.CLIJ2_create2D(output, width, height, 32);
Ext.CLIJ2_set(output, 0);

// at every pixel position defined in the coordinate list above, write a number
Ext.CLIJ2_writeValuesToPositions(coordinates_and_index, output);

// visualise the output
Ext.CLIJ2_pull(output);
setMinAndMax(0, number_of_labels);
run("glasbey_on_dark");






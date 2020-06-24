// CLIJ example macro: jaccard_matrix.ijm
//
// This macro shows how to determine label-by-label 
// overlap between two label maps.
//
// Author: Robert Haase
//         June 2020
// ---------------------------------------------


run("Close All");
run("CLIJ2 Macro Extensions", "cl_device=");
Ext.CLIJ2_clear();

// get example image
run("Blobs (25K)");
input = getTitle();;
Ext.CLIJ2_push(input);
close();

// make two different label maps out of it
Ext.CLIJ2_thresholdOtsu(input, binary1);
Ext.CLIJ2_minimum2DBox(binary1, binary2, 2, 2);
Ext.CLIJ2_connectedComponentsLabelingBox(binary1, label1);
Ext.CLIJ2_connectedComponentsLabelingBox(binary2, label2);

// show label maps
Ext.CLIJ2_pull(label1);
Ext.CLIJ2_pull(label2);

// generate overlap matrix
Ext.CLIJ2_generateJaccardIndexMatrix(label1, label2, jaccard_matrix);
Ext.CLIJ2_pull(jaccard_matrix);
run("Fire");

// determine maximum overlap per label
Ext.CLIJ2_maximumYProjection(jaccard_matrix, vector2);
Ext.CLIJ2_maximumXProjection(jaccard_matrix, vector1_t);
Ext.CLIJ2_transposeXY(vector1_t, vector1);

// put measureemnts in the respective label and show it
Ext.CLIJ2_replaceIntensities(label1, vector1, parametric_image1);
Ext.CLIJ2_replaceIntensities(label2, vector2, parametric_image2);
Ext.CLIJ2_pull(parametric_image1);
run("Fire");
Ext.CLIJ2_pull(parametric_image2);
run("Fire");


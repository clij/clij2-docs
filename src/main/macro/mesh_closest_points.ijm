// CLIJ example macro: mesh_closest_pointsijm
//
// This macro shows how to draw lines between closest points in the GPU.
//
// Author: Robert Haase
//         September 2019
// ---------------------------------------------


// Get test data
run("Blobs (25K)");
//open("C:/structure/data/blobs.gif");
getDimensions(width, height, channels, slices, frames);
input = getTitle();
threshold = 128;

num_nearest_neighbors = 3;

// Init GPU
run("CLIJ2 Macro Extensions", "cl_device=");
Ext.CLIJ2_clear();

// push data to GPU
Ext.CLIJ2_push(input);

// cleanup ImageJ
run("Close All");

// blur
blurred = "blurred";
Ext.CLIJ2_blur2D(input, blurred, 15, 15);

// detect + visualize spots
detected_spots = "detected_spots";
Ext.CLIJ2_detectMaximaBox(blurred, detected_spots, 10);
Ext.CLIJ2_pullBinary(detected_spots);

// label spots and draw mesh
Ext.CLIJ2_labelSpots(detected_spots, labeled_spots);
Ext.CLIJ2_drawMeshBetweenNNearestLabels(labeled_spots, mesh, num_nearest_neighbors);
Ext.CLIJ2_pull(mesh);

// print out coordinates
Ext.CLIJ2_centroidsOfLabels(labeled_spots, pointlist);
print("Point coordinates:")
Ext.CLIJ2_print(pointlist);

// show distance matrix and region adjacency graph matrix
Ext.CLIJ2_generateDistanceMatrix(pointlist, pointlist, distance_matrix);
Ext.CLIJ2_pull(distance_matrix);
Ext.CLIJ2_generateNNearestNeighborsMatrix(distance_matrix, adjacency_graph_matrix, num_nearest_neighbors);
Ext.CLIJ2_pull(adjacency_graph_matrix);

// CLIJ example macro: local_entropy_3d.ijm
//
// This macro shows how to meausre local entropy
// in an image in the GPU.
//
// Author: Robert Haase
// 		   March 2020
// ---------------------------------------------
run("Close All");

// Get test data
run("T1 Head (2.4M, 16-bits)");

input = getTitle();


local_entropy = "local_entropy";

// Init GPU
run("CLIJ2 Macro Extensions", "cl_device=");
Ext.CLIJ2_clear();

// push images to GPU
Ext.CLIJ2_push(input);

// cleanup ImageJ
run("Close All");

// Blur in GPU
Ext.CLIJ2_entropyBox(input, local_entropy, 3, 3, 3);

// Get results back from GPU
Ext.CLIJ2_pull(local_entropy);

// Cleanup by the end
Ext.CLIJ2_clear();

// CLIJ example macro: getsize.ijm
//
// This macro shows how to get the dimensions 
// of an image on the GPU
//
// Author: Robert Haase
//         September 2019
// ---------------------------------------------


// Get test data
run("Blobs (25K)");
input = getTitle();

// Init GPU
run("CLIJ2 Macro Extensions", "cl_device=");

// get info from currently selected GPU
Ext.CLIJ2_GPUProperties();

setResult("GPUName", nResults(), "-----------------");

// get info from all GPUs
Ext.CLIJ2_listAvailableGPUs();




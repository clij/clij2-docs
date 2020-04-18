// CLIJ example macro: gpu_properties.ijm
//
// This macro shows how get information about the 
// used GPU
//
// Author: Robert Haase
//         April 2020
// ---------------------------------------------

// Init GPU
run("CLIJ2 Macro Extensions", "cl_device=");

Ext.CLIJ2_getGPUProperties(GPU_name, global_memory_in_bytes, OpenCL_version);

print("GPU: " + GPU_name);
print("Memory (in GB): " + (global_memory_in_bytes / 1024 / 1024 / 1024));
print("OpenCL version: " + OpenCL_version);


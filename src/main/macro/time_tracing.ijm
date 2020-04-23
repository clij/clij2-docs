/* 
# Time tracing
Author: Robert Haase
April 2020

[Source](https://github.com/clij/clij2-docs/tree/master/src/main/macro/time_tracing.ijm)

This macro shows how to trace time of image processing workflows. 
When doing this, we can also see which filters underly operations such
as the top-hat filter.

When executing this script, execute it twice! 
You may observe that the second execution is faster because of the 
[warm-up effect](https://stackoverflow.com/questions/36198278/why-does-the-jvm-require-warmup).
*/
// Cleanup first
run ("Close All");

// Get test data
run("Blobs (25K)");
run("Invert LUT");
input = getTitle();

/*
## Initialize GPU and push image to GPU memory
*/
run("CLIJ2 Macro Extensions", "cl_device=");
Ext.CLIJ2_clear();

// push images to GPU
Ext.CLIJ2_push(input);

// CleanUp ImageJ
close();

/*
## Start time tracing
Before we run the actual workflow or filter, we start time tracing.
*/
Ext.CLIJ2_startTimeTracing();

radius = 10;
Ext.CLIJ2_topHatBox(input, background_subtacted, radius, radius, 0);

// show result
Ext.CLIJ2_pull(background_subtacted);

/*
## Stop and inspect time tracing
After finishing the workflow, we can take a look at which operations called which other operations
and how long they took:
*/
Ext.CLIJ2_stopTimeTracing();
Ext.CLIJ2_getTimeTracing(time_traces);
print(time_traces);

/*
For documentation purposes, we should also report which GPU was used
*/
Ext.CLIJ2_getGPUProperties(gpu, memory, opencl_version);
print("GPU: " + gpu);
print("Memory in GB: " + (memory / 1024 / 1024 / 1024) );
print("OpenCL version: " + opencl_version);

/*
Cleanup by the end
*/
Ext.CLIJ2_clear();

/* 
# Time tracing
Authors: Robert Haase, Daniela Vorkel, April 2020

[Source](https://github.com/clij/clij2-docs/tree/master/src/main/macro/time_tracing.ijm)

This macro shows how to trace the duration of image processing workflows. 
When doing so, we can trace the taken time for underlying operations, such
as for the top-hat filter.

When executing this script, run it twice! 
You may observe that the second execution is faster, because of the 
[warm-up effect](https://stackoverflow.com/questions/36198278/why-does-the-jvm-require-warmup).
*/
// clean up first

run ("Close All");

// get test data
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

// clean up ImageJ
close();

/*
## Start time tracing
Before running the actual filter or workflow, we start the time tracing.
*/
Ext.CLIJ2_startTimeTracing();

radius = 10;

Ext.CLIJ2_topHatBox(input, background_subtacted, radius, radius, 0);

// show result
Ext.CLIJ2_pull(background_subtacted);

/*
## Stop and inspect the time tracing
After the workflow finished, we can have a look on all underlying operations and its execution time,
for each single step and as total duration:
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
At the end of the macro, clean up:
*/
Ext.CLIJ2_clear();

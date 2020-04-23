/*
# Measure speedup (Benchmarking)
Author: Robert Haase 
        April 2020

[Source](https://github.com/clij/clij2-docs/tree/master/src/main/macro/benchmarking.ijm)

This macro shows how to measure performance of image processing in ImageJ on the CPU 
and CLIJ2 on the GPU.

Let's get some test data first. 
We use an electron microscopy dataset from ["Segmented anisotropic ssTEM dataset of neural tissue." Stephan Gerhard, Jan Funke, Julien Martel, Albert Cardona, Richard Fetter. figshare. Retrieved 16:09, Nov 20, 2013 (GMT)](http://dx.doi.org/10.6084/m9.figshare.856713)
*/
run("Image Sequence...", "open=C:/structure/data/unidesigner_groundtruth-drosophila-vnc/stack1/raw/00.tif sort");
input = getTitle();

/*
## Measure processing time on the CPU

We start with measuring processing time of standard ImageJ operations which are executed 
on the central processing unit (CPU). Note that we execute this operation several times
to get some insight on different processing times when calling the same operation 
subsequently. Especially the first exection could be slower because of the 
[warm-up effect](https://stackoverflow.com/questions/36198278/why-does-the-jvm-require-warmup).
We measure the processing time by saving the current time in the variable `time` before 
processing and printing `(getTime() - time)` after processing:
*/
// Local mean filter in CPU
for (i = 1; i <= 10; i++) {
	time = getTime();
	run("Mean 3D...", "x=3 y=3 z=3");
	print("CPU mean filter no " + i + " took " + (getTime() - time) + " msec");
}
/*
## Measure processing time on the GPU
We perform the same strategy to measure processing time on the GPU. As the performance of
GPU-accelerated processing also depends on the data transfer time between CPU and GPU memory,
we also measure the time `push()` and `pull()` commands take.

Let's start with initializin the GPU.
*/
run("CLIJ2 Macro Extensions", "cl_device=");
Ext.CLIJ2_clear();

/*
### Push images to GPU
*/
time = getTime();
Ext.CLIJ2_push(input);
print("Pushing one image to the GPU took " + (getTime() - time) + " msec");

// cleanup ImageJ
run("Close All");

/*
### Process images on the GPU using CLIJ2
*/
// Local mean filter in GPU
for (i = 1; i <= 10; i++) {
	time = getTime();
	Ext.CLIJ2_mean3DBox(input, blurred, 3, 3, 3);
	print("CLIJ2 GPU mean filter no " + i + " took " + (getTime() - time) + " msec");
}
/*
### Compare CLIJ2 with its predecessor, [CLIJ](https://www.nature.com/articles/s41592-019-0650-1)
*/
// Local mean filter in GPU
for (i = 1; i <= 10; i++) {
	time = getTime();
	Ext.CLIJ_mean3DBox(input, blurred, 3, 3, 3);
	print("CLIJ GPU mean filter no " + i + " took " + (getTime() - time) + " msec");
}
/*
### Pull result image from the GPU
*/

time = getTime();
Ext.CLIJ2_pull(blurred);
print("Pulling one image from the GPU took " + (getTime() - time) + " msec");

/*
For documentation purposes, we should also report which GPU was used
*/
Ext.CLIJ2_getGPUProperties(gpu, memory, opencl_version);
print("GPU: " + gpu);
print("Memory in GB: " + (memory / 1024 / 1024 / 1024) );
print("OpenCL version: " + opencl_version);

/*
Cleanup GPU by the end.
*/
Ext.CLIJ2_clear();

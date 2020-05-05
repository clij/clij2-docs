/*
# Measure speedup (Benchmarking)
Authors: Robert Haase, Daniela Vorkel, April 2020

[Source](https://github.com/clij/clij2-docs/tree/master/src/main/macro/benchmarking.ijm)

This macro shows how to measure the performance of image processing done by ImageJ in the CPU 
and by CLIJ2 in the GPU.

First, let's get test data: 
*/
run("T1 Head (2.4M, 16-bits)");
input = getTitle();

// visualize the center plane
run("Duplicate...", "duplicate range=64-64");
/*
## Measure processing time in the CPU

We start to measure the processing time of standard ImageJ operations in the central processing unit (CPU). 
Note that we repeatedly execute this operation to get some insight about different processing times when 
calling the same operation subsequently. Especially, the first execution could be slower, because of the 
[warm-up effect](https://stackoverflow.com/questions/36198278/why-does-the-jvm-require-warmup).
We measure and save the current processing times as a variable `time`, before printing `(getTime() - time)`.
As an example of image processing, we use the mean filter:
*/

// Local mean filter in the CPU
for (i = 1; i <= 10; i++) {
	// duplicate the original image to avoid blurring the same image again and again
	selectWindow(input);
	run("Duplicate...", "duplicate range=1-129");
	
	// actual blur operation
	time = getTime();
	run("Mean 3D...", "x=3 y=3 z=3");
	print("CPU mean filter no " + i + " took " + (getTime() - time) + " msec");
	
	// keep the first blurred image and close the duplicates
	if (i == 1) {
		blurred_image = getTitle();
	} else {
		close();
	}
}
selectWindow(blurred_image);

// visualize the center plane
run("Duplicate...", "duplicate range=64-64");
/*
## Measure of processing time in the GPU
As done for the CPU, we repeat the same strategy to measure the processing time in the GPU. As the performance of
GPU-accelerated processing also depends on data transfer time between the CPU and GPU memory,
we consider the taken time for `push()` and `pull()` commands.

Let's start with the initialization of the GPU:
*/
run("CLIJ2 Macro Extensions", "cl_device=");
Ext.CLIJ2_clear();

/*
# Push images to GPU
*/
time = getTime();
Ext.CLIJ2_push(input);
print("Pushing one image to the GPU took " + (getTime() - time) + " msec");

// clean up ImageJ
run("Close All");

/*
# Process images in the GPU using CLIJ2 
Again, we use the mean filter of CLIJ2:
*/
// Local mean filter in the GPU
for (i = 1; i <= 10; i++) {
	time = getTime();
	Ext.CLIJ2_mean3DBox(input, blurred, 3, 3, 3);
	print("CLIJ2 GPU mean filter no " + i + " took " + (getTime() - time) + " msec");
}

/*
# Compare CLIJ2 with its predecessor: [CLIJ](https://www.nature.com/articles/s41592-019-0650-1)
Once more, we use the mean filter, but of CLIJ:
*/
// Local mean filter in the GPU
for (i = 1; i <= 10; i++) {
	time = getTime();
	Ext.CLIJ_mean3DBox(input, blurred, 3, 3, 3);
	print("CLIJ GPU mean filter no " + i + " took " + (getTime() - time) + " msec");
}
/*
# Pull a result image from the GPU
*/

time = getTime();
Ext.CLIJ2_pull(blurred);

print("Pulling one image from the GPU took " + (getTime() - time) + " msec");

// visualize the center plane
run("Duplicate...", "duplicate range=64-64");

/*
For documentation purpose, we also should report about the used GPU:
*/
Ext.CLIJ2_getGPUProperties(gpu, memory, opencl_version);
print("GPU: " + gpu);
print("Memory in GB: " + (memory / 1024 / 1024 / 1024) );
print("OpenCL version: " + opencl_version);

/*
At the end of the macro, clean up:
*/
Ext.CLIJ2_clear();

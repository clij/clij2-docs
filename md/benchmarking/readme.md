

# Measure speedup (Benchmarking)
Authors: Robert Haase, Daniela Vorkel, April 2020

[Source](https://github.com/clij/clij2-docs/tree/master/src/main/macro/benchmarking.ijm)

This macro shows how to measure the performance of image processing done by ImageJ in the CPU 
and by CLIJ2 in the GPU.

First, let's get test data: 

<pre class="highlight">
//open("c:/structure/data/t1-head.tif")
run("T1 Head (2.4M, 16-bits)");
input = getTitle();

// visualize the center plane
run("Duplicate...", "duplicate range=64-64");
</pre>
<a href="image_1609156128328.png"><img src="image_1609156128328.png" width="224" alt="t1-head.tif"/></a>
<a href="image_1609156128399.png"><img src="image_1609156128399.png" width="224" alt="t1-head-1.tif"/></a>

## Measure processing time in the CPU

We start to measure the processing time of standard ImageJ operations in the central processing unit (CPU). 
Note that we repeatedly execute this operation to get some insight about different processing times when 
calling the same operation subsequently. Especially, the first execution could be slower, because of the 
[warm-up effect](https://stackoverflow.com/questions/36198278/why-does-the-jvm-require-warmup).
We measure and save the current processing times as a variable `time`, before printing `(getTime() - time)`.
As an example of image processing, we use the mean filter:

<pre class="highlight">

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
</pre>
<pre>
> CPU mean filter no 1 took 3070 msec
> CPU mean filter no 2 took 2808 msec
> CPU mean filter no 3 took 4124 msec
> CPU mean filter no 4 took 4343 msec
> CPU mean filter no 5 took 4101 msec
> CPU mean filter no 6 took 4269 msec
> CPU mean filter no 7 took 4082 msec
> CPU mean filter no 8 took 4091 msec
> CPU mean filter no 9 took 4057 msec
> CPU mean filter no 10 took 4004 msec
</pre>
<a href="image_1609156168628.png"><img src="image_1609156168628.png" width="224" alt="t1-head-2.tif"/></a>
<a href="image_1609156168649.png"><img src="image_1609156168649.png" width="224" alt="t1-head-3.tif"/></a>

## Measure of processing time in the GPU
As done for the CPU, we repeat the same strategy to measure the processing time in the GPU. As the performance of
GPU-accelerated processing also depends on data transfer time between the CPU and GPU memory,
we consider the taken time for `push()` and `pull()` commands.

Let's start with the initialization of the GPU:

<pre class="highlight">
run("CLIJ2 Macro Extensions", "cl_device=");
Ext.<a href="https://clij.github.io/clij2-docs/reference_clear">CLIJ2_clear</a>();

</pre>

# Push images to GPU

<pre class="highlight">
time = getTime();
Ext.<a href="https://clij.github.io/clij2-docs/reference_push">CLIJ2_push</a>(input);
print("Pushing one image to the GPU took " + (getTime() - time) + " msec");

// clean up ImageJ
run("Close All");

</pre>
<pre>
> Pushing one image to the GPU took 26 msec
</pre>

# Process images in the GPU using CLIJ2 
Again, we use the mean filter of CLIJ2:

<pre class="highlight">
// Local mean filter in the GPU
for (i = 1; i <= 10; i++) {
	time = getTime();
	Ext.<a href="https://clij.github.io/clij2-docs/reference_mean3DBox">CLIJ2_mean3DBox</a>(input, blurred, 3, 3, 3);
	print("CLIJ2 GPU mean filter no " + i + " took " + (getTime() - time) + " msec");
}

</pre>
<pre>
> CLIJ2 GPU mean filter no 1 took 49 msec
> CLIJ2 GPU mean filter no 2 took 13 msec
> CLIJ2 GPU mean filter no 3 took 14 msec
> CLIJ2 GPU mean filter no 4 took 14 msec
> CLIJ2 GPU mean filter no 5 took 14 msec
> CLIJ2 GPU mean filter no 6 took 13 msec
> CLIJ2 GPU mean filter no 7 took 13 msec
> CLIJ2 GPU mean filter no 8 took 13 msec
> CLIJ2 GPU mean filter no 9 took 12 msec
> CLIJ2 GPU mean filter no 10 took 11 msec
</pre>

# Apply the mean filter using convolution using CLIJ2  

<pre class="highlight">
time = getTime();
Ext.<a href="https://clij.github.io/clij2-docs/reference_create3D">CLIJ2_create3D</a>(structuring_element, 7, 7, 7, 32);
Ext.<a href="https://clij.github.io/clij2-docs/reference_set">CLIJ2_set</a>(structuring_element, 1. / 7 / 7 / 7);
print("CLIJ2 GPU mean filter using convolution no " + i + " took " + (getTime() - time) + " msec");

for (i = 1; i <= 10; i++) {
	time = getTime();
	Ext.<a href="https://clij.github.io/clij2-docs/reference_convolve">CLIJ2_convolve</a>(input, structuring_element, blurred);
	print("CLIJ2 GPU mean filter using convolution no " + i + " took " + (getTime() - time) + " msec");
}

</pre>
<pre>
> CLIJ2 GPU mean filter using convolution no 11 took 351 msec
> CLIJ2 GPU mean filter using convolution no 1 took 32 msec
> CLIJ2 GPU mean filter using convolution no 2 took 30 msec
> CLIJ2 GPU mean filter using convolution no 3 took 29 msec
> CLIJ2 GPU mean filter using convolution no 4 took 28 msec
> CLIJ2 GPU mean filter using convolution no 5 took 24 msec
> CLIJ2 GPU mean filter using convolution no 6 took 23 msec
> CLIJ2 GPU mean filter using convolution no 7 took 23 msec
> CLIJ2 GPU mean filter using convolution no 8 took 23 msec
> CLIJ2 GPU mean filter using convolution no 9 took 22 msec
> CLIJ2 GPU mean filter using convolution no 10 took 24 msec
</pre>

# Compare CLIJ2 with its predecessor: [CLIJ](https://www.nature.com/articles/s41592-019-0650-1)
Once more, we use the mean filter, but of CLIJ:

<pre class="highlight">
// Local mean filter in the GPU
for (i = 1; i <= 10; i++) {
	time = getTime();
	Ext.CLIJ_mean3DBox(input, blurred, 3, 3, 3);
	print("CLIJ GPU mean filter no " + i + " took " + (getTime() - time) + " msec");
}
</pre>
<pre>
> CLIJ GPU mean filter no 1 took 42 msec
> CLIJ GPU mean filter no 2 took 9 msec
> CLIJ GPU mean filter no 3 took 9 msec
> CLIJ GPU mean filter no 4 took 10 msec
> CLIJ GPU mean filter no 5 took 10 msec
> CLIJ GPU mean filter no 6 took 10 msec
> CLIJ GPU mean filter no 7 took 10 msec
> CLIJ GPU mean filter no 8 took 10 msec
> CLIJ GPU mean filter no 9 took 9 msec
> CLIJ GPU mean filter no 10 took 9 msec
</pre>

# Pull a result image from the GPU

<pre class="highlight">

time = getTime();
Ext.<a href="https://clij.github.io/clij2-docs/reference_pull">CLIJ2_pull</a>(blurred);

print("Pulling one image from the GPU took " + (getTime() - time) + " msec");

// visualize the center plane
run("Duplicate...", "duplicate range=64-64");

</pre>
<pre>
> Pulling one image from the GPU took 68 msec
</pre>
<a href="image_1609156171174.png"><img src="image_1609156171174.png" width="224" alt="CLIJ2_mean3DBox_result1"/></a>
<a href="image_1609156171194.png"><img src="image_1609156171194.png" width="224" alt="CLIJ2_mean3DBox_result1-1"/></a>

For documentation purpose, we also should report about the used GPU:

<pre class="highlight">
Ext.<a href="https://clij.github.io/clij2-docs/reference_getGPUProperties">CLIJ2_getGPUProperties</a>(gpu, memory, opencl_version);
print("GPU: " + gpu);
print("Memory in GB: " + (memory / 1024 / 1024 / 1024) );
print("OpenCL version: " + opencl_version);

</pre>
<pre>
> GPU: GeForce RTX 2070
> Memory in GB: 8
> OpenCL version: 1.2
</pre>

At the end of the macro, clean up:

<pre class="highlight">
Ext.<a href="https://clij.github.io/clij2-docs/reference_clear">CLIJ2_clear</a>();
</pre>





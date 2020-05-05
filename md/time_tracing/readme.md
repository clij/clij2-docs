

# Time tracing
Authors: Robert Haase, Daniela Vorkel, April 2020

[Source](https://github.com/clij/clij2-docs/tree/master/src/main/macro/time_tracing.ijm)

This macro shows how to trace the duration of image processing workflows. 
When doing so, we can trace the taken time for underlying operations, such
as for the top-hat filter.

When executing this script, run it twice! 
You may observe that the second execution is faster, because of the 
[warm-up effect](https://stackoverflow.com/questions/36198278/why-does-the-jvm-require-warmup).

<pre class="highlight">
// clean up first

run ("Close All");

// get test data
run("Blobs (25K)");
run("Invert LUT");
input = getTitle();

</pre>
<a href="image_1588708137544.png"><img src="image_1588708137544.png" width="224" alt="blobs.gif"/></a>

## Initialize GPU and push image to GPU memory

<pre class="highlight">
run("CLIJ2 Macro Extensions", "cl_device=");
Ext.CLIJ2_clear();

// push images to GPU
Ext.CLIJ2_push(input);

// clean up ImageJ
close();

</pre>

## Start time tracing
Before running the actual filter or workflow, we start the time tracing.

<pre class="highlight">
Ext.CLIJ2_startTimeTracing();

radius = 10;

Ext.<a href="https://clij.github.io/clij2-docs/reference_topHatBox">CLIJ2_topHatBox</a>(input, background_subtacted, radius, radius, 0);

// show result
Ext.CLIJ2_pull(background_subtacted);

</pre>
<a href="image_1588708137684.png"><img src="image_1588708137684.png" width="224" alt="CLIJ2_topHatBox_result2"/></a>

## Stop and inspect the time tracing
After the workflow finished, we can have a look on all underlying operations and its execution time,
for each single step and as total duration:

<pre class="highlight">
Ext.CLIJ2_stopTimeTracing();
Ext.CLIJ2_getTimeTracing(time_traces);
print(time_traces);

</pre>
<pre>
> > timeTracing
>  > TopHatBox
>   > Minimum2DBox
>   < Minimum2DBox                1.4874 ms
>   > Maximum2DBox
>   < Maximum2DBox                1.5085 ms
>   > SubtractImages
>   < SubtractImages              0.9509 ms
>  < TopHatBox                    4.1712 ms
> < timeTracing                   115.9438 ms
>  
</pre>

For documentation purposes, we should also report which GPU was used

<pre class="highlight">
Ext.CLIJ2_getGPUProperties(gpu, memory, opencl_version);
print("GPU: " + gpu);
print("Memory in GB: " + (memory / 1024 / 1024 / 1024) );
print("OpenCL version: " + opencl_version);

</pre>
<pre>
> GPU: GeForce RTX 2060 SUPER
> Memory in GB: 8
> OpenCL version: 1.2
</pre>

At the end of the macro, clean up:

<pre class="highlight">
Ext.CLIJ2_clear();
</pre>





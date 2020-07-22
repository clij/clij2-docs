

# Gaussian blur
Author: Robert Haase, Daniela Vorkel, April 2020

[Source](https://github.com/clij/clij2-docs/tree/master/src/main/macro/blur.ijm)

This macro shows how to blur an image in the GPU.

First, we get test data:

<pre class="highlight">
run("Close All");

run("Blobs (25K)");
run("Invert LUT");
input = getTitle();
</pre>
<a href="image_1588706434257.png"><img src="image_1588706434257.png" width="224" alt="blobs.gif"/></a>

## Initialize GPU
Push image data to GPU memory:

<pre class="highlight">
run("CLIJ2 Macro Extensions", "cl_device=");
Ext.<a href="https://clij.github.io/clij2-docs/reference_clear">CLIJ2_clear</a>();

// push images to GPU
Ext.<a href="https://clij.github.io/clij2-docs/reference_push">CLIJ2_push</a>(input);

// clean up ImageJ
run("Close All");
</pre>

## Apply a Gaussian blur filter in GPU
We apply a filter to an image by specifying the input image, the output image and other parameters:

<pre class="highlight">
Ext.<a href="https://clij.github.io/clij2-docs/reference_gaussianBlur3D">CLIJ2_gaussianBlur3D</a>(input, blurred, 5, 5, 1);

// get results back from GPU
Ext.<a href="https://clij.github.io/clij2-docs/reference_pull">CLIJ2_pull</a>(blurred);
</pre>
<a href="image_1588706434451.png"><img src="image_1588706434451.png" width="224" alt="CLIJ2_gaussianBlur3D_result11"/></a>

Note: In contrast to CLIJ, the variable `blurred` contains the name of the output image and does not need to get specified. 
CLIJ2 automatically names images, as shown with the `print();` statement:

<pre class="highlight">
print(blurred);
</pre>
<pre>
> CLIJ2_gaussianBlur3D_result11
</pre>

If you don't like the image names created by CLIJ2, just rename them as you wish before calling the filter function.

## Clean up GPU
At the end of the macro, clean up GPU memory:

<pre class="highlight">
Ext.<a href="https://clij.github.io/clij2-docs/reference_clear">CLIJ2_clear</a>();
</pre>





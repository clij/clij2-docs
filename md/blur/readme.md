

# Gaussian blur
Author: Robert Haase
December 2018

[Source](https://github.com/clij/clij2-docs/tree/master/src/main/macro/blur.ijm)

This macro shows how to blur an image in the GPU.

First, we get test data:

<pre class="highlight">
run("Close All");

run("Blobs (25K)");
run("Invert LUT");
input = getTitle();
</pre>
<a href="image_1588141932885.png"><img src="image_1588141932885.png" width="224" alt="blobs.gif"/></a>

## Initialize GPU
 and push image data to GPU memory

<pre class="highlight">
run("CLIJ2 Macro Extensions", "cl_device=");
Ext.CLIJ2_clear();

// push images to GPU
Ext.CLIJ2_push(input);

// cleanup ImageJ
run("Close All");
</pre>

## Apply a Gaussian blur filter in GPU
We apply a filter to an image by specifying the input image, the output image and other parameters:

<pre class="highlight">
Ext.<a href="https://clij.github.io/clij2-docs/reference_gaussianBlur3D">CLIJ2_gaussianBlur3D</a>(input, blurred, 5, 5, 1);

// Get results back from GPU
Ext.CLIJ2_pull(blurred);
</pre>
<a href="image_1588141933505.png"><img src="image_1588141933505.png" width="224" alt="CLIJ2_gaussianBlur3D_result4"/></a>

Note: In contrast to CLIJ, the `blurred` variable, which contains the name of the output image, does not have to specified in advance. 
CLIJ2 automatically names images, in this case:

<pre class="highlight">
print(blurred);
</pre>
<pre>
> CLIJ2_gaussianBlur3D_result4
</pre>

If you don't like the names CLIJ2 gives to the images, just name them as you wish before calling the filter function.

## Cleanup by the end
Always clean up GPU memory by the end.

<pre class="highlight">
Ext.CLIJ2_clear();
</pre>





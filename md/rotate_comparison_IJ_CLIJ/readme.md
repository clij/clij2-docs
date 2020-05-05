

# Comparing image rotation: ImageJ vs CLIJ
Authors: Robert Haase, Daniela Vorkel, July 2019

This macro shows how to rotate stacks in the GPU,
and how different the results are when using CLIJ or ImageJ.


## Get test data

<pre class="highlight">
run("Close All");


run("Blobs (25K)");
run("Invert LUT");

input = getTitle();


</pre>
<a href="image_1588707484916.png"><img src="image_1588707484916.png" width="224" alt="blobs.gif"/></a>

## Initialize GPU and push image data to GPU memory

<pre class="highlight">
run("CLIJ Macro Extensions", "cl_device=1070");
Ext.CLIJ2_clear();

// push data to GPU
Ext.CLIJ2_push(input);

</pre>

## Rotate image in CPU

<pre class="highlight">
run("Duplicate...", " ");
run("Rotate... ", "angle=45 grid=1 interpolation=Bilinear");
rotated_cpu = getTitle();

</pre>
<a href="image_1588707485057.png"><img src="image_1588707485057.png" width="224" alt="blobs-1.gif"/></a>

## Rotate image in GPU

<pre class="highlight">
Ext.<a href="https://clij.github.io/clij2-docs/reference_affineTransform2D">CLIJ2_affineTransform2D</a>(input, rotated_gpu, "-center rotate=45 center");

// show results
Ext.CLIJ2_pull(rotated_gpu);


</pre>
<a href="image_1588707485131.png"><img src="image_1588707485131.png" width="224" alt="CLIJ2_affineTransform2D_result118"/></a>

## Calculate the difference of images rotated in CPU and GPU

<pre class="highlight">
imageCalculator("Subtract create 32-bit", rotated_cpu, rotated_gpu);

</pre>
<a href="image_1588707485187.png"><img src="image_1588707485187.png" width="224" alt="Result of blobs-1.gif"/></a>

At the end of the macro, clean up:

<pre class="highlight">
Ext.CLIJ2_clear();
</pre>





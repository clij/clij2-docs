

# CLIJ example macro: rotate_comparison_IJ_CLIJ.ijm

This macro shows how stacks can be rotated in the GPU
and how different results are between CLIJ and ImageJ.

Author: Robert Haase
July 2019

## Get test data

<pre class="highlight">
run("Close All");


run("Blobs (25K)");
run("Invert LUT");

input = getTitle();


</pre>
<a href="image_1587213130843.png"><img src="image_1587213130843.png" width="224" alt="blobs.gif"/></a>

## Initialize GPU and push image data to GPU memory

<pre class="highlight">
run("CLIJ Macro Extensions", "cl_device=1070");
Ext.CLIJ2_clear();

// push data to GPU
Ext.CLIJ2_push(input);

</pre>

## Rotate image on CPU

<pre class="highlight">
run("Duplicate...", " ");
run("Rotate... ", "angle=45 grid=1 interpolation=Bilinear");
rotated_cpu = getTitle();

</pre>
<a href="image_1587213134619.png"><img src="image_1587213134619.png" width="224" alt="blobs-1.gif"/></a>

## Rotate image on GPU

<pre class="highlight">
Ext.<a href="https://clij.github.io/clij2-docs/reference_affineTransform2D">CLIJ2_affineTransform2D</a>(input, rotated_gpu, "-center rotate=45 center");


// show results
Ext.CLIJ2_pull(rotated_gpu);


</pre>
<a href="image_1587213134682.png"><img src="image_1587213134682.png" width="224" alt="CLIJ2_affineTransform2D_result36"/></a>

## Calculate difference image between CPU and GPU

<pre class="highlight">
imageCalculator("Subtract create 32-bit", rotated_cpu, rotated_gpu);

</pre>
<a href="image_1587213136743.png"><img src="image_1587213136743.png" width="224" alt="Result of blobs-1.gif"/></a>

Clean up by the end

<pre class="highlight">
Ext.CLIJ2_clear();
</pre>



</pre>
</pre>

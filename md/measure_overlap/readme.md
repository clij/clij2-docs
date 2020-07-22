

# Measure overlap
Authors: Robert Haase, Daniela Vorkel, April 2020

[Source](https://github.com/clij/clij2-docs/tree/master/src/main/macro/measure_overlap.ijm)


This macro shows how to measure an overlap 
of two binary images in the GPU.

Get test data:

<pre class="highlight">
run("Blobs (25K)");
// open("C:/structure/data/blobs.gif");
input = getTitle();

</pre>
<a href="image_1588707322243.png"><img src="image_1588707322243.png" width="224" alt="blobs.gif"/></a>

## Init GPU
and push image data to GPU memory:

<pre class="highlight">
run("CLIJ2 Macro Extensions", "cl_device=");
Ext.<a href="https://clij.github.io/clij2-docs/reference_clear">CLIJ2_clear</a>();

// push data to GPU
Ext.<a href="https://clij.github.io/clij2-docs/reference_push">CLIJ2_push</a>(input);

// clean up ImageJ
run("Close All");


</pre>

## Create a mask by using two different threshold methods

<pre class="highlight">

Ext.<a href="https://clij.github.io/clij2-docs/reference_automaticThreshold">CLIJ2_automaticThreshold</a>(input, mask1, "Otsu");
Ext.<a href="https://clij.github.io/clij2-docs/reference_automaticThreshold">CLIJ2_automaticThreshold</a>(input, mask2, "MinError");

Ext.<a href="https://clij.github.io/clij2-docs/reference_pullBinary">CLIJ2_pullBinary</a>(mask1);
Ext.<a href="https://clij.github.io/clij2-docs/reference_pullBinary">CLIJ2_pullBinary</a>(mask2);

</pre>
<a href="image_1588707322448.png"><img src="image_1588707322448.png" width="224" alt="CLIJ2_automaticThreshold_result93"/></a>
<a href="image_1588707322482.png"><img src="image_1588707322482.png" width="224" alt="CLIJ2_automaticThreshold_result94"/></a>

## Measure the overlap between two masks

<pre class="highlight">
Ext.<a href="https://clij.github.io/clij2-docs/reference_getJaccardIndex">CLIJ2_getJaccardIndex</a>(mask1, mask2, jaccardIndex);
Ext.<a href="https://clij.github.io/clij2-docs/reference_getSorensenDiceCoefficient">CLIJ2_getSorensenDiceCoefficient</a>(mask1, mask2, diceIndex);

// output result
IJ.log("Overlap (Jaccard index): " + (jaccardIndex*100) + "%");
IJ.log("Overlap (Sorensen / Dice coefficient): " + (diceIndex*100) + "%");


</pre>
<pre>
> Overlap (Jaccard index): 81.9294%
> Overlap (Sorensen / Dice coefficient): 90.0672%
</pre>

At the end of the macro, clean up:

<pre class="highlight">
Ext.<a href="https://clij.github.io/clij2-docs/reference_clear">CLIJ2_clear</a>();
</pre>





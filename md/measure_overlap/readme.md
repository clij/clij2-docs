

# CLIJ example macro: measure_overlap.ijm

This macro shows how to measure the overlap 
of two binary images in the GPU.

Author: Robert Haase
July 2019


Get test data

<pre class="highlight">
run("Blobs (25K)");
//open("C:/structure/data/blobs.gif");
input = getTitle();

</pre>
<a href="image_1587211571604.png"><img src="image_1587211571604.png" width="224" alt="blobs.gif"/></a>

## Init GPU
 and push image data to GPU memory

<pre class="highlight">
run("CLIJ2 Macro Extensions", "cl_device=");
Ext.CLIJ2_clear();

// push data to GPU
Ext.CLIJ2_push(input);

// cleanup ImageJ
run("Close All");


</pre>

## Create a mask using two different threshold methods

<pre class="highlight">

Ext.<a href="https://clij.github.io/clij2-docs/reference_automaticThreshold">CLIJ2_automaticThreshold</a>(input, mask1, "Otsu");
Ext.<a href="https://clij.github.io/clij2-docs/reference_automaticThreshold">CLIJ2_automaticThreshold</a>(input, mask2, "MinError");

Ext.CLIJ2_pullBinary(mask1);
Ext.CLIJ2_pullBinary(mask2);

</pre>
<a href="image_1587211571795.png"><img src="image_1587211571795.png" width="224" alt="CLIJ2_automaticThreshold_result15"/></a>
<a href="image_1587211571830.png"><img src="image_1587211571830.png" width="224" alt="CLIJ2_automaticThreshold_result16"/></a>

## measure overlap between the two masks

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

cleanup GPU memory

<pre class="highlight">
Ext.CLIJ2_clear();
</pre>



</pre>
</pre>

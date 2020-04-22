

# CLIJ example macro: labeling.ijm

This macro shows how to apply an automatic 
threshold method and connected components labeling
to an image on the GPU

Author: Robert Haase
June 2019



<pre class="highlight">
//Get test data
run("Blobs (25K)");
input = getTitle();


</pre>
<a href="image_1587568435554.png"><img src="image_1587568435554.png" width="250" alt="blobs.gif"/></a>

## Init GPU
 and push image data to the GPU memory

<pre class="highlight">
run("CLIJ2 Macro Extensions", "cl_device=");
Ext.CLIJ2_clear();

// push data to GPU
Ext.CLIJ2_push(input);

// cleanup ImageJ
run("Close All");

</pre>

## Create a mask using a fixed threshold

<pre class="highlight">
Ext.<a href="https://clij.github.io/clij2-docs/reference_automaticThreshold">CLIJ2_automaticThreshold</a>(input, mask, "Otsu");
Ext.CLIJ2_pull(mask);

</pre>
<a href="image_1587568435708.png"><img src="image_1587568435708.png" width="250" alt="CLIJ2_automaticThreshold_result9"/></a>

## Label connected components

<pre class="highlight">
Ext.<a href="https://clij.github.io/clij2-docs/reference_connectedComponentsLabelingBox">CLIJ2_connectedComponentsLabelingBox</a>(mask, labelmap);

Ext.CLIJ2_pull(labelmap);
run("glasbey on dark");


</pre>
<a href="image_1587568435838.png"><img src="image_1587568435838.png" width="250" alt="CLIJ2_connectedComponentsLabelingBox_result10"/></a>

Clean up by the end.

<pre class="highlight">

Ext.CLIJ2_clear();



</pre>





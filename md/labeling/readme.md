

# Labelling
Authors: Robert Haase, Daniela Vorkel, April 2020

[Source](https://github.com/clij/clij2-docs/tree/master/src/main/macro/labeling.ijm)

This macro shows how to apply an automated 
threshold method and how to label connected components
on an image using GPU.




<pre class="highlight">
// get test data
run("Blobs (25K)");
input = getTitle();
</pre>
<a href="image_1588706840496.png"><img src="image_1588706840496.png" width="224" alt="blobs.gif"/></a>

## Initialize GPU
First we initialize the GPU and push image data to the GPU memory:

<pre class="highlight">
run("CLIJ2 Macro Extensions", "cl_device=");
Ext.<a href="https://clij.github.io/clij2-docs/reference_clear">CLIJ2_clear</a>();

// push data to GPU
Ext.<a href="https://clij.github.io/clij2-docs/reference_push">CLIJ2_push</a>(input);

// clean up ImageJ
run("Close All");
</pre>

## Create a mask using a fixed threshold

<pre class="highlight">
Ext.<a href="https://clij.github.io/clij2-docs/reference_automaticThreshold">CLIJ2_automaticThreshold</a>(input, mask, "Otsu");
Ext.<a href="https://clij.github.io/clij2-docs/reference_pull">CLIJ2_pull</a>(mask);
</pre>
<a href="image_1588706840667.png"><img src="image_1588706840667.png" width="224" alt="CLIJ2_automaticThreshold_result37"/></a>

## Label connected components

<pre class="highlight">
Ext.<a href="https://clij.github.io/clij2-docs/reference_connectedComponentsLabelingBox">CLIJ2_connectedComponentsLabelingBox</a>(mask, labelmap);

Ext.<a href="https://clij.github.io/clij2-docs/reference_pull">CLIJ2_pull</a>(labelmap);
run("glasbey on dark");

</pre>
<a href="image_1588706840874.png"><img src="image_1588706840874.png" width="224" alt="CLIJ2_connectedComponentsLabelingBox_result38"/></a>

## Remove labels touching image borders

<pre class="highlight">
Ext.<a href="https://clij.github.io/clij2-docs/reference_excludeLabelsOnEdges">CLIJ2_excludeLabelsOnEdges</a>(labelmap, labels_not_touching_image_borders);
Ext.<a href="https://clij.github.io/clij2-docs/reference_pull">CLIJ2_pull</a>(labels_not_touching_image_borders);
run("glasbey on dark");

</pre>
<a href="image_1588706840965.png"><img src="image_1588706840965.png" width="224" alt="CLIJ2_excludeLabelsOnEdges_result39"/></a>

At the end of the macro, clean up:

<pre class="highlight">

Ext.<a href="https://clij.github.io/clij2-docs/reference_clear">CLIJ2_clear</a>();



</pre>





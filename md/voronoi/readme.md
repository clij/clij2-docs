

# Voronoi diagrams

Authors: Robert Haase, Daniela Vorkel, March 2020

This macro shows how to create a Voronoi 
diagram out of a binary image in the GPU.


## Get test data

<pre class="highlight">
run("Blobs (25K)");
// open("C:/structure/data/blobs.gif");
input = getTitle();


</pre>
<a href="image_1588707837849.png"><img src="image_1588707837849.png" width="224" alt="blobs.gif"/></a>

## Initialize GPU
and push image data to GPU memory:

<pre class="highlight">
run("CLIJ2 Macro Extensions", "cl_device=");
Ext.<a href="https://clij.github.io/clij2-docs/reference_clear">CLIJ2_clear</a>();

// push data to GPU
Ext.<a href="https://clij.github.io/clij2-docs/reference_push">CLIJ2_push</a>(input);

// clean up ImageJ
run("Close All");

</pre>

## Create a binary mask and draw the Voronoi diagram 
First, apply Otsu's thresholding method to obtain a 
binary mask image, then draw the Voronoi diagram.


<pre class="highlight">
Ext.<a href="https://clij.github.io/clij2-docs/reference_thresholdOtsu">CLIJ2_thresholdOtsu</a>(input, mask);

// apply voronoi
Ext.<a href="https://clij.github.io/clij2-docs/reference_voronoiOctagon">CLIJ2_voronoiOctagon</a>(mask, voronoi_diagram);

// show result
Ext.<a href="https://clij.github.io/clij2-docs/reference_pullBinary">CLIJ2_pullBinary</a>(mask);
Ext.<a href="https://clij.github.io/clij2-docs/reference_pullBinary">CLIJ2_pullBinary</a>(voronoi_diagram);

</pre>
<a href="image_1588707838158.png"><img src="image_1588707838158.png" width="224" alt="CLIJ2_thresholdOtsu_result256"/></a>
<a href="image_1588707838193.png"><img src="image_1588707838193.png" width="224" alt="CLIJ2_voronoiOctagon_result257"/></a>

At the end of the macro, clean up:

<pre class="highlight">
Ext.<a href="https://clij.github.io/clij2-docs/reference_clear">CLIJ2_clear</a>();

</pre>





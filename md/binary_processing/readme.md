

# Binary operations
Author: Robert Haase
        April 2020

[Source](https://github.com/clij/clij2-docs/tree/master/src/main/macro/binary_processing.ijm)

This macro shows how to deal with binary images, e.g. 
thresholding, dilation, erosion, file holes etc in the GPU.

All demonstrated operations work in 2D and 3D. We use a 2D 
example here for demonstration purposes.


<pre class="highlight">
// clean up first
run("Close All");

</pre>

## Get test data

<pre class="highlight">
run("Embryos (42K)");
run("8-bit");
makeRectangle(714, 14, 768, 394);
run("Crop", " ");
input = getTitle();

</pre>
<a href="image_1587651111934.png"><img src="image_1587651111934.png" width="224" alt="embryos.jpg"/></a>

Initialize GPU and push image to GPU memory

<pre class="highlight">
run("CLIJ Macro Extensions", "cl_device=");
Ext.CLIJ2_clear();

// push data to GPU
Ext.CLIJ2_push(input);


</pre>

## Thresholding
We create a binary mask image using a Otsus tresholding method threshold
. 
As the image has a bright background, we invert the image first

<pre class="highlight">
Ext.<a href="https://clij.github.io/clij2-docs/reference_subtractImageFromScalar">CLIJ2_subtractImageFromScalar</a>(input, inverted, 255);

// apply threshold method
Ext.<a href="https://clij.github.io/clij2-docs/reference_thresholdOtsu">CLIJ2_thresholdOtsu</a>(inverted, thresholded);

// show thresholding result
Ext.CLIJ2_pull(thresholded);

</pre>
<a href="image_1587651114252.png"><img src="image_1587651114252.png" width="224" alt="CLIJ2_thresholdOtsu_result116"/></a>

## Binary opening using erosion and dilation
We do binary opening by hand: It consists of binary erosion and dilation, applied twice each.


<pre class="highlight">
Ext.<a href="https://clij.github.io/clij2-docs/reference_erodeBox">CLIJ2_erodeBox</a>(thresholded, temp);
Ext.<a href="https://clij.github.io/clij2-docs/reference_erodeBox">CLIJ2_erodeBox</a>(temp, intermediate_result);

// show intermediate result
Ext.CLIJ2_pull(intermediate_result);
</pre>
<a href="image_1587651114810.png"><img src="image_1587651114810.png" width="224" alt="CLIJ2_erodeBox_result118"/></a>


<pre class="highlight">
Ext.<a href="https://clij.github.io/clij2-docs/reference_dilateBox">CLIJ2_dilateBox</a>(intermediate_result, temp);
Ext.<a href="https://clij.github.io/clij2-docs/reference_dilateBox">CLIJ2_dilateBox</a>(temp, opening_result);

// show result
Ext.CLIJ2_pull(opening_result);

</pre>
<a href="image_1587651115369.png"><img src="image_1587651115369.png" width="224" alt="CLIJ2_dilateBox_result119"/></a>

## Binary closing
For binary closing and opening, on can also call methods directly: 
Given on the number of erosions/dilations we want to apply, we can also use these methods:

<pre class="highlight">
number_of_iterations = 2;
Ext.<a href="https://clij.github.io/clij2-docs/reference_closingBox">CLIJ2_closingBox</a>(thresholded, closing_result, number_of_iterations);
// show result
Ext.CLIJ2_pull(closing_result);

</pre>
<a href="image_1587651115444.png"><img src="image_1587651115444.png" width="224" alt="CLIJ2_closingBox_result120"/></a>

## Fill holes
It is also possible to fill holes:

<pre class="highlight">
Ext.<a href="https://clij.github.io/clij2-docs/reference_binaryFillHoles">CLIJ2_binaryFillHoles</a>(thresholded, holes_filled);
// show result
Ext.CLIJ2_pullBinary(holes_filled);

</pre>
<a href="image_1587651118709.png"><img src="image_1587651118709.png" width="224" alt="CLIJ2_binaryFillHoles_result121"/></a>

## Edge detection
We can retrieve an edge image like this:

<pre class="highlight">
Ext.<a href="https://clij.github.io/clij2-docs/reference_binaryEdgeDetection">CLIJ2_binaryEdgeDetection</a>(thresholded, edges);
// show result
Ext.CLIJ2_pullBinary(edges);

</pre>
<a href="image_1587651119241.png"><img src="image_1587651119241.png" width="224" alt="CLIJ2_binaryEdgeDetection_result122"/></a>

Finally, always clean up:

<pre class="highlight">
Ext.CLIJ2_clear();

</pre>





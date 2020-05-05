

# Crop and paste images
Authors: Robert Haase, Daniela Vorkel, April 2020


[Source](https://github.com/clij/clij2-docs/tree/master/src/main/macro/crop_and_paste.ijm)

This macro shows how to crop and paste images in the GPU.

<pre class="highlight">
// clean up first
run("Close All");

// get test data
run("Blobs (25K)");
run("Invert LUT");
input = getTitle();

</pre>
<a href="image_1588706596974.png"><img src="image_1588706596974.png" width="224" alt="blobs.gif"/></a>

## Initialize GPU and push image to GPU memory

<pre class="highlight">
run("CLIJ2 Macro Extensions", "cl_device=");
Ext.CLIJ2_clear();

// push images to GPU
Ext.CLIJ2_push(input);

</pre>

## Crop out a part of the image
We now crop out a part of the image and show its result:

<pre class="highlight">
x = 10;
y = 10;
width = 75;
height = 75;
Ext.<a href="https://clij.github.io/clij2-docs/reference_crop2D">CLIJ2_crop2D</a>(input, cropped, x, y, width, height);

// show result
Ext.CLIJ2_pull(cropped);

</pre>
<a href="image_1588706597099.png"><img src="image_1588706597099.png" width="224" alt="CLIJ2_crop2D_result12"/></a>

## Paste one image into another image
We create an empty image and make a collage by pasting the cropped image into it. 
We also transform the cropped image for visualisation purpose:

<pre class="highlight">

bit_depth = 8;
Ext.CLIJ2_create2D(collage, width * 2 + 6, height * 2 + 6, bit_depth);

// fill the background of the collage with white pixels
Ext.<a href="https://clij.github.io/clij2-docs/reference_set">CLIJ2_set</a>(collage, 255);

// flip and paste tiles
Ext.<a href="https://clij.github.io/clij2-docs/reference_paste2D">CLIJ2_paste2D</a>(cropped, collage, 2, 2);

Ext.<a href="https://clij.github.io/clij2-docs/reference_flip2D">CLIJ2_flip2D</a>(cropped, flipped, true, false);
Ext.<a href="https://clij.github.io/clij2-docs/reference_paste2D">CLIJ2_paste2D</a>(flipped, collage, width + 4, 2);

Ext.<a href="https://clij.github.io/clij2-docs/reference_flip2D">CLIJ2_flip2D</a>(cropped, flipped, true, true);
Ext.<a href="https://clij.github.io/clij2-docs/reference_paste2D">CLIJ2_paste2D</a>(flipped, collage, width + 4, height + 4);

Ext.<a href="https://clij.github.io/clij2-docs/reference_flip2D">CLIJ2_flip2D</a>(cropped, flipped, false, true);
Ext.<a href="https://clij.github.io/clij2-docs/reference_paste2D">CLIJ2_paste2D</a>(flipped, collage, 2, height + 4);

// show collage
Ext.CLIJ2_pull(collage);

</pre>
<a href="image_1588706597180.png"><img src="image_1588706597180.png" width="224" alt="CLIJ2_create2D_result13"/></a>

At the end of the macro, clean up:

<pre class="highlight">
Ext.CLIJ2_clear();

</pre>





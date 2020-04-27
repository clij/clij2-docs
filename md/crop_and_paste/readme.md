

# Cropping and pasting images
This macro shows how crop and paste images in the GPU

[Source](https://github.com/clij/clij2-docs/tree/master/src/main/macro/crop_and_paste.ijm)

Author: Robert Haase
        April 2020

<pre class="highlight">
// clean up first
run("Close All");

// Get test data
run("Blobs (25K)");
run("Invert LUT");
input = getTitle();

</pre>
<a href="image_1587652041130.png"><img src="image_1587652041130.png" width="224" alt="blobs.gif"/></a>

## Initialize GPU and push image to GPU memory

<pre class="highlight">
run("CLIJ2 Macro Extensions", "cl_device=");
Ext.CLIJ2_clear();

// push images to GPU
Ext.CLIJ2_push(input);

</pre>

## Crop out a part of the image

<pre class="highlight">
x = 10;
y = 10;
width = 75;
height = 75;
Ext.<a href="https://clij.github.io/clij2-docs/reference_crop2D">CLIJ2_crop2D</a>(input, cropped, x, y, width, height);

// show result
Ext.CLIJ2_pull(cropped);

</pre>
<a href="image_1587652041252.png"><img src="image_1587652041252.png" width="224" alt="CLIJ2_crop2D_result136"/></a>

## Paste the image into another image
We create an empty image and make a collage

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
<a href="image_1587652041298.png"><img src="image_1587652041298.png" width="224" alt="CLIJ2_create2D_result137"/></a>

Clean up be the end

<pre class="highlight">
Ext.CLIJ2_clear();

</pre>





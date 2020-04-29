/* 
# Cropping and pasting images
Author: Robert Haase
        April 2020


[Source](https://github.com/clij/clij2-docs/tree/master/src/main/macro/crop_and_paste.ijm)

This macro shows how crop and paste images in the GPU.
*/
// clean up first
run("Close All");

// Get test data
run("Blobs (25K)");
run("Invert LUT");
input = getTitle();

/*
## Initialize GPU and push image to GPU memory
*/
run("CLIJ2 Macro Extensions", "cl_device=");
Ext.CLIJ2_clear();

// push images to GPU
Ext.CLIJ2_push(input);

/*
## Crop out a part of the image
We now crop out a part of the image and show it.
*/
x = 10;
y = 10;
width = 75;
height = 75;
Ext.CLIJ2_crop2D(input, cropped, x, y, width, height);

// show result
Ext.CLIJ2_pull(cropped);

/*
## Paste the image into another image
We create an empty image and make a collage by pasting the cropped image in. We also transform the cropped image for visualisation purposes:
*/

bit_depth = 8;
Ext.CLIJ2_create2D(collage, width * 2 + 6, height * 2 + 6, bit_depth);

// fill the background of the collage with white pixels
Ext.CLIJ2_set(collage, 255);

// flip and paste tiles
Ext.CLIJ2_paste2D(cropped, collage, 2, 2);

Ext.CLIJ2_flip2D(cropped, flipped, true, false);
Ext.CLIJ2_paste2D(flipped, collage, width + 4, 2);

Ext.CLIJ2_flip2D(cropped, flipped, true, true);
Ext.CLIJ2_paste2D(flipped, collage, width + 4, height + 4);

Ext.CLIJ2_flip2D(cropped, flipped, false, true);
Ext.CLIJ2_paste2D(flipped, collage, 2, height + 4);

// show collage
Ext.CLIJ2_pull(collage);

/*
Clean up be the end
*/
Ext.CLIJ2_clear();


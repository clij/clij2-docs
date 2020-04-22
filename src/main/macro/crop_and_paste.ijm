/* 
# Cropping and pasting images
This macro shows how crop and paste images in the GPU

Author: Robert Haase
        April 2020
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
run("CLIJ Macro Extensions", "cl_device=");
Ext.CLIJ2_clear();

// push images to GPU
Ext.CLIJ2_push(input);

/*
## Crop out a part of the image
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
We create an empty image and make a collage
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


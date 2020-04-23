

# Cropping and pasting images
This macro shows how crop and paste images in the GPU

[Source](https://github.com/clij/clij2-docs/tree/master/src/main/macro/crop_and_paste.ijm)

Author: Robert Haase
        April 2020

```java
// clean up first
run("Close All");

// Get test data
run("Blobs (25K)");
run("Invert LUT");
input = getTitle();

```
<a href="image_1587652041130.png"><img src="image_1587652041130.png" width="250" alt="blobs.gif"/></a>

## Initialize GPU and push image to GPU memory

```java
run("CLIJ2 Macro Extensions", "cl_device=");
Ext.CLIJ2_clear();

// push images to GPU
Ext.CLIJ2_push(input);

```

## Crop out a part of the image

```java
x = 10;
y = 10;
width = 75;
height = 75;
Ext.CLIJ2_crop2D(input, cropped, x, y, width, height);

// show result
Ext.CLIJ2_pull(cropped);

```
<a href="image_1587652041252.png"><img src="image_1587652041252.png" width="250" alt="CLIJ2_crop2D_result136"/></a>

## Paste the image into another image
We create an empty image and make a collage

```java

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

```
<a href="image_1587652041298.png"><img src="image_1587652041298.png" width="250" alt="CLIJ2_create2D_result137"/></a>

Clean up be the end

```java
Ext.CLIJ2_clear();

```



```
```



# Voronoi diagrams

Authors: Robert Haase, Daniela Vorkel, March 2020

This macro shows how to create a Voronoi 
diagram out of a binary image in the GPU.


## Get test data

```java
run("Blobs (25K)");
// open("C:/structure/data/blobs.gif");
input = getTitle();


```
<a href="image_1588707837849.png"><img src="image_1588707837849.png" width="250" alt="blobs.gif"/></a>

## Initialize GPU
and push image data to GPU memory:

```java
run("CLIJ2 Macro Extensions", "cl_device=");
Ext.CLIJ2_clear();

// push data to GPU
Ext.CLIJ2_push(input);

// clean up ImageJ
run("Close All");

```

## Create a binary mask and draw the Voronoi diagram 
First, apply Otsu's thresholding method to obtain a 
binary mask image, then draw the Voronoi diagram.


```java
Ext.CLIJ2_thresholdOtsu(input, mask);

// apply voronoi
Ext.CLIJ2_voronoiOctagon(mask, voronoi_diagram);

// show result
Ext.CLIJ2_pullBinary(mask);
Ext.CLIJ2_pullBinary(voronoi_diagram);

```
<a href="image_1588707838158.png"><img src="image_1588707838158.png" width="250" alt="CLIJ2_thresholdOtsu_result256"/></a>
<a href="image_1588707838193.png"><img src="image_1588707838193.png" width="250" alt="CLIJ2_voronoiOctagon_result257"/></a>

At the end of the macro, clean up:

```java
Ext.CLIJ2_clear();

```



```
```



# CLIJ example macro: voronoi.ijm

This macro shows how to apply an get a
voronoi image of a binary image in the GPU.

Author: Robert Haase
         March 2020


## Get test data

```java
run("Blobs (25K)");
//open("C:/structure/data/blobs.gif");
input = getTitle();


```
<a href="image_1587212624812.png"><img src="image_1587212624812.png" width="250" alt="blobs.gif"/></a>

## Initialize GPU
 and push image data to GPU memory

```java
run("CLIJ2 Macro Extensions", "cl_device=");
Ext.CLIJ2_clear();

// push data to GPU
Ext.CLIJ2_push(input);

// cleanup ImageJ
run("Close All");

```

## Create a mask using a threshold algorithm and draw the Voronoi map

```java
Ext.<a href="https://clij.github.io/clij2-docs/reference_thresholdOtsu">CLIJ2_thresholdOtsu</a>(input, mask);

// voronoi
Ext.<a href="https://clij.github.io/clij2-docs/reference_voronoiOctagon">CLIJ2_voronoiOctagon</a>(mask, voronoi_diagram);


// show result
Ext.CLIJ2_pullBinary(mask);
Ext.CLIJ2_pullBinary(voronoi_diagram);

```
<a href="image_1587212628710.png"><img src="image_1587212628710.png" width="250" alt="CLIJ2_thresholdOtsu_result28"/></a>
<a href="image_1587212628744.png"><img src="image_1587212628744.png" width="250" alt="CLIJ2_voronoiOctagon_result29"/></a>

Clean up by the end

```java
Ext.CLIJ2_clear();

```



```
```

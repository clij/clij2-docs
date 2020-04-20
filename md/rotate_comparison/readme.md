

# CLIJ example macro: rotate_comparison_IJ_CLIJ.ijm

This macro shows how stacks can be rotated in the GPU
and how different results are between CLIJ and ImageJ.

Author: Robert Haase
July 2019

## Get test data

```java
run("Close All");


run("Blobs (25K)");
run("Invert LUT");

input = getTitle();


```
<a href="image_1587213130843.png"><img src="image_1587213130843.png" width="250" alt="blobs.gif"/></a>

## Initialize GPU and push image data to GPU memory

```java
run("CLIJ Macro Extensions", "cl_device=1070");
Ext.CLIJ2_clear();

// push data to GPU
Ext.CLIJ2_push(input);

```

## Rotate image on CPU

```java
run("Duplicate...", " ");
run("Rotate... ", "angle=45 grid=1 interpolation=Bilinear");
rotated_cpu = getTitle();

```
<a href="image_1587213134619.png"><img src="image_1587213134619.png" width="250" alt="blobs-1.gif"/></a>

## Rotate image on GPU

```java
Ext.<a href="https://clij.github.io/clij2-docs/reference_affineTransform2D">CLIJ2_affineTransform2D</a>(input, rotated_gpu, "-center rotate=45 center");


// show results
Ext.CLIJ2_pull(rotated_gpu);


```
<a href="image_1587213134682.png"><img src="image_1587213134682.png" width="250" alt="CLIJ2_affineTransform2D_result36"/></a>

## Calculate difference image between CPU and GPU

```java
imageCalculator("Subtract create 32-bit", rotated_cpu, rotated_gpu);

```
<a href="image_1587213136743.png"><img src="image_1587213136743.png" width="250" alt="Result of blobs-1.gif"/></a>

Clean up by the end

```java
Ext.CLIJ2_clear();
```



```
```

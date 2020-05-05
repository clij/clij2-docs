

# Comparing image rotation: ImageJ vs CLIJ
Authors: Robert Haase, Daniela Vorkel, July 2019

This macro shows how to rotate stacks in the GPU,
and how different the results are when using CLIJ or ImageJ.


## Get test data

```java
run("Close All");


run("Blobs (25K)");
run("Invert LUT");

input = getTitle();


```
<a href="image_1588707484916.png"><img src="image_1588707484916.png" width="250" alt="blobs.gif"/></a>

## Initialize GPU and push image data to GPU memory

```java
run("CLIJ Macro Extensions", "cl_device=1070");
Ext.CLIJ2_clear();

// push data to GPU
Ext.CLIJ2_push(input);

```

## Rotate image in CPU

```java
run("Duplicate...", " ");
run("Rotate... ", "angle=45 grid=1 interpolation=Bilinear");
rotated_cpu = getTitle();

```
<a href="image_1588707485057.png"><img src="image_1588707485057.png" width="250" alt="blobs-1.gif"/></a>

## Rotate image in GPU

```java
Ext.CLIJ2_affineTransform2D(input, rotated_gpu, "-center rotate=45 center");

// show results
Ext.CLIJ2_pull(rotated_gpu);


```
<a href="image_1588707485131.png"><img src="image_1588707485131.png" width="250" alt="CLIJ2_affineTransform2D_result118"/></a>

## Calculate the difference of images rotated in CPU and GPU

```java
imageCalculator("Subtract create 32-bit", rotated_cpu, rotated_gpu);

```
<a href="image_1588707485187.png"><img src="image_1588707485187.png" width="250" alt="Result of blobs-1.gif"/></a>

At the end of the macro, clean up:

```java
Ext.CLIJ2_clear();
```



```
```

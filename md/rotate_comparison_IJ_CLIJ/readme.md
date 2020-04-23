

# Rotation comparison ImageJ versus CLIJ
Author: Robert Haase
July 2019


This macro shows how stacks can be rotated in the GPU
and how different results are between CLIJ and ImageJ.


## Get test data

```java
run("Close All");


run("Blobs (25K)");
run("Invert LUT");

input = getTitle();


```
<a href="image_1587653828332.png"><img src="image_1587653828332.png" width="250" alt="blobs.gif"/></a>

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
<a href="image_1587653828457.png"><img src="image_1587653828457.png" width="250" alt="blobs-1.gif"/></a>

## Rotate image on GPU

```java
Ext.CLIJ2_affineTransform2D(input, rotated_gpu, "-center rotate=45 center");

// show results
Ext.CLIJ2_pull(rotated_gpu);


```
<a href="image_1587653828521.png"><img src="image_1587653828521.png" width="250" alt="CLIJ2_affineTransform2D_result27"/></a>

## Calculate difference image between CPU and GPU

```java
imageCalculator("Subtract create 32-bit", rotated_cpu, rotated_gpu);

```
<a href="image_1587653828620.png"><img src="image_1587653828620.png" width="250" alt="Result of blobs-1.gif"/></a>

Clean up by the end

```java
Ext.CLIJ2_clear();
```



```
```

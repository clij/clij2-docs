

# Gaussian blur
Author: Robert Haase, Daniela Vorkel, April 2020

[Source](https://github.com/clij/clij2-docs/tree/master/src/main/macro/blur.ijm)

This macro shows how to blur an image in the GPU.

First, we get test data:

```java
run("Close All");

run("Blobs (25K)");
run("Invert LUT");
input = getTitle();
```
<a href="image_1588706434257.png"><img src="image_1588706434257.png" width="250" alt="blobs.gif"/></a>

## Initialize GPU
Push image data to GPU memory:

```java
run("CLIJ2 Macro Extensions", "cl_device=");
Ext.CLIJ2_clear();

// push images to GPU
Ext.CLIJ2_push(input);

// clean up ImageJ
run("Close All");
```

## Apply a Gaussian blur filter in GPU
We apply a filter to an image by specifying the input image, the output image and other parameters:

```java
Ext.CLIJ2_gaussianBlur3D(input, blurred, 5, 5, 1);

// get results back from GPU
Ext.CLIJ2_pull(blurred);
```
<a href="image_1588706434451.png"><img src="image_1588706434451.png" width="250" alt="CLIJ2_gaussianBlur3D_result11"/></a>

Note: In contrast to CLIJ, the variable `blurred` contains the name of the output image and does not need to get specified. 
CLIJ2 automatically names images, as shown with the `print();` statement:

```java
print(blurred);
```
<pre>
> CLIJ2_gaussianBlur3D_result11
</pre>

If you don't like the image names created by CLIJ2, just rename them as you wish before calling the filter function.

## Clean up GPU
At the end of the macro, clean up GPU memory:

```java
Ext.CLIJ2_clear();
```



```
```

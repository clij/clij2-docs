

# Binary image operations
Authors: Robert Haase, Daniela Vorkel, April 2020

[Source](https://github.com/clij/clij2-docs/tree/master/src/main/macro/binary_processing.ijm)

This macro shows how to deal with operations on binary images, e.g. 
thresholding, dilation, erosion, fill holes, in the GPU.

All demonstrated operations work in 2D and 3D. For demonstration 
purpose, we use a 2D example.


```java
// clean up first
run("Close All");

```

## Get test data

```java
run("Embryos (42K)");
run("8-bit");
makeRectangle(714, 14, 768, 394);
run("Crop", " ");
input = getTitle();

```
<a href="image_1588706394529.png"><img src="image_1588706394529.png" width="250" alt="embryos.jpg"/></a>

Initialize GPU and push image to GPU memory:

```java
run("CLIJ Macro Extensions", "cl_device=");
Ext.CLIJ2_clear();

// push data to GPU
Ext.CLIJ2_push(input);


```

## Thresholding
We create a binary mask image with white objects on black background, using the Otsu's 
tresholding method. As the image has a bright background, we need to invert it first.

```java
Ext.CLIJ2_subtractImageFromScalar(input, inverted, 255);

// apply threshold method
Ext.CLIJ2_thresholdOtsu(inverted, thresholded);

// show thresholding result
Ext.CLIJ2_pull(thresholded);

```
<a href="image_1588706395030.png"><img src="image_1588706395030.png" width="250" alt="CLIJ2_thresholdOtsu_result4"/></a>

## Binary opening using erosion and dilation
First, we apply binary opening: it consists of binary erosion, followed by binary dilation.
By hand, we apply each step twice to obtain two iterations.


```java
Ext.CLIJ2_erodeBox(thresholded, temp);
Ext.CLIJ2_erodeBox(temp, intermediate_result);

// show intermediate result
Ext.CLIJ2_pull(intermediate_result);
```
<a href="image_1588706395111.png"><img src="image_1588706395111.png" width="250" alt="CLIJ2_erodeBox_result6"/></a>


```java
Ext.CLIJ2_dilateBox(intermediate_result, temp);
Ext.CLIJ2_dilateBox(temp, opening_result);

// show result
Ext.CLIJ2_pull(opening_result);

```
<a href="image_1588706395194.png"><img src="image_1588706395194.png" width="250" alt="CLIJ2_dilateBox_result7"/></a>

## Binary closing using dilation and erosion
Given the number of dilation/erosion steps we want to apply, we can call a direct method, too. 


```java
number_of_iterations = 2;
Ext.CLIJ2_closingBox(thresholded, closing_result, number_of_iterations);
// show result
Ext.CLIJ2_pull(closing_result);

```
<a href="image_1588706395262.png"><img src="image_1588706395262.png" width="250" alt="CLIJ2_closingBox_result8"/></a>

## Fill holes
It is also possible to fill holes:

```java
Ext.CLIJ2_binaryFillHoles(thresholded, holes_filled);
// show result
Ext.CLIJ2_pullBinary(holes_filled);

```
<a href="image_1588706395509.png"><img src="image_1588706395509.png" width="250" alt="CLIJ2_binaryFillHoles_result9"/></a>

## Edge detection
We can retrieve an edge-detected image like this:

```java
Ext.CLIJ2_binaryEdgeDetection(thresholded, edges);
// show result
Ext.CLIJ2_pullBinary(edges);

```
<a href="image_1588706395598.png"><img src="image_1588706395598.png" width="250" alt="CLIJ2_binaryEdgeDetection_result10"/></a>

Finally, clean up:

```java
Ext.CLIJ2_clear();

```



```
```

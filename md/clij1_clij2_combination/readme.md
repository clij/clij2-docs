

# Combining CLIJ and CLIJ2 
Author: Robert Haase
        February 2020

[Source](https://github.com/clij/clij2-docs/tree/master/src/main/macro/clij1_clij2_combination.ijm)


This macro shows how to combine CLIJ1 and CLIJ2

```java
// clean up first 
run("Close All"); 
 
// Get test data 
run("Blobs (25K)"); 
run("8-bit");
rename("original");
getDimensions(width, height, channels, slices, frames)
original = getTitle();

newImage("background", "16-bit ramp", width, height, slices);
 background = getTitle();
```
<a href="image_1587651657700.png"><img src="image_1587651657700.png" width="250" alt="original"/></a>
<a href="image_1587651657761.png"><img src="image_1587651657761.png" width="250" alt="background"/></a>

## Initialize GPU and push image data to GPU memory

```java
run("CLIJ2 Macro Extensions", "cl_device="); 
Ext.CLIJ2_clear(); 
 
// push images to GPU using CLIJ2
Ext.CLIJ2_push(original);
// push images to GPU using CLIJ
Ext.CLIJ_push(background);

// cleanup imagej 
run("Close All"); 

```

Create output image with 32 bits using CLIJ

```java
originalWithBackground = "originalWithBackground";
Ext.CLIJ_create2D(originalWithBackground, width, height, 32);

```

add images using CLIJ2

```java
 Ext.CLIJ2_addImagesWeighted(original, background, originalWithBackground, 1, 0.01);
 
// show result  using CLIJ2
Ext.CLIJ2_pull(originalWithBackground); 
run("Invert LUT"); 

```
<a href="image_1587651657842.png"><img src="image_1587651657842.png" width="250" alt="originalWithBackground"/></a>

Clean up finally using CLIJ

```java
Ext.CLIJ_clear();

```



```
```

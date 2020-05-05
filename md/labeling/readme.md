

# Labelling
Authors: Robert Haase, Daniela Vorkel, April 2020

[Source](https://github.com/clij/clij2-docs/tree/master/src/main/macro/labeling.ijm)

This macro shows how to apply an automated 
threshold method and how to label connected components
on an image using GPU.




```java
// get test data
run("Blobs (25K)");
input = getTitle();
```
<a href="image_1588706840496.png"><img src="image_1588706840496.png" width="250" alt="blobs.gif"/></a>

## Initialize GPU
First we initialize the GPU and push image data to the GPU memory:

```java
run("CLIJ2 Macro Extensions", "cl_device=");
Ext.CLIJ2_clear();

// push data to GPU
Ext.CLIJ2_push(input);

// clean up ImageJ
run("Close All");
```

## Create a mask using a fixed threshold

```java
Ext.CLIJ2_automaticThreshold(input, mask, "Otsu");
Ext.CLIJ2_pull(mask);
```
<a href="image_1588706840667.png"><img src="image_1588706840667.png" width="250" alt="CLIJ2_automaticThreshold_result37"/></a>

## Label connected components

```java
Ext.CLIJ2_connectedComponentsLabelingBox(mask, labelmap);

Ext.CLIJ2_pull(labelmap);
run("glasbey on dark");

```
<a href="image_1588706840874.png"><img src="image_1588706840874.png" width="250" alt="CLIJ2_connectedComponentsLabelingBox_result38"/></a>

## Remove labels touching image borders

```java
Ext.CLIJ2_excludeLabelsOnEdges(labelmap, labels_not_touching_image_borders);
Ext.CLIJ2_pull(labels_not_touching_image_borders);
run("glasbey on dark");

```
<a href="image_1588706840965.png"><img src="image_1588706840965.png" width="250" alt="CLIJ2_excludeLabelsOnEdges_result39"/></a>

At the end of the macro, clean up:

```java

Ext.CLIJ2_clear();



```



```
```

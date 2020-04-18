

# CLIJ example macro: measure_overlap.ijm

This macro shows how to measure the overlap 
of two binary images in the GPU.

Author: Robert Haase
July 2019


Get test data

```java
run("Blobs (25K)");
//open("C:/structure/data/blobs.gif");
input = getTitle();

```
<a href="image_1587211571604.png"><img src="image_1587211571604.png" width="250" alt="blobs.gif"/></a>

## Init GPU
 and push image data to GPU memory

```java
run("CLIJ2 Macro Extensions", "cl_device=");
Ext.CLIJ2_clear();

// push data to GPU
Ext.CLIJ2_push(input);

// cleanup ImageJ
run("Close All");


```

## Create a mask using two different threshold methods

```java

Ext.CLIJ2_automaticThreshold(input, mask1, "Otsu");
Ext.CLIJ2_automaticThreshold(input, mask2, "MinError");

Ext.CLIJ2_pullBinary(mask1);
Ext.CLIJ2_pullBinary(mask2);

```
<a href="image_1587211571795.png"><img src="image_1587211571795.png" width="250" alt="CLIJ2_automaticThreshold_result15"/></a>
<a href="image_1587211571830.png"><img src="image_1587211571830.png" width="250" alt="CLIJ2_automaticThreshold_result16"/></a>

## measure overlap between the two masks

```java
Ext.CLIJ2_getJaccardIndex(mask1, mask2, jaccardIndex);
Ext.CLIJ2_getSorensenDiceCoefficient(mask1, mask2, diceIndex);

// output result
IJ.log("Overlap (Jaccard index): " + (jaccardIndex*100) + "%");
IJ.log("Overlap (Sorensen / Dice coefficient): " + (diceIndex*100) + "%");


```
<pre>
> Overlap (Jaccard index): 81.9294%
> Overlap (Sorensen / Dice coefficient): 90.0672%
</pre>

cleanup GPU memory

```java
Ext.CLIJ2_clear();
```



```
```

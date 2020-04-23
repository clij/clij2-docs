

# Image statistics
Author: Robert Haase
        April 2020

[Source](https://github.com/clij/clij2-docs/tree/master/src/main/macro/image_statistics.ijm)
        

This macro shows how to determine basic image statistics

```java


// Get test data
run("Blobs (25K)");
run("Invert LUT");
input = getTitle();

```
<a href="image_1587652419772.png"><img src="image_1587652419772.png" width="250" alt="blobs-2.gif"/></a>

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

## Image properties
In order to read out image size properties, we can get all of them by one call. 
CLIJ does not take pixel/voxel dimensions into account. There are not physical units in CLIJ.

```java
Ext.CLIJ2_getDimensions(input, width, height, depth);

print("Image width: " + width);
print("Image height: " + height);
print("Image depth: " + depth);
```
<pre>
> Image width: 256
> Image height: 254
> Image depth: 1
</pre>

## Image statistics
We can derive basic image statistics parameter by parameter.

```java
Ext.CLIJ2_getSumOfAllPixels(input, sum_of_all_pixels);
Ext.CLIJ2_getMinimumOfAllPixels(input, min_of_all_pixels);
Ext.CLIJ2_getMaximumOfAllPixels(input, max_of_all_pixels);
Ext.CLIJ2_getMeanOfAllPixels(input, mean_of_all_pixels);

print("Sum: " + sum_of_all_pixels);
print("Min: " + min_of_all_pixels);
print("Max: " + max_of_all_pixels);
print("Mean: " + mean_of_all_pixels);

```
<pre>
> Sum: 6714936
> Min: 8
> Max: 248
> Mean: 103.2686
</pre>

## Detailed statistics
More detailed statistics can be derived by using this method. Note: We hand over an empyy

```java

Ext.CLIJ2_statisticsOfImage(input);

```
<table>
<tr><th>Width</th><th>Height</th><th>IDENTIFIER</th><th>BOUNDING_BOX_X</th><th>BOUNDING_BOX_Y</th><th>BOUNDING_BOX_Z</th><th>BOUNDING_BOX_END_X</th><th>BOUNDING_BOX_END_Y</th><th>BOUNDING_BOX_END_Z</th><th>BOUNDING_BOX_WIDTH</th><th>BOUNDING_BOX_HEIGHT</th><th>BOUNDING_BOX_DEPTH</th><th>MINIMUM_INTENSITY</th><th>MAXIMUM_INTENSITY</th><th>MEAN_INTENSITY</th><th>SUM_INTENSITY</th><th>STANDARD_DEVIATION_INTENSITY</th><th>PIXEL_COUNT</th><th>SUM_INTENSITY_TIMES_X</th><th>SUM_INTENSITY_TIMES_Y</th><th>SUM_INTENSITY_TIMES_Z</th><th>MASS_CENTER_X</th><th>MASS_CENTER_Y</th><th>MASS_CENTER_Z</th><th>SUM_X</th><th>SUM_Y</th><th>SUM_Z</th><th>CENTROID_X</th><th>CENTROID_Y</th><th>CENTROID_Z</th></tr>
<tr><td>256</td><td>254</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td></tr>
<tr><td>256</td><td>254</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td></tr>
<tr><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>1</td><td>1</td><td>0</td><td>0</td><td>NaN</td><td>0</td><td>NaN</td><td>0</td><td>0</td><td>0</td><td>0</td><td>NaN</td><td>NaN</td><td>NaN</td><td>0</td><td>0</td><td>0</td><td>NaN</td><td>NaN</td><td>NaN</td></tr>
</table>


Cleanup by the end.





```
```

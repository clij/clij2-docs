

# Image statistics
Authors: Robert Haase, Daniela Vorkel, April 2020

[Source](https://github.com/clij/clij2-docs/tree/master/src/main/macro/image_statistics.ijm)
        

This macro shows how to retrieve basic statistics from images.

```java


// get test data
run("Blobs (25K)");
run("Invert LUT");
input = getTitle();

```
<a href="image_1588706800630.png"><img src="image_1588706800630.png" width="250" alt="blobs.gif"/></a>

## Initialize GPU
 and push image data to GPU memory:

```java
run("CLIJ2 Macro Extensions", "cl_device=");
Ext.CLIJ2_clear();

// push data to GPU
Ext.CLIJ2_push(input);

// clean up ImageJ
run("Close All");

```

## Image properties
In order to read out properties like image size, we get all dimensions by one call. 
CLIJ does not take pixel or voxel into account, because there are no physical units defined in CLIJ.

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
We can derive basic statistics from images, parameter by parameter.

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
More detailed statistics can be done by this method. Note: an empty table will be handed over.

```java

Ext.CLIJ2_statisticsOfImage(input);

```
<table>
<tr><th>IDENTIFIER</th><th>BOUNDING_BOX_X</th><th>BOUNDING_BOX_Y</th><th>BOUNDING_BOX_Z</th><th>BOUNDING_BOX_END_X</th><th>BOUNDING_BOX_END_Y</th><th>BOUNDING_BOX_END_Z</th><th>BOUNDING_BOX_WIDTH</th><th>BOUNDING_BOX_HEIGHT</th><th>BOUNDING_BOX_DEPTH</th><th>MINIMUM_INTENSITY</th><th>MAXIMUM_INTENSITY</th><th>MEAN_INTENSITY</th><th>SUM_INTENSITY</th><th>STANDARD_DEVIATION_INTENSITY</th><th>PIXEL_COUNT</th><th>SUM_INTENSITY_TIMES_X</th><th>SUM_INTENSITY_TIMES_Y</th><th>SUM_INTENSITY_TIMES_Z</th><th>MASS_CENTER_X</th><th>MASS_CENTER_Y</th><th>MASS_CENTER_Z</th><th>SUM_X</th><th>SUM_Y</th><th>SUM_Z</th><th>CENTROID_X</th><th>CENTROID_Y</th><th>CENTROID_Z</th><th>SUM_DISTANCE_TO_MASS_CENTER</th><th>MEAN_DISTANCE_TO_MASS_CENTER</th><th>MAX_DISTANCE_TO_MASS_CENTER</th><th>MAX_MEAN_DISTANCE_TO_MASS_CENTER_RATIO</th><th>SUM_DISTANCE_TO_CENTROID</th><th>MEAN_DISTANCE_TO_CENTROID</th><th>MAX_DISTANCE_TO_CENTROID</th><th>MAX_MEAN_DISTANCE_TO_CENTROID_RATIO</th></tr>
<tr><td>0</td><td>0</td><td>0</td><td>0</td><td>255</td><td>253</td><td>0</td><td>256</td><td>254</td><td>1</td><td>8</td><td>248</td><td>103.269</td><td>6714936</td><td>71.057</td><td>65024</td><td>869461976</td><td>845974672</td><td>0</td><td>129.482</td><td>125.984</td><td>0</td><td>8290560</td><td>8225536</td><td>0</td><td>127.500</td><td>126.500</td><td>0</td><td>6344833.765</td><td>97.577</td><td>181.380</td><td>1.859</td><td>6343893.233</td><td>97.562</td><td>179.607</td><td>1.841</td></tr>
</table>


At the end of the macro, clean up.





```
```

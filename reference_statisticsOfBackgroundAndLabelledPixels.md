## statisticsOfBackgroundAndLabelledPixels
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/>

Determines bounding box, area (in pixels/voxels), min, max and mean intensity 
 of background and labelled objects in a label map and corresponding pixels in the original image.

Instead of a label map, you can also use a binary image as a binary image is a label map with just one label.

This method is executed on the CPU and not on the GPU/OpenCL device.

Category: [Measurements](https://clij.github.io/clij2-docs/reference__measurement)

### statisticsOfBackgroundAndLabelledPixels often follows after
* <a href="reference_pushArray">pushArray</a> (2)
* <a href="reference_copySlice">copySlice</a> (3)


### Usage in ImageJ macro
```
Ext.CLIJ2_statisticsOfBackgroundAndLabelledPixels(Image input, Image labelmap);
```


### Usage in object oriented programming languages



<details>

<summary>
Java
</summary>
<pre class="highlight">// init CLIJ and GPU
import net.haesleinhuepf.clij2.CLIJ2;
import net.haesleinhuepf.clij.clearcl.ClearCLBuffer;
CLIJ2 clij2 = CLIJ2.getInstance();

// get input parameters
ClearCLBuffer input = clij2.push(inputImagePlus);
ClearCLBuffer labelmap = clij2.push(labelmapImagePlus);
</pre>

<pre class="highlight">
// Execute operation on GPU
double[][] resultStatisticsOfBackgroundAndLabelledPixels = clij2.statisticsOfBackgroundAndLabelledPixels(input, labelmap);
</pre>

<pre class="highlight">
// show result
System.out.println(resultStatisticsOfBackgroundAndLabelledPixels);

// cleanup memory on GPU
clij2.release(input);
clij2.release(labelmap);
</pre>

</details>



<details>

<summary>
Matlab
</summary>
<pre class="highlight">% init CLIJ and GPU
clij2 = init_clatlab();

% get input parameters
input = clij2.pushMat(input_matrix);
labelmap = clij2.pushMat(labelmap_matrix);
</pre>

<pre class="highlight">
% Execute operation on GPU
double[][] resultStatisticsOfBackgroundAndLabelledPixels = clij2.statisticsOfBackgroundAndLabelledPixels(input, labelmap);
</pre>

<pre class="highlight">
% show result
System.out.println(resultStatisticsOfBackgroundAndLabelledPixels);

% cleanup memory on GPU
clij2.release(input);
clij2.release(labelmap);
</pre>

</details>



<details>

<summary>
Icy JavaScript
</summary>
<pre class="highlight">// init CLIJ and GPU
importClass(net.haesleinhuepf.clicy.CLICY);
importClass(Packages.icy.main.Icy);

clij2 = CLICY.getInstance();

// get input parameters
input_sequence = getSequence();
input = clij2.pushSequence(input_sequence);
labelmap_sequence = getSequence();
labelmap = clij2.pushSequence(labelmap_sequence);
</pre>

<pre class="highlight">
// Execute operation on GPU
double[][] resultStatisticsOfBackgroundAndLabelledPixels = clij2.statisticsOfBackgroundAndLabelledPixels(input, labelmap);
</pre>

<pre class="highlight">
// show result
System.out.println(resultStatisticsOfBackgroundAndLabelledPixels);

// cleanup memory on GPU
clij2.release(input);
clij2.release(labelmap);
</pre>

</details>





### Example notebooks
<a href="https://clij.github.io/clij2-docs/md/mean_of_touching_neighbors"><img src="images/language_macro.png" height="20"/></a> [mean_of_touching_neighbors](https://clij.github.io/clij2-docs/md/mean_of_touching_neighbors)  
<a href="https://clij.github.io/clij2-docs/md/neighbors_of_neighbors"><img src="images/language_macro.png" height="20"/></a> [neighbors_of_neighbors](https://clij.github.io/clij2-docs/md/neighbors_of_neighbors)  
<a href="https://clij.github.io/clij2-docs/md/superpixel_segmentation"><img src="images/language_macro.png" height="20"/></a> [superpixel_segmentation](https://clij.github.io/clij2-docs/md/superpixel_segmentation)  




### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/excludeLabelsWithinRange.ijm"><img src="images/language_macro.png" height="20"/></a> [excludeLabelsWithinRange.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/excludeLabelsWithinRange.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/filter_label_maps.ijm"><img src="images/language_macro.png" height="20"/></a> [filter_label_maps.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/filter_label_maps.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/mean_of_touching_neighbors.ijm"><img src="images/language_macro.png" height="20"/></a> [mean_of_touching_neighbors.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/mean_of_touching_neighbors.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/neighbors_of_neighbors.ijm"><img src="images/language_macro.png" height="20"/></a> [neighbors_of_neighbors.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/neighbors_of_neighbors.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/superpixel_segmentation.ijm"><img src="images/language_macro.png" height="20"/></a> [superpixel_segmentation.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/superpixel_segmentation.ijm)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

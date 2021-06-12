## statisticsOfLabelledPixels
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_cle_logo.png"/>

Determines bounding box, area (in pixels/voxels), min, max and mean intensity 
 of labelled objects in a label map and corresponding pixels in the original image. 

Instead of a label map, you can also use a binary image as a binary image is a label map with just one label.

This method is executed on the CPU and not on the GPU/OpenCL device.

Category: [Measurements](https://clij.github.io/clij2-docs/reference__measurement)

Availability: Available in Fiji by activating the update sites clij and clij2.
This function is part of clij2_-2.5.0.1.jar.

### statisticsOfLabelledPixels often follows after
* <a href="reference_labelVoronoiOctagon">labelVoronoiOctagon</a> (1)
* <a href="reference_excludeLabelsOnEdges">excludeLabelsOnEdges</a> (1)
* <a href="reference_connectedComponentsLabeling">connectedComponentsLabeling</a> (1)
* <a href="reference_pushArray">pushArray</a> (1)
* <a href="reference_copySlice">copySlice</a> (1)
* <a href="reference_maximum3DSphere">maximum3DSphere</a> (1)
* <a href="reference_onlyzeroOverwriteMaximumBox">onlyzeroOverwriteMaximumBox</a> (1)


### Usage in ImageJ macro
```
Ext.CLIJ2_statisticsOfLabelledPixels(Image input, Image labelmap);
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
double[][] resultStatisticsOfLabelledPixels = clij2.statisticsOfLabelledPixels(input, labelmap);
</pre>

<pre class="highlight">
// show result
System.out.println(resultStatisticsOfLabelledPixels);

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
double[][] resultStatisticsOfLabelledPixels = clij2.statisticsOfLabelledPixels(input, labelmap);
</pre>

<pre class="highlight">
% show result
System.out.println(resultStatisticsOfLabelledPixels);

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
double[][] resultStatisticsOfLabelledPixels = clij2.statisticsOfLabelledPixels(input, labelmap);
</pre>

<pre class="highlight">
// show result
System.out.println(resultStatisticsOfLabelledPixels);

// cleanup memory on GPU
clij2.release(input);
clij2.release(labelmap);
</pre>

</details>



<details>

<summary>
clEsperanto Python (experimental)
</summary>
<pre class="highlight">import pyclesperanto_prototype as cle

cle.statistics_of_labelled_pixels(input, labelmap)

</pre>



</details>





### Example notebooks
<a href="https://clij.github.io/clij2-docs/md/measure_statistics"><img src="images/language_macro.png" height="20"/></a> [measure_statistics](https://clij.github.io/clij2-docs/md/measure_statistics)  
<a href="https://clij.github.io/clij2-docs/md/outlines_numbers_overlay"><img src="images/language_macro.png" height="20"/></a> [outlines_numbers_overlay](https://clij.github.io/clij2-docs/md/outlines_numbers_overlay)  
<a href="https://clij.github.io/clij2-docs/md/spots_pointlists_matrices_tables"><img src="images/language_macro.png" height="20"/></a> [spots_pointlists_matrices_tables](https://clij.github.io/clij2-docs/md/spots_pointlists_matrices_tables)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/segmentation/bead_segmentation.ipynb"><img src="images/language_python.png" height="20"/></a> [bead_segmentation.ipynb](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/segmentation/bead_segmentation.ipynb)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/benchmarks/statistics_of_labeled_pixels.ipynb"><img src="images/language_python.png" height="20"/></a> [statistics_of_labeled_pixels.ipynb](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/benchmarks/statistics_of_labeled_pixels.ipynb)  




### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/measure_statistics.ijm"><img src="images/language_macro.png" height="20"/></a> [measure_statistics.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/measure_statistics.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/outlines_numbers_overlay.ijm"><img src="images/language_macro.png" height="20"/></a> [outlines_numbers_overlay.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/outlines_numbers_overlay.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/particle_analysis.ijm"><img src="images/language_macro.png" height="20"/></a> [particle_analysis.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/particle_analysis.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/spots_pointlists_matrices_tables.ijm"><img src="images/language_macro.png" height="20"/></a> [spots_pointlists_matrices_tables.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/spots_pointlists_matrices_tables.ijm)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

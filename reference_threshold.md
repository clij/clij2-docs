## threshold
<img src="images/mini_clij1_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_empty_logo.png"/>

Computes a binary image with pixel values 0 and 1. 

All pixel values x of a given input image with 
value larger or equal to a given threshold t will be set to 1.

f(x,t) = (1 if (x >= t); (0 otherwise))

This plugin is comparable to setting a raw threshold in ImageJ and using the 'Convert to Mask' menu.

Categories: [Segmentation](https://clij.github.io/clij2-docs/reference__segmentation), [Binary](https://clij.github.io/clij2-docs/reference__binary)

### threshold often follows after
* <a href="reference_gaussianBlur3D">gaussianBlur3D</a> (4)
* <a href="reference_mean2DBox">mean2DBox</a> (1)


### threshold is often followed by
* <a href="reference_binaryFillHoles">binaryFillHoles</a> (1)
* <a href="reference_centerOfMass">centerOfMass</a> (2)
* <a href="reference_mask">mask</a> (4)


### Usage in ImageJ macro
```
Ext.CLIJ2_threshold(Image source, Image destination, Number threshold);
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
ClearCLBuffer source = clij2.push(sourceImagePlus);
destination = clij2.create(source);
float threshold = 1.0;
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.threshold(source, destination, threshold);
</pre>

<pre class="highlight">
// show result
destinationImagePlus = clij2.pull(destination);
destinationImagePlus.show();

// cleanup memory on GPU
clij2.release(source);
clij2.release(destination);
</pre>

</details>



<details>

<summary>
Matlab
</summary>
<pre class="highlight">% init CLIJ and GPU
clij2 = init_clatlab();

% get input parameters
source = clij2.pushMat(source_matrix);
destination = clij2.create(source);
threshold = 1.0;
</pre>

<pre class="highlight">
% Execute operation on GPU
clij2.threshold(source, destination, threshold);
</pre>

<pre class="highlight">
% show result
destination = clij2.pullMat(destination)

% cleanup memory on GPU
clij2.release(source);
clij2.release(destination);
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
source_sequence = getSequence();
source = clij2.pushSequence(source_sequence);
destination = clij2.create(source);
threshold = 1.0;
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.threshold(source, destination, threshold);
</pre>

<pre class="highlight">
// show result
destination_sequence = clij2.pullSequence(destination)
Icy.addSequence(destination_sequence);
// cleanup memory on GPU
clij2.release(source);
clij2.release(destination);
</pre>

</details>





### Example notebooks
<a href="https://clij.github.io/clij2-docs/md/binary_processing"><img src="images/language_macro.png" height="20"/></a> [binary_processing](https://clij.github.io/clij2-docs/md/binary_processing)  
<a href="https://clij.github.io/clij2-docs/md/count_overlap_between_channels"><img src="images/language_macro.png" height="20"/></a> [count_overlap_between_channels](https://clij.github.io/clij2-docs/md/count_overlap_between_channels)  
<a href="https://clij.github.io/clij2-docs/md/labelmap_voronoi"><img src="images/language_macro.png" height="20"/></a> [labelmap_voronoi](https://clij.github.io/clij2-docs/md/labelmap_voronoi)  
<a href="https://clij.github.io/clij2-docs/md/mean_of_touching_neighbors"><img src="images/language_macro.png" height="20"/></a> [mean_of_touching_neighbors](https://clij.github.io/clij2-docs/md/mean_of_touching_neighbors)  
<a href="https://clij.github.io/clij2-docs/md/measure_statistics"><img src="images/language_macro.png" height="20"/></a> [measure_statistics](https://clij.github.io/clij2-docs/md/measure_statistics)  
<a href="https://clij.github.io/clij2-docs/md/tables"><img src="images/language_macro.png" height="20"/></a> [tables](https://clij.github.io/clij2-docs/md/tables)  
<a href="https://clij.github.io/clij2-docs/md/tribolium_morphometry"><img src="images/language_macro.png" height="20"/></a> [tribolium_morphometry](https://clij.github.io/clij2-docs/md/tribolium_morphometry)  
<a href="https://clij.github.io/clij2-docs/md/voronoi"><img src="images/language_macro.png" height="20"/></a> [voronoi](https://clij.github.io/clij2-docs/md/voronoi)  
<a href="https://clij.github.io/clij2-docs/md/working_with_rois"><img src="images/language_macro.png" height="20"/></a> [working_with_rois](https://clij.github.io/clij2-docs/md/working_with_rois)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/basics/count_blobs.ipynb"><img src="images/language_python.png" height="20"/></a> [count_blobs.ipynb](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/basics/count_blobs.ipynb)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/neighbors/quantitative_neighbor_maps.ipynb"><img src="images/language_python.png" height="20"/></a> [quantitative_neighbor_maps.ipynb](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/neighbors/quantitative_neighbor_maps.ipynb)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/segmentation/segmentation_2d_membranes.ipynb"><img src="images/language_python.png" height="20"/></a> [segmentation_2d_membranes.ipynb](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/segmentation/segmentation_2d_membranes.ipynb)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/segmentation/voronoi_otsu_labeling.ipynb"><img src="images/language_python.png" height="20"/></a> [voronoi_otsu_labeling.ipynb](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/segmentation/voronoi_otsu_labeling.ipynb)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/tissues/parametric_maps.ipynb"><img src="images/language_python.png" height="20"/></a> [parametric_maps.ipynb](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/tissues/parametric_maps.ipynb)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/benchmarks/threshold_otsu.ipynb"><img src="images/language_python.png" height="20"/></a> [threshold_otsu.ipynb](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/benchmarks/threshold_otsu.ipynb)  




### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/autoThreshold.ijm"><img src="images/language_macro.png" height="20"/></a> [autoThreshold.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/autoThreshold.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/benchmarkVoronoi.ijm"><img src="images/language_macro.png" height="20"/></a> [benchmarkVoronoi.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/benchmarkVoronoi.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/binary_processing.ijm"><img src="images/language_macro.png" height="20"/></a> [binary_processing.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/binary_processing.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/count_overlap_between_channels.ijm"><img src="images/language_macro.png" height="20"/></a> [count_overlap_between_channels.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/count_overlap_between_channels.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/create_object_outlines.ijm"><img src="images/language_macro.png" height="20"/></a> [create_object_outlines.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/create_object_outlines.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/distanceMap.ijm"><img src="images/language_macro.png" height="20"/></a> [distanceMap.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/distanceMap.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/distance_map.ijm"><img src="images/language_macro.png" height="20"/></a> [distance_map.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/distance_map.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/division_visualisation.ijm"><img src="images/language_macro.png" height="20"/></a> [division_visualisation.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/division_visualisation.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/getBoundingBox.ijm"><img src="images/language_macro.png" height="20"/></a> [getBoundingBox.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/getBoundingBox.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/jaccard_matrix.ijm"><img src="images/language_macro.png" height="20"/></a> [jaccard_matrix.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/jaccard_matrix.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/labelmap_voronoi.ijm"><img src="images/language_macro.png" height="20"/></a> [labelmap_voronoi.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/labelmap_voronoi.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/mean_of_touching_neighbors.ijm"><img src="images/language_macro.png" height="20"/></a> [mean_of_touching_neighbors.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/mean_of_touching_neighbors.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/measure_statistics.ijm"><img src="images/language_macro.png" height="20"/></a> [measure_statistics.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/measure_statistics.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/motionCorrection.ijm"><img src="images/language_macro.png" height="20"/></a> [motionCorrection.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/motionCorrection.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/motionCorrection_compare_stackreg.ijm"><img src="images/language_macro.png" height="20"/></a> [motionCorrection_compare_stackreg.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/motionCorrection_compare_stackreg.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/tables.ijm"><img src="images/language_macro.png" height="20"/></a> [tables.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/tables.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/thresholding.ijm"><img src="images/language_macro.png" height="20"/></a> [thresholding.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/thresholding.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/tribolium_morphometry.ijm"><img src="images/language_macro.png" height="20"/></a> [tribolium_morphometry.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/tribolium_morphometry.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/voronoi.ijm"><img src="images/language_macro.png" height="20"/></a> [voronoi.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/voronoi.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/working_with_rois.ijm"><img src="images/language_macro.png" height="20"/></a> [working_with_rois.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/working_with_rois.ijm)  
<a href="https://github.com/clij/clatlab/blob/master/src/main/matlab/simplePipeline.m"><img src="images/language_matlab.png" height="20"/></a> [simplePipeline.m](https://github.com/clij/clatlab/blob/master/src/main/matlab/simplePipeline.m)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/javascript/automaticThreshold.js"><img src="images/language_javascript.png" height="20"/></a> [automaticThreshold.js](https://github.com/clij/clij2-docs/blob/master/src/main/javascript/automaticThreshold.js)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/groovy/automaticThreshold.groovy"><img src="images/language_groovy.png" height="20"/></a> [automaticThreshold.groovy](https://github.com/clij/clij2-docs/blob/master/src/main/groovy/automaticThreshold.groovy)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/beanshell/automaticThreshold.bsh"><img src="images/language_beanshell.png" height="20"/></a> [automaticThreshold.bsh](https://github.com/clij/clij2-docs/blob/master/src/main/beanshell/automaticThreshold.bsh)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/jython/binaryProcessing.py"><img src="images/language_jython.png" height="20"/></a> [binaryProcessing.py](https://github.com/clij/clij2-docs/blob/master/src/main/jython/binaryProcessing.py)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/basics/count_blobs.py"><img src="images/language_python.png" height="20"/></a> [count_blobs.py](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/basics/count_blobs.py)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/napari_gui/napari_.py"><img src="images/language_python.png" height="20"/></a> [napari_.py](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/napari_gui/napari_.py)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/napari_gui/napari_magicgui.py"><img src="images/language_python.png" height="20"/></a> [napari_magicgui.py](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/napari_gui/napari_magicgui.py)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

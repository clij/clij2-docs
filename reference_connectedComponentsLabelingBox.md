## connectedComponentsLabelingBox
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_cle_logo.png"/>

Performs connected components analysis inspecting the box neighborhood of every pixel to a binary image and generates a label map.

Category: [Labels](https://clij.github.io/clij2-docs/reference__label)

### connectedComponentsLabelingBox often follows after
* <a href="reference_automaticThreshold">automaticThreshold</a> (1)
* <a href="reference_minimum2DBox">minimum2DBox</a> (1)
* <a href="reference_binaryNot">binaryNot</a> (1)
* <a href="reference_thresholdOtsu">thresholdOtsu</a> (2)


### connectedComponentsLabelingBox is often followed by
* <a href="reference_replaceIntensities">replaceIntensities</a> (2)
* <a href="reference_excludeLabelsOnEdges">excludeLabelsOnEdges</a> (1)
* <a href="reference_maximum2DBox">maximum2DBox</a> (1)
* <a href="reference_getMaximumOfAllPixels">getMaximumOfAllPixels</a> (1)


### Usage in ImageJ macro
```
Ext.CLIJ2_connectedComponentsLabelingBox(Image binary_input, Image labeling_destination);
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
ClearCLBuffer binary_input = clij2.push(binary_inputImagePlus);
labeling_destination = clij2.create(binary_input);
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.connectedComponentsLabelingBox(binary_input, labeling_destination);
</pre>

<pre class="highlight">
// show result
labeling_destinationImagePlus = clij2.pull(labeling_destination);
labeling_destinationImagePlus.show();

// cleanup memory on GPU
clij2.release(binary_input);
clij2.release(labeling_destination);
</pre>

</details>



<details>

<summary>
Matlab
</summary>
<pre class="highlight">% init CLIJ and GPU
clij2 = init_clatlab();

% get input parameters
binary_input = clij2.pushMat(binary_input_matrix);
labeling_destination = clij2.create(binary_input);
</pre>

<pre class="highlight">
% Execute operation on GPU
clij2.connectedComponentsLabelingBox(binary_input, labeling_destination);
</pre>

<pre class="highlight">
% show result
labeling_destination = clij2.pullMat(labeling_destination)

% cleanup memory on GPU
clij2.release(binary_input);
clij2.release(labeling_destination);
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
binary_input_sequence = getSequence();
binary_input = clij2.pushSequence(binary_input_sequence);
labeling_destination = clij2.create(binary_input);
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.connectedComponentsLabelingBox(binary_input, labeling_destination);
</pre>

<pre class="highlight">
// show result
labeling_destination_sequence = clij2.pullSequence(labeling_destination)
Icy.addSequence(labeling_destination_sequence);
// cleanup memory on GPU
clij2.release(binary_input);
clij2.release(labeling_destination);
</pre>

</details>



<details>

<summary>
clEsperanto Python (experimental)
</summary>
<pre class="highlight">import pyclesperanto_prototype as cle

cle.connected_components_labeling_box(binary_input, labeling_destination)

</pre>



</details>





### Example notebooks
<a href="https://clij.github.io/clij2-docs/md/labeling"><img src="images/language_macro.png" height="20"/></a> [labeling](https://clij.github.io/clij2-docs/md/labeling)  
<a href="https://clij.github.io/clij2-docs/md/labelmap_voronoi"><img src="images/language_macro.png" height="20"/></a> [labelmap_voronoi](https://clij.github.io/clij2-docs/md/labelmap_voronoi)  
<a href="https://clij.github.io/clij2-docs/md/mean_of_touching_neighbors"><img src="images/language_macro.png" height="20"/></a> [mean_of_touching_neighbors](https://clij.github.io/clij2-docs/md/mean_of_touching_neighbors)  
<a href="https://clij.github.io/clij2-docs/md/working_with_rois"><img src="images/language_macro.png" height="20"/></a> [working_with_rois](https://clij.github.io/clij2-docs/md/working_with_rois)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/basics/count_blobs.ipynb"><img src="images/language_python.png" height="20"/></a> [count_blobs.ipynb](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/basics/count_blobs.ipynb)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/basics/spots_pointlists_matrices_tables.ipynb"><img src="images/language_python.png" height="20"/></a> [spots_pointlists_matrices_tables.ipynb](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/basics/spots_pointlists_matrices_tables.ipynb)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/napari_gui/napari_dask.ipynb"><img src="images/language_python.png" height="20"/></a> [napari_dask.ipynb](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/napari_gui/napari_dask.ipynb)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/tissues/parametric_maps.ipynb"><img src="images/language_python.png" height="20"/></a> [parametric_maps.ipynb](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/tissues/parametric_maps.ipynb)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/tribolium_morphometry/tribolium_morphometry.ipynb"><img src="images/language_python.png" height="20"/></a> [tribolium_morphometry.ipynb](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/tribolium_morphometry/tribolium_morphometry.ipynb)  




### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/division_visualisation.ijm"><img src="images/language_macro.png" height="20"/></a> [division_visualisation.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/division_visualisation.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/jaccard_matrix.ijm"><img src="images/language_macro.png" height="20"/></a> [jaccard_matrix.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/jaccard_matrix.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/labeling.ijm"><img src="images/language_macro.png" height="20"/></a> [labeling.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/labeling.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/labelmap_voronoi.ijm"><img src="images/language_macro.png" height="20"/></a> [labelmap_voronoi.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/labelmap_voronoi.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/mean_of_touching_neighbors.ijm"><img src="images/language_macro.png" height="20"/></a> [mean_of_touching_neighbors.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/mean_of_touching_neighbors.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/working_with_rois.ijm"><img src="images/language_macro.png" height="20"/></a> [working_with_rois.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/working_with_rois.ijm)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/basics/count_blobs.py"><img src="images/language_python.png" height="20"/></a> [count_blobs.py](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/basics/count_blobs.py)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/napari_gui/napari_.py"><img src="images/language_python.png" height="20"/></a> [napari_.py](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/napari_gui/napari_.py)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/napari_gui/napari_magicgui.py"><img src="images/language_python.png" height="20"/></a> [napari_magicgui.py](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/napari_gui/napari_magicgui.py)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/tribolium_morphometry/tribolium.py"><img src="images/language_python.png" height="20"/></a> [tribolium.py](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/tribolium_morphometry/tribolium.py)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

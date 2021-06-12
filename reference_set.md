## set
<img src="images/mini_clij1_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_cle_logo.png"/>

Sets all pixel values x of a given image X to a constant value v.

<pre>f(x) = v</pre>

Category: [Math](https://clij.github.io/clij2-docs/reference__math)

Availability: Available in Fiji by activating the update sites clij and clij2.
This function is part of clij2_-2.5.0.1.jar.

### Usage in ImageJ macro
```
Ext.CLIJ2_set(Image source, Number value);
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
float value = 1.0;
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.set(source, value);
</pre>

<pre class="highlight">
// show result

// cleanup memory on GPU
clij2.release(source);
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
value = 1.0;
</pre>

<pre class="highlight">
% Execute operation on GPU
clij2.set(source, value);
</pre>

<pre class="highlight">
% show result

% cleanup memory on GPU
clij2.release(source);
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
value = 1.0;
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.set(source, value);
</pre>

<pre class="highlight">
// show result

// cleanup memory on GPU
clij2.release(source);
</pre>

</details>



<details>

<summary>
clEsperanto Python (experimental)
</summary>
<pre class="highlight">import pyclesperanto_prototype as cle

cle.set(source, value)

</pre>



</details>





### Example notebooks
<a href="https://clij.github.io/clij2-docs/md/benchmarking"><img src="images/language_macro.png" height="20"/></a> [benchmarking](https://clij.github.io/clij2-docs/md/benchmarking)  
<a href="https://clij.github.io/clij2-docs/md/crop_and_paste"><img src="images/language_macro.png" height="20"/></a> [crop_and_paste](https://clij.github.io/clij2-docs/md/crop_and_paste)  
<a href="https://clij.github.io/clij2-docs/md/filtering_in_graphs"><img src="images/language_macro.png" height="20"/></a> [filtering_in_graphs](https://clij.github.io/clij2-docs/md/filtering_in_graphs)  
<a href="https://clij.github.io/clij2-docs/md/matrix_multiply"><img src="images/language_macro.png" height="20"/></a> [matrix_multiply](https://clij.github.io/clij2-docs/md/matrix_multiply)  
<a href="https://clij.github.io/clij2-docs/md/neighbors_of_neighbors"><img src="images/language_macro.png" height="20"/></a> [neighbors_of_neighbors](https://clij.github.io/clij2-docs/md/neighbors_of_neighbors)  
<a href="https://clij.github.io/clij2-docs/md/tribolium_morphometry"><img src="images/language_macro.png" height="20"/></a> [tribolium_morphometry](https://clij.github.io/clij2-docs/md/tribolium_morphometry)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/basics/crop_and_paste_images.ipynb"><img src="images/language_python.png" height="20"/></a> [crop_and_paste_images.ipynb](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/basics/crop_and_paste_images.ipynb)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/tribolium_morphometry/tribolium_morphometry.ipynb"><img src="images/language_python.png" height="20"/></a> [tribolium_morphometry.ipynb](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/tribolium_morphometry/tribolium_morphometry.ipynb)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/benchmarks/affine_transforms.ipynb"><img src="images/language_python.png" height="20"/></a> [affine_transforms.ipynb](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/benchmarks/affine_transforms.ipynb)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/benchmarks/benchmarking.ipynb"><img src="images/language_python.png" height="20"/></a> [benchmarking.ipynb](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/benchmarks/benchmarking.ipynb)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/benchmarks/benchmarking_centroids_of_labels.ipynb"><img src="images/language_python.png" height="20"/></a> [benchmarking_centroids_of_labels.ipynb](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/benchmarks/benchmarking_centroids_of_labels.ipynb)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/benchmarks/connected_component_labeling.ipynb"><img src="images/language_python.png" height="20"/></a> [connected_component_labeling.ipynb](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/benchmarks/connected_component_labeling.ipynb)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/benchmarks/convolution.ipynb"><img src="images/language_python.png" height="20"/></a> [convolution.ipynb](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/benchmarks/convolution.ipynb)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/benchmarks/extend_labels.ipynb"><img src="images/language_python.png" height="20"/></a> [extend_labels.ipynb](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/benchmarks/extend_labels.ipynb)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/benchmarks/gaussian_blur.ipynb"><img src="images/language_python.png" height="20"/></a> [gaussian_blur.ipynb](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/benchmarks/gaussian_blur.ipynb)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/benchmarks/intensity_projections.ipynb"><img src="images/language_python.png" height="20"/></a> [intensity_projections.ipynb](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/benchmarks/intensity_projections.ipynb)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/benchmarks/matrix_multiplication.ipynb"><img src="images/language_python.png" height="20"/></a> [matrix_multiplication.ipynb](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/benchmarks/matrix_multiplication.ipynb)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/benchmarks/pixelwise_comparison.ipynb"><img src="images/language_python.png" height="20"/></a> [pixelwise_comparison.ipynb](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/benchmarks/pixelwise_comparison.ipynb)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/benchmarks/statistics_of_labeled_pixels.ipynb"><img src="images/language_python.png" height="20"/></a> [statistics_of_labeled_pixels.ipynb](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/benchmarks/statistics_of_labeled_pixels.ipynb)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/benchmarks/threshold_otsu.ipynb"><img src="images/language_python.png" height="20"/></a> [threshold_otsu.ipynb](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/benchmarks/threshold_otsu.ipynb)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/benchmarks/transpose.ipynb"><img src="images/language_python.png" height="20"/></a> [transpose.ipynb](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/benchmarks/transpose.ipynb)  




### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/benchmarking.ijm"><img src="images/language_macro.png" height="20"/></a> [benchmarking.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/benchmarking.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/centroid_visualisation.ijm"><img src="images/language_macro.png" height="20"/></a> [centroid_visualisation.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/centroid_visualisation.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/check_if_positions_are_in_roi.ijm"><img src="images/language_macro.png" height="20"/></a> [check_if_positions_are_in_roi.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/check_if_positions_are_in_roi.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/crop_and_paste.ijm"><img src="images/language_macro.png" height="20"/></a> [crop_and_paste.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/crop_and_paste.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/drawLine.ijm"><img src="images/language_macro.png" height="20"/></a> [drawLine.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/drawLine.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/filtering_in_graphs.ijm"><img src="images/language_macro.png" height="20"/></a> [filtering_in_graphs.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/filtering_in_graphs.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/grid.ijm"><img src="images/language_macro.png" height="20"/></a> [grid.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/grid.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/intensity_per_label.ijm"><img src="images/language_macro.png" height="20"/></a> [intensity_per_label.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/intensity_per_label.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/large_matrices.ijm"><img src="images/language_macro.png" height="20"/></a> [large_matrices.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/large_matrices.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/matrix_multiply.ijm"><img src="images/language_macro.png" height="20"/></a> [matrix_multiply.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/matrix_multiply.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/meshTouchingNeighbors.ijm"><img src="images/language_macro.png" height="20"/></a> [meshTouchingNeighbors.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/meshTouchingNeighbors.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/mesh_closest_points.ijm"><img src="images/language_macro.png" height="20"/></a> [mesh_closest_points.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/mesh_closest_points.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/neighbors_of_neighbors.ijm"><img src="images/language_macro.png" height="20"/></a> [neighbors_of_neighbors.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/neighbors_of_neighbors.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/rotating_sphere.ijm"><img src="images/language_macro.png" height="20"/></a> [rotating_sphere.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/rotating_sphere.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/tribolium_morphometry.ijm"><img src="images/language_macro.png" height="20"/></a> [tribolium_morphometry.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/tribolium_morphometry.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/tubeness.ijm"><img src="images/language_macro.png" height="20"/></a> [tubeness.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/tubeness.ijm)  
<a href="https://github.com/clij/clatlab/blob/master/src/main/matlab/mesh_close_points.m"><img src="images/language_matlab.png" height="20"/></a> [mesh_close_points.m](https://github.com/clij/clatlab/blob/master/src/main/matlab/mesh_close_points.m)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/jython/interactiveCylinderProjection.py"><img src="images/language_jython.png" height="20"/></a> [interactiveCylinderProjection.py](https://github.com/clij/clij2-docs/blob/master/src/main/jython/interactiveCylinderProjection.py)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/jython/interactiveSphereProjection.py"><img src="images/language_jython.png" height="20"/></a> [interactiveSphereProjection.py](https://github.com/clij/clij2-docs/blob/master/src/main/jython/interactiveSphereProjection.py)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/jython/jaccardIndex.py"><img src="images/language_jython.png" height="20"/></a> [jaccardIndex.py](https://github.com/clij/clij2-docs/blob/master/src/main/jython/jaccardIndex.py)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/jython/mesh_closest_points.py"><img src="images/language_jython.png" height="20"/></a> [mesh_closest_points.py](https://github.com/clij/clij2-docs/blob/master/src/main/jython/mesh_closest_points.py)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/jython/multiply_images_test.py"><img src="images/language_jython.png" height="20"/></a> [multiply_images_test.py](https://github.com/clij/clij2-docs/blob/master/src/main/jython/multiply_images_test.py)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

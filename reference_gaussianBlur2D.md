## gaussianBlur2D
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_cle_logo.png"/>

Computes the Gaussian blurred image of an image given two sigma values in X and Y. 

Thus, the filterkernel can have non-isotropic shape.

The implementation is done separable. In case a sigma equals zero, the direction is not blurred.

Categories:  Noise, [Filter](https://clij.github.io/clij2-docs/reference__filter)

Availability: Available in Fiji by activating the update sites clij and clij2.
This function is part of clij2_-2.2.1.0.jar.

### gaussianBlur2D is often followed by
* <a href="reference_release">release</a> (1)
* <a href="reference_thresholdOtsu">thresholdOtsu</a> (1)
* <a href="reference_getMeanSquaredError">getMeanSquaredError</a> (1)
* <a href="reference_detectMaximaBox">detectMaximaBox</a> (1)


### Usage in ImageJ macro
```
Ext.CLIJ2_gaussianBlur2D(Image source, Image destination, Number sigma_x, Number sigma_y);
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
float sigma_x = 1.0;
float sigma_y = 2.0;
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.gaussianBlur2D(source, destination, sigma_x, sigma_y);
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
sigma_x = 1.0;
sigma_y = 2.0;
</pre>

<pre class="highlight">
% Execute operation on GPU
clij2.gaussianBlur2D(source, destination, sigma_x, sigma_y);
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
sigma_x = 1.0;
sigma_y = 2.0;
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.gaussianBlur2D(source, destination, sigma_x, sigma_y);
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



<details>

<summary>
clEsperanto Python (experimental)
</summary>
<pre class="highlight">import pyclesperanto_prototype as cle

cle.gaussian_blur(source, destination, sigma_x, sigma_y)

</pre>



</details>





### Example notebooks
<a href="https://clij.github.io/clij2-docs/md/basics"><img src="images/language_macro.png" height="20"/></a> [basics](https://clij.github.io/clij2-docs/md/basics)  
<a href="https://clij.github.io/clij2-docs/md/basic_image_processing"><img src="images/language_macro.png" height="20"/></a> [basic_image_processing](https://clij.github.io/clij2-docs/md/basic_image_processing)  
<a href="https://clij.github.io/clij2-docs/md/custom_clij_macro_functions"><img src="images/language_macro.png" height="20"/></a> [custom_clij_macro_functions](https://clij.github.io/clij2-docs/md/custom_clij_macro_functions)  
<a href="https://clij.github.io/clij2-docs/md/outlines_numbers_overlay"><img src="images/language_macro.png" height="20"/></a> [outlines_numbers_overlay](https://clij.github.io/clij2-docs/md/outlines_numbers_overlay)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/basics/count_blobs.ipynb"><img src="images/language_python.png" height="20"/></a> [count_blobs.ipynb](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/basics/count_blobs.ipynb)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/napari_gui/napari_dask.ipynb"><img src="images/language_python.png" height="20"/></a> [napari_dask.ipynb](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/napari_gui/napari_dask.ipynb)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/segmentation/bead_segmentation.ipynb"><img src="images/language_python.png" height="20"/></a> [bead_segmentation.ipynb](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/segmentation/bead_segmentation.ipynb)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/segmentation/voronoi_otsu_labeling.ipynb"><img src="images/language_python.png" height="20"/></a> [voronoi_otsu_labeling.ipynb](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/segmentation/voronoi_otsu_labeling.ipynb)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/tribolium_morphometry/tribolium_morphometry.ipynb"><img src="images/language_python.png" height="20"/></a> [tribolium_morphometry.ipynb](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/tribolium_morphometry/tribolium_morphometry.ipynb)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/benchmarks/benchmarking_some_operations.ipynb"><img src="images/language_python.png" height="20"/></a> [benchmarking_some_operations.ipynb](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/benchmarks/benchmarking_some_operations.ipynb)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/benchmarks/gaussian_blur.ipynb"><img src="images/language_python.png" height="20"/></a> [gaussian_blur.ipynb](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/benchmarks/gaussian_blur.ipynb)  




### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/basics.ijm"><img src="images/language_macro.png" height="20"/></a> [basics.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/basics.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/basic_image_processing.ijm"><img src="images/language_macro.png" height="20"/></a> [basic_image_processing.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/basic_image_processing.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/custom_clij_macro_functions.ijm"><img src="images/language_macro.png" height="20"/></a> [custom_clij_macro_functions.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/custom_clij_macro_functions.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/mean_squared_error.ijm"><img src="images/language_macro.png" height="20"/></a> [mean_squared_error.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/mean_squared_error.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/outlines_numbers_overlay.ijm"><img src="images/language_macro.png" height="20"/></a> [outlines_numbers_overlay.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/outlines_numbers_overlay.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/push_pull_selections.ijm"><img src="images/language_macro.png" height="20"/></a> [push_pull_selections.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/push_pull_selections.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/push_pull_slices.ijm"><img src="images/language_macro.png" height="20"/></a> [push_pull_slices.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/push_pull_slices.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/spot_distance_measurement.ijm"><img src="images/language_macro.png" height="20"/></a> [spot_distance_measurement.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/spot_distance_measurement.ijm)  
<a href="https://github.com/clij/clicy/blob/master/src/main/javascript/simplePipeline.js"><img src="images/language_javascript.png" height="20"/></a> [simplePipeline.js](https://github.com/clij/clicy/blob/master/src/main/javascript/simplePipeline.js)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/basics/count_blobs.py"><img src="images/language_python.png" height="20"/></a> [count_blobs.py](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/basics/count_blobs.py)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/napari_gui/napari_.py"><img src="images/language_python.png" height="20"/></a> [napari_.py](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/napari_gui/napari_.py)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/napari_gui/napari_magicgui.py"><img src="images/language_python.png" height="20"/></a> [napari_magicgui.py](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/napari_gui/napari_magicgui.py)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/tribolium_morphometry/tribolium.py"><img src="images/language_python.png" height="20"/></a> [tribolium.py](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/tribolium_morphometry/tribolium.py)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

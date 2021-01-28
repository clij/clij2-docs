## gaussianBlur
<img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_cle_logo.png"/>

Computes the Gaussian blurred image of an image given two sigma values in X and Y. 

Thus, the filterkernel can have non-isotropic shape.

The implementation is done separable. In case a sigma equals zero, the direction is not blurred.

Categories:  Noise, [Filter](https://clij.github.io/clij2-docs/reference__filter)

### Usage in ImageJ macro
```
Ext.CLIJ2_gaussianBlur(Image source, Image destination, Number sigma_x, Number sigma_y);
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
clij2.gaussianBlur(source, destination, sigma_x, sigma_y);
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
clij2.gaussianBlur(source, destination, sigma_x, sigma_y);
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
clij2.gaussianBlur(source, destination, sigma_x, sigma_y);
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
<a href="https://clij.github.io/clij2-docs/md/blur"><img src="images/language_macro.png" height="20"/></a> [blur](https://clij.github.io/clij2-docs/md/blur)  
<a href="https://clij.github.io/clij2-docs/md/tribolium_morphometry"><img src="images/language_macro.png" height="20"/></a> [tribolium_morphometry](https://clij.github.io/clij2-docs/md/tribolium_morphometry)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/basics/count_blobs.ipynb"><img src="images/language_python.png" height="20"/></a> [count_blobs.ipynb](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/basics/count_blobs.ipynb)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/napari_gui/napari_dask.ipynb"><img src="images/language_python.png" height="20"/></a> [napari_dask.ipynb](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/napari_gui/napari_dask.ipynb)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/segmentation/voronoi_otsu_labeling.ipynb"><img src="images/language_python.png" height="20"/></a> [voronoi_otsu_labeling.ipynb](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/segmentation/voronoi_otsu_labeling.ipynb)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/tribolium_morphometry/tribolium_morphometry.ipynb"><img src="images/language_python.png" height="20"/></a> [tribolium_morphometry.ipynb](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/tribolium_morphometry/tribolium_morphometry.ipynb)  




### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/backgroundSubtraction.ijm"><img src="images/language_macro.png" height="20"/></a> [backgroundSubtraction.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/backgroundSubtraction.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/basics.ijm"><img src="images/language_macro.png" height="20"/></a> [basics.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/basics.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/blur.ijm"><img src="images/language_macro.png" height="20"/></a> [blur.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/blur.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/mean_squared_error.ijm"><img src="images/language_macro.png" height="20"/></a> [mean_squared_error.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/mean_squared_error.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/meshTouchingNeighbors.ijm"><img src="images/language_macro.png" height="20"/></a> [meshTouchingNeighbors.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/meshTouchingNeighbors.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/push_pull_selections.ijm"><img src="images/language_macro.png" height="20"/></a> [push_pull_selections.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/push_pull_selections.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/push_pull_slices.ijm"><img src="images/language_macro.png" height="20"/></a> [push_pull_slices.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/push_pull_slices.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/spot_distance_measurement.ijm"><img src="images/language_macro.png" height="20"/></a> [spot_distance_measurement.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/spot_distance_measurement.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/tribolium_morphometry.ijm"><img src="images/language_macro.png" height="20"/></a> [tribolium_morphometry.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/tribolium_morphometry.ijm)  
<a href="https://github.com/clij/clatlab/blob/master/src/main/matlab/blurImage.m"><img src="images/language_matlab.png" height="20"/></a> [blurImage.m](https://github.com/clij/clatlab/blob/master/src/main/matlab/blurImage.m)  
<a href="https://github.com/clij/clatlab/blob/master/src/main/matlab/simplePipeline.m"><img src="images/language_matlab.png" height="20"/></a> [simplePipeline.m](https://github.com/clij/clatlab/blob/master/src/main/matlab/simplePipeline.m)  
<a href="https://github.com/clij/clicy/blob/master/src/main/javascript/blur_frame_by_frame.js"><img src="images/language_javascript.png" height="20"/></a> [blur_frame_by_frame.js](https://github.com/clij/clicy/blob/master/src/main/javascript/blur_frame_by_frame.js)  
<a href="https://github.com/clij/clicy/blob/master/src/main/javascript/simplePipeline.js"><img src="images/language_javascript.png" height="20"/></a> [simplePipeline.js](https://github.com/clij/clicy/blob/master/src/main/javascript/simplePipeline.js)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/jython/backgroundSubtraction.py"><img src="images/language_jython.png" height="20"/></a> [backgroundSubtraction.py](https://github.com/clij/clij2-docs/blob/master/src/main/jython/backgroundSubtraction.py)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/jython/interactiveCylinderProjection.py"><img src="images/language_jython.png" height="20"/></a> [interactiveCylinderProjection.py](https://github.com/clij/clij2-docs/blob/master/src/main/jython/interactiveCylinderProjection.py)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/jython/interactiveSphereProjection.py"><img src="images/language_jython.png" height="20"/></a> [interactiveSphereProjection.py](https://github.com/clij/clij2-docs/blob/master/src/main/jython/interactiveSphereProjection.py)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/jython/mesh_closest_points.py"><img src="images/language_jython.png" height="20"/></a> [mesh_closest_points.py](https://github.com/clij/clij2-docs/blob/master/src/main/jython/mesh_closest_points.py)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/jython/multi_GPU_demo.py"><img src="images/language_jython.png" height="20"/></a> [multi_GPU_demo.py](https://github.com/clij/clij2-docs/blob/master/src/main/jython/multi_GPU_demo.py)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/jython/with_statement.py"><img src="images/language_jython.png" height="20"/></a> [with_statement.py](https://github.com/clij/clij2-docs/blob/master/src/main/jython/with_statement.py)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/basics/count_blobs.py"><img src="images/language_python.png" height="20"/></a> [count_blobs.py](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/basics/count_blobs.py)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/napari_gui/napari_.py"><img src="images/language_python.png" height="20"/></a> [napari_.py](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/napari_gui/napari_.py)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/napari_gui/napari_magicgui.py"><img src="images/language_python.png" height="20"/></a> [napari_magicgui.py](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/napari_gui/napari_magicgui.py)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/tribolium_morphometry/tribolium.py"><img src="images/language_python.png" height="20"/></a> [tribolium.py](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/tribolium_morphometry/tribolium.py)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

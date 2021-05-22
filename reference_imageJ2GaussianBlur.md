## imageJ2GaussianBlur
<img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_cle_logo.png"/>

Apply ImageJ2 / ImageJ Ops Gaussian Blur to an image.

Categories: Denoise, [Filter](https://clij.github.io/clij2-docs/reference__filter)

Availability: Available in Fiji by activating the update sites clij, clij2 and clijx-assistant-extensions.
This function is part of clijx-assistant-imagej2_-0.5.0.6.jar.

### Usage in ImageJ macro
```
Ext.CLIJx_imageJ2GaussianBlur(Image input, Image destination, Number sigma_x, Number sigma_y, Number sigma_z);
```


### Usage in object oriented programming languages



<details>

<summary>
Java
</summary>
<pre class="highlight">// init CLIJ and GPU
import net.haesleinhuepf.clijx.CLIJx;
import net.haesleinhuepf.clij.clearcl.ClearCLBuffer;
CLIJx clijx = CLIJx.getInstance();

// get input parameters
ClearCLBuffer input = clijx.push(inputImagePlus);
destination = clijx.create(input);
float sigma_x = 1.0;
float sigma_y = 2.0;
float sigma_z = 3.0;
</pre>

<pre class="highlight">
// Execute operation on GPU
clijx.imageJ2GaussianBlur(input, destination, sigma_x, sigma_y, sigma_z);
</pre>

<pre class="highlight">
// show result
destinationImagePlus = clijx.pull(destination);
destinationImagePlus.show();

// cleanup memory on GPU
clijx.release(input);
clijx.release(destination);
</pre>

</details>



<details>

<summary>
Matlab
</summary>
<pre class="highlight">% init CLIJ and GPU
clijx = init_clatlabx();

% get input parameters
input = clijx.pushMat(input_matrix);
destination = clijx.create(input);
sigma_x = 1.0;
sigma_y = 2.0;
sigma_z = 3.0;
</pre>

<pre class="highlight">
% Execute operation on GPU
clijx.imageJ2GaussianBlur(input, destination, sigma_x, sigma_y, sigma_z);
</pre>

<pre class="highlight">
% show result
destination = clijx.pullMat(destination)

% cleanup memory on GPU
clijx.release(input);
clijx.release(destination);
</pre>

</details>



<details>

<summary>
clEsperanto Python (experimental)
</summary>
<pre class="highlight">import pyclesperanto_prototype as cle

cle.gaussian_blur(input, destination, sigma_x, sigma_y, sigma_z)

</pre>



</details>





### Example notebooks
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/basics/count_blobs.ipynb"><img src="images/language_python.png" height="20"/></a> [count_blobs.ipynb](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/basics/count_blobs.ipynb)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/napari_gui/napari_dask.ipynb"><img src="images/language_python.png" height="20"/></a> [napari_dask.ipynb](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/napari_gui/napari_dask.ipynb)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/segmentation/bead_segmentation.ipynb"><img src="images/language_python.png" height="20"/></a> [bead_segmentation.ipynb](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/segmentation/bead_segmentation.ipynb)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/segmentation/voronoi_otsu_labeling.ipynb"><img src="images/language_python.png" height="20"/></a> [voronoi_otsu_labeling.ipynb](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/segmentation/voronoi_otsu_labeling.ipynb)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/tribolium_morphometry/tribolium_morphometry.ipynb"><img src="images/language_python.png" height="20"/></a> [tribolium_morphometry.ipynb](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/tribolium_morphometry/tribolium_morphometry.ipynb)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/benchmarks/benchmarking_some_operations.ipynb"><img src="images/language_python.png" height="20"/></a> [benchmarking_some_operations.ipynb](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/benchmarks/benchmarking_some_operations.ipynb)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/benchmarks/gaussian_blur.ipynb"><img src="images/language_python.png" height="20"/></a> [gaussian_blur.ipynb](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/benchmarks/gaussian_blur.ipynb)  




### Example scripts
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/basics/count_blobs.py"><img src="images/language_python.png" height="20"/></a> [count_blobs.py](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/basics/count_blobs.py)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/napari_gui/napari_.py"><img src="images/language_python.png" height="20"/></a> [napari_.py](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/napari_gui/napari_.py)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/napari_gui/napari_magicgui.py"><img src="images/language_python.png" height="20"/></a> [napari_magicgui.py](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/napari_gui/napari_magicgui.py)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/tribolium_morphometry/tribolium.py"><img src="images/language_python.png" height="20"/></a> [tribolium.py](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/tribolium_morphometry/tribolium.py)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

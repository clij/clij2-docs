## topHatBox
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_cle_logo.png"/>

Applies a top-hat filter for background subtraction to the input image.

### Parameters

input : Image
    The input image where the background is subtracted from.
destination : Image
    The output image where results are written into.
radius_x : Image
    Radius of the background determination region in X.
radius_y : Image
    Radius of the background determination region in Y.
radius_z : Image
    Radius of the background determination region in Z.


Categories: [Filter](https://clij.github.io/clij2-docs/reference__filter), Background

Availability: Available in Fiji by activating the update sites clij and clij2.
This function is part of clij2_-2.2.0.19.jar.

### topHatBox often follows after
* <a href="reference_equalizeMeanIntensitiesOfSlices">equalizeMeanIntensitiesOfSlices</a> (1)


### topHatBox is often followed by
* <a href="reference_automaticThreshold">automaticThreshold</a> (1)
* <a href="reference_release">release</a> (1)


### Usage in ImageJ macro
```
Ext.CLIJ2_topHatBox(Image input, Image destination, Number radiusX, Number radiusY, Number radiusZ);
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
destination = clij2.create(input);
int radiusX = 10;
int radiusY = 20;
int radiusZ = 30;
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.topHatBox(input, destination, radiusX, radiusY, radiusZ);
</pre>

<pre class="highlight">
// show result
destinationImagePlus = clij2.pull(destination);
destinationImagePlus.show();

// cleanup memory on GPU
clij2.release(input);
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
input = clij2.pushMat(input_matrix);
destination = clij2.create(input);
radiusX = 10;
radiusY = 20;
radiusZ = 30;
</pre>

<pre class="highlight">
% Execute operation on GPU
clij2.topHatBox(input, destination, radiusX, radiusY, radiusZ);
</pre>

<pre class="highlight">
% show result
destination = clij2.pullMat(destination)

% cleanup memory on GPU
clij2.release(input);
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
input_sequence = getSequence();
input = clij2.pushSequence(input_sequence);
destination = clij2.create(input);
radiusX = 10;
radiusY = 20;
radiusZ = 30;
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.topHatBox(input, destination, radiusX, radiusY, radiusZ);
</pre>

<pre class="highlight">
// show result
destination_sequence = clij2.pullSequence(destination)
Icy.addSequence(destination_sequence);
// cleanup memory on GPU
clij2.release(input);
clij2.release(destination);
</pre>

</details>



<details>

<summary>
clEsperanto Python (experimental)
</summary>
<pre class="highlight">import pyclesperanto_prototype as cle

cle.top_hat_box(input, destination, radiusX, radiusY, radiusZ)

</pre>



</details>





### Example notebooks
<a href="https://clij.github.io/clij2-docs/md/compare_workflows"><img src="images/language_macro.png" height="20"/></a> [compare_workflows](https://clij.github.io/clij2-docs/md/compare_workflows)  
<a href="https://clij.github.io/clij2-docs/md/custom_clij_macro_functions"><img src="images/language_macro.png" height="20"/></a> [custom_clij_macro_functions](https://clij.github.io/clij2-docs/md/custom_clij_macro_functions)  
<a href="https://clij.github.io/clij2-docs/md/image_segmentation_3d"><img src="images/language_macro.png" height="20"/></a> [image_segmentation_3d](https://clij.github.io/clij2-docs/md/image_segmentation_3d)  
<a href="https://clij.github.io/clij2-docs/md/time_tracing"><img src="images/language_macro.png" height="20"/></a> [time_tracing](https://clij.github.io/clij2-docs/md/time_tracing)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/segmentation/Segmentation_3D.ipynb"><img src="images/language_python.png" height="20"/></a> [Segmentation_3D.ipynb](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/segmentation/Segmentation_3D.ipynb)  




### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/compare_workflows.ijm"><img src="images/language_macro.png" height="20"/></a> [compare_workflows.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/compare_workflows.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/custom_clij_macro_functions.ijm"><img src="images/language_macro.png" height="20"/></a> [custom_clij_macro_functions.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/custom_clij_macro_functions.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/image_segmentation_3d.ijm"><img src="images/language_macro.png" height="20"/></a> [image_segmentation_3d.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/image_segmentation_3d.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/time_tracing.ijm"><img src="images/language_macro.png" height="20"/></a> [time_tracing.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/time_tracing.ijm)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/napari_gui/napari_performance_demo.py"><img src="images/language_python.png" height="20"/></a> [napari_performance_demo.py](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/napari_gui/napari_performance_demo.py)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

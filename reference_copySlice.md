## copySlice
<img src="images/mini_clij1_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_cle_logo.png"/>

This method has two purposes: 
It copies a 2D image to a given slice z position in a 3D image stack or 
It copies a given slice at position z in an image stack to a 2D image.

The first case is only available via ImageJ macro. If you are using it, it is recommended that the 
target 3D image already pre-exists in GPU memory before calling this method. Otherwise, CLIJ create 
the image stack with z planes.

Category: [Transformations](https://clij.github.io/clij2-docs/reference__transform)

### copySlice often follows after
* <a href="reference_replaceIntensities">replaceIntensities</a> (2)
* <a href="reference_affineTransform2D">affineTransform2D</a> (2)
* <a href="reference_maximumZProjection">maximumZProjection</a> (2)
* <a href="reference_rotate2D">rotate2D</a> (2)
* <a href="reference_binaryFillHoles">binaryFillHoles</a> (1)
* <a href="reference_scale2D">scale2D</a> (1)
* <a href="reference_translate2D">translate2D</a> (1)
* <a href="reference_applyVectorField2D">applyVectorField2D</a> (1)
* <a href="reference_flip2D">flip2D</a> (1)
* <a href="reference_mask">mask</a> (2)


### copySlice is often followed by
* <a href="reference_histogram">histogram</a> (2)
* <a href="reference_gaussianBlur2D">gaussianBlur2D</a> (1)
* <a href="reference_affineTransform2D">affineTransform2D</a> (2)
* <a href="reference_binaryFillHoles">binaryFillHoles</a> (1)
* <a href="reference_statisticsOfBackgroundAndLabelledPixels">statisticsOfBackgroundAndLabelledPixels</a> (2)
* <a href="reference_crop3D">crop3D</a> (1)
* <a href="reference_differenceOfGaussian2D">differenceOfGaussian2D</a> (1)
* <a href="reference_statisticsOfLabelledPixels">statisticsOfLabelledPixels</a> (1)


### Usage in ImageJ macro
```
Ext.CLIJ2_copySlice(Image source, Image destination, Number slice_index);
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
destination = clij2.create(new long[]{source.getWidth(), source.getHeight()}, source.getNativeType());
int slice_index = 10;
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.copySlice(source, destination, slice_index);
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
destination = clij2.create([source.getWidth(), source.getHeight()], source.getNativeType());
slice_index = 10;
</pre>

<pre class="highlight">
% Execute operation on GPU
clij2.copySlice(source, destination, slice_index);
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
destination = clij2.create([source.getWidth(), source.getHeight()], source.getNativeType());
slice_index = 10;
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.copySlice(source, destination, slice_index);
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

cle.copy_slice(source, destination, slice_index)

</pre>



</details>





### Example notebooks
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/basics/inspecting_3d_images.ipynb"><img src="images/language_python.png" height="20"/></a> [inspecting_3d_images.ipynb](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/basics/inspecting_3d_images.ipynb)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/segmentation/Segmentation_3D.ipynb"><img src="images/language_python.png" height="20"/></a> [Segmentation_3D.ipynb](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/segmentation/Segmentation_3D.ipynb)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/segmentation/voronoi_otsu_labeling.ipynb"><img src="images/language_python.png" height="20"/></a> [voronoi_otsu_labeling.ipynb](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/segmentation/voronoi_otsu_labeling.ipynb)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/benchmarks/benchmarking_centroids_of_labels.ipynb"><img src="images/language_python.png" height="20"/></a> [benchmarking_centroids_of_labels.ipynb](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/benchmarks/benchmarking_centroids_of_labels.ipynb)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/benchmarks/statistics_of_labeled_pixels.ipynb"><img src="images/language_python.png" height="20"/></a> [statistics_of_labeled_pixels.ipynb](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/benchmarks/statistics_of_labeled_pixels.ipynb)  




### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/allocateBigImages.ijm"><img src="images/language_macro.png" height="20"/></a> [allocateBigImages.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/allocateBigImages.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/applyVectorField.ijm"><img src="images/language_macro.png" height="20"/></a> [applyVectorField.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/applyVectorField.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/division_visualisation.ijm"><img src="images/language_macro.png" height="20"/></a> [division_visualisation.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/division_visualisation.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/motionCorrection.ijm"><img src="images/language_macro.png" height="20"/></a> [motionCorrection.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/motionCorrection.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/motionCorrection_compare_stackreg.ijm"><img src="images/language_macro.png" height="20"/></a> [motionCorrection_compare_stackreg.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/motionCorrection_compare_stackreg.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/process_5D_stack.ijm"><img src="images/language_macro.png" height="20"/></a> [process_5D_stack.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/process_5D_stack.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/rotateFree.ijm"><img src="images/language_macro.png" height="20"/></a> [rotateFree.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/rotateFree.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/rotateOverwriteOriginal.ijm"><img src="images/language_macro.png" height="20"/></a> [rotateOverwriteOriginal.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/rotateOverwriteOriginal.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/rotating_sphere.ijm"><img src="images/language_macro.png" height="20"/></a> [rotating_sphere.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/rotating_sphere.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/scaleFree.ijm"><img src="images/language_macro.png" height="20"/></a> [scaleFree.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/scaleFree.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/translate.ijm"><img src="images/language_macro.png" height="20"/></a> [translate.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/translate.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/jython/applyVectorField.py"><img src="images/language_jython.png" height="20"/></a> [applyVectorField.py](https://github.com/clij/clij2-docs/blob/master/src/main/jython/applyVectorField.py)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/jython/rotateFree.py"><img src="images/language_jython.png" height="20"/></a> [rotateFree.py](https://github.com/clij/clij2-docs/blob/master/src/main/jython/rotateFree.py)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/jython/rotateOverwriteOiginal.py"><img src="images/language_jython.png" height="20"/></a> [rotateOverwriteOiginal.py](https://github.com/clij/clij2-docs/blob/master/src/main/jython/rotateOverwriteOiginal.py)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

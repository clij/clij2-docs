## maximumZProjection
<img src="images/mini_clij1_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_cle_logo.png"/>

Determines the maximum intensity projection of an image along Z.

Category: [Projections](https://clij.github.io/clij2-docs/reference__project)

Availability: Available in Fiji by activating the update sites clij and clij2.
This function is part of clij2_-2.2.0.19.jar.

### maximumZProjection often follows after
* <a href="reference_replaceIntensities">replaceIntensities</a> (2)
* <a href="reference_rotate3D">rotate3D</a> (1)
* <a href="reference_resliceLeft">resliceLeft</a> (1)
* <a href="reference_resample">resample</a> (1)


### maximumZProjection is often followed by
* <a href="reference_saveAsTIF">saveAsTIF</a> (1)
* <a href="reference_release">release</a> (3)
* <a href="reference_copySlice">copySlice</a> (2)


### Usage in ImageJ macro
```
Ext.CLIJ2_maximumZProjection(Image source, Image destination_max);
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
destination_max = clij2.create(new long[]{source.getWidth(), source.getHeight()}, source.getNativeType());
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.maximumZProjection(source, destination_max);
</pre>

<pre class="highlight">
// show result
destination_maxImagePlus = clij2.pull(destination_max);
destination_maxImagePlus.show();

// cleanup memory on GPU
clij2.release(source);
clij2.release(destination_max);
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
destination_max = clij2.create([source.getWidth(), source.getHeight()], source.getNativeType());
</pre>

<pre class="highlight">
% Execute operation on GPU
clij2.maximumZProjection(source, destination_max);
</pre>

<pre class="highlight">
% show result
destination_max = clij2.pullMat(destination_max)

% cleanup memory on GPU
clij2.release(source);
clij2.release(destination_max);
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
destination_max = clij2.create([source.getWidth(), source.getHeight()], source.getNativeType());
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.maximumZProjection(source, destination_max);
</pre>

<pre class="highlight">
// show result
destination_max_sequence = clij2.pullSequence(destination_max)
Icy.addSequence(destination_max_sequence);
// cleanup memory on GPU
clij2.release(source);
clij2.release(destination_max);
</pre>

</details>



<details>

<summary>
clEsperanto Python (experimental)
</summary>
<pre class="highlight">import pyclesperanto_prototype as cle

cle.maximum_z_projection(source, destination_max)

</pre>



</details>





### Example notebooks
<a href="https://clij.github.io/clij2-docs/md/basic_image_processing"><img src="images/language_macro.png" height="20"/></a> [basic_image_processing](https://clij.github.io/clij2-docs/md/basic_image_processing)  
<a href="https://clij.github.io/clij2-docs/md/drosophila_max_cylinder_projection"><img src="images/language_macro.png" height="20"/></a> [drosophila_max_cylinder_projection](https://clij.github.io/clij2-docs/md/drosophila_max_cylinder_projection)  
<a href="https://clij.github.io/clij2-docs/md/image_segmentation_3d"><img src="images/language_macro.png" height="20"/></a> [image_segmentation_3d](https://clij.github.io/clij2-docs/md/image_segmentation_3d)  
<a href="https://clij.github.io/clij2-docs/md/maximumProjection"><img src="images/language_macro.png" height="20"/></a> [maximumProjection](https://clij.github.io/clij2-docs/md/maximumProjection)  
<a href="https://clij.github.io/clij2-docs/md/process_multichannel_timelapse"><img src="images/language_macro.png" height="20"/></a> [process_multichannel_timelapse](https://clij.github.io/clij2-docs/md/process_multichannel_timelapse)  
<a href="https://clij.github.io/clij2-docs/md/superpixel_segmentation"><img src="images/language_macro.png" height="20"/></a> [superpixel_segmentation](https://clij.github.io/clij2-docs/md/superpixel_segmentation)  
<a href="https://clij.github.io/clij2-docs/md/tribolium_morphometry"><img src="images/language_macro.png" height="20"/></a> [tribolium_morphometry](https://clij.github.io/clij2-docs/md/tribolium_morphometry)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/basics/inspecting_3d_images.ipynb"><img src="images/language_python.png" height="20"/></a> [inspecting_3d_images.ipynb](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/basics/inspecting_3d_images.ipynb)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/segmentation/Segmentation_3D.ipynb"><img src="images/language_python.png" height="20"/></a> [Segmentation_3D.ipynb](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/segmentation/Segmentation_3D.ipynb)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/tribolium_morphometry/tribolium_morphometry.ipynb"><img src="images/language_python.png" height="20"/></a> [tribolium_morphometry.ipynb](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/tribolium_morphometry/tribolium_morphometry.ipynb)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/benchmarks/intensity_projections.ipynb"><img src="images/language_python.png" height="20"/></a> [intensity_projections.ipynb](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/benchmarks/intensity_projections.ipynb)  




### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/basic_image_processing.ijm"><img src="images/language_macro.png" height="20"/></a> [basic_image_processing.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/basic_image_processing.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/bigImageTransfer.ijm"><img src="images/language_macro.png" height="20"/></a> [bigImageTransfer.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/bigImageTransfer.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/drosophila_max_cylinder_projection.ijm"><img src="images/language_macro.png" height="20"/></a> [drosophila_max_cylinder_projection.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/drosophila_max_cylinder_projection.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/image_segmentation_3d.ijm"><img src="images/language_macro.png" height="20"/></a> [image_segmentation_3d.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/image_segmentation_3d.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/maximumProjection.ijm"><img src="images/language_macro.png" height="20"/></a> [maximumProjection.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/maximumProjection.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/orthogonalMaximumProjections.ijm"><img src="images/language_macro.png" height="20"/></a> [orthogonalMaximumProjections.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/orthogonalMaximumProjections.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/process_5D_stack.ijm"><img src="images/language_macro.png" height="20"/></a> [process_5D_stack.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/process_5D_stack.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/process_multichannel_timelapse.ijm"><img src="images/language_macro.png" height="20"/></a> [process_multichannel_timelapse.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/process_multichannel_timelapse.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/rotating_sphere.ijm"><img src="images/language_macro.png" height="20"/></a> [rotating_sphere.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/rotating_sphere.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/superpixel_segmentation.ijm"><img src="images/language_macro.png" height="20"/></a> [superpixel_segmentation.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/superpixel_segmentation.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/tribolium_morphometry.ijm"><img src="images/language_macro.png" height="20"/></a> [tribolium_morphometry.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/tribolium_morphometry.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/javascript/maximumProjection.js"><img src="images/language_javascript.png" height="20"/></a> [maximumProjection.js](https://github.com/clij/clij2-docs/blob/master/src/main/javascript/maximumProjection.js)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/groovy/maximumProjection.groovy"><img src="images/language_groovy.png" height="20"/></a> [maximumProjection.groovy](https://github.com/clij/clij2-docs/blob/master/src/main/groovy/maximumProjection.groovy)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/beanshell/maximumProjection.bsh"><img src="images/language_beanshell.png" height="20"/></a> [maximumProjection.bsh](https://github.com/clij/clij2-docs/blob/master/src/main/beanshell/maximumProjection.bsh)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/jython/interactiveCylinderProjection.py"><img src="images/language_jython.png" height="20"/></a> [interactiveCylinderProjection.py](https://github.com/clij/clij2-docs/blob/master/src/main/jython/interactiveCylinderProjection.py)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/jython/interactiveSphereProjection.py"><img src="images/language_jython.png" height="20"/></a> [interactiveSphereProjection.py](https://github.com/clij/clij2-docs/blob/master/src/main/jython/interactiveSphereProjection.py)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/jython/multi_GPU_demo.py"><img src="images/language_jython.png" height="20"/></a> [multi_GPU_demo.py](https://github.com/clij/clij2-docs/blob/master/src/main/jython/multi_GPU_demo.py)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

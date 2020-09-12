## maximumZProjection
<img src="images/mini_clij1_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/>

Determines the maximum intensity projection of an image along Z.

Category: [Projections](https://clij.github.io/clij2-docs/reference__project)

### maximumZProjection often follows after
* <a href="reference_connectedComponentsLabelingBox">connectedComponentsLabelingBox</a> (2)
* <a href="reference_replaceIntensities">replaceIntensities</a> (3)
* <a href="reference_rotate3D">rotate3D</a> (2)
* <a href="reference_resliceLeft">resliceLeft</a> (2)
* <a href="reference_onlyzeroOverwriteMaximumDiamond">onlyzeroOverwriteMaximumDiamond</a> (2)
* <a href="reference_resample">resample</a> (2)


### maximumZProjection is often followed by
* <a href="reference_saveAsTIF">saveAsTIF</a> (2)
* <a href="reference_release">release</a> (4)
* <a href="reference_copySlice">copySlice</a> (3)


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





### Example notebooks
<a href="https://clij.github.io/clij2-docs/md/drosophila_max_cylinder_projection"><img src="images/language_macro.png" height="20"/></a> [drosophila_max_cylinder_projection](https://clij.github.io/clij2-docs/md/drosophila_max_cylinder_projection)  
<a href="https://clij.github.io/clij2-docs/md/maximumProjection"><img src="images/language_macro.png" height="20"/></a> [maximumProjection](https://clij.github.io/clij2-docs/md/maximumProjection)  
<a href="https://clij.github.io/clij2-docs/md/superpixel_segmentation"><img src="images/language_macro.png" height="20"/></a> [superpixel_segmentation](https://clij.github.io/clij2-docs/md/superpixel_segmentation)  
<a href="https://clij.github.io/clij2-docs/md/tribolium_morphometry"><img src="images/language_macro.png" height="20"/></a> [tribolium_morphometry](https://clij.github.io/clij2-docs/md/tribolium_morphometry)  




### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/bigImageTransfer.ijm"><img src="images/language_macro.png" height="20"/></a> [bigImageTransfer.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/bigImageTransfer.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/drosophila_max_cylinder_projection.ijm"><img src="images/language_macro.png" height="20"/></a> [drosophila_max_cylinder_projection.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/drosophila_max_cylinder_projection.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/maximumProjection.ijm"><img src="images/language_macro.png" height="20"/></a> [maximumProjection.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/maximumProjection.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/orthogonalMaximumProjections.ijm"><img src="images/language_macro.png" height="20"/></a> [orthogonalMaximumProjections.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/orthogonalMaximumProjections.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/process_5D_stack.ijm"><img src="images/language_macro.png" height="20"/></a> [process_5D_stack.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/process_5D_stack.ijm)  
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

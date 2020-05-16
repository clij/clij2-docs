## copy
<img src="images/mini_clij1_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/>

Copies an image.

<pre>f(x) = x</pre>

### copy often follows after
* <a href="reference_drawBox">drawBox</a> (2)


### Usage in ImageJ macro
```
Ext.CLIJ2_copy(Image source, Image destination);
```




### Usage in Java


<details>

<summary>
clij2.copy(source, destination);
</summary>
<pre class="highlight">// init CLIJ and GPU
import net.haesleinhuepf.clij2.CLIJ2;
import net.haesleinhuepf.clij.clearcl.ClearCLBuffer;
CLIJ2 clij2 = CLIJ2.getInstance();

// get input parameters
ClearCLBuffer source = clij2.push(sourceImagePlus);
destination = clij2.create(source);
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.copy(source, destination);
</pre>

<pre class="highlight">
//show result
destinationImagePlus = clij2.pull(destination);
destinationImagePlus.show();

// cleanup memory on GPU
clij2.release(source);
clij2.release(destination);
</pre>

</details>





### Usage in Matlab


<details>

<summary>
clij2.copy(source, destination);
</summary>
<pre class="highlight">% init CLIJ and GPU
clij2 = init_clatlab();

% get input parameters
source = clij2.pushMat(source_matrix);
destination = clij2.create(source);
</pre>

<pre class="highlight">
% Execute operation on GPU
clij2.copy(source, destination);
</pre>

<pre class="highlight">
% show result
destination = clij2.pullMat(destination)

% cleanup memory on GPU
clij2.release(source);
clij2.release(destination);
</pre>

</details>





### Usage in Icy


<details>

<summary>
clij2.copy(source, destination);
</summary>
<pre class="highlight">// init CLIJ and GPU
importClass(net.haesleinhuepf.clicy.CLICY);
importClass(Packages.icy.main.Icy);

clij2 = CLICY.getInstance();

// get input parameters
source_sequence = getSequence();
source = clij2.pushSequence(source_sequence);
destination = clij2.create(source);
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.copy(source, destination);
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
<a href="https://clij.github.io/clij2-docs/md/tribolium_morphometry"><img src="images/language_macro.png" height="20"/></a> [tribolium_morphometry](https://clij.github.io/clij2-docs/md/tribolium_morphometry)  




### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/allocateBigImages.ijm"><img src="images/language_macro.png" height="20"/></a> [allocateBigImages.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/allocateBigImages.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/applyVectorField.ijm"><img src="images/language_macro.png" height="20"/></a> [applyVectorField.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/applyVectorField.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/division_visualisation.ijm"><img src="images/language_macro.png" height="20"/></a> [division_visualisation.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/division_visualisation.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/memory_reuse_versus_reallocation.ijm"><img src="images/language_macro.png" height="20"/></a> [memory_reuse_versus_reallocation.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/memory_reuse_versus_reallocation.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/motionCorrection.ijm"><img src="images/language_macro.png" height="20"/></a> [motionCorrection.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/motionCorrection.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/motionCorrection_compare_stackreg.ijm"><img src="images/language_macro.png" height="20"/></a> [motionCorrection_compare_stackreg.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/motionCorrection_compare_stackreg.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/rotateFree.ijm"><img src="images/language_macro.png" height="20"/></a> [rotateFree.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/rotateFree.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/rotateOverwriteOriginal.ijm"><img src="images/language_macro.png" height="20"/></a> [rotateOverwriteOriginal.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/rotateOverwriteOriginal.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/rotating_sphere.ijm"><img src="images/language_macro.png" height="20"/></a> [rotating_sphere.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/rotating_sphere.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/scaleFree.ijm"><img src="images/language_macro.png" height="20"/></a> [scaleFree.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/scaleFree.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/translate.ijm"><img src="images/language_macro.png" height="20"/></a> [translate.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/translate.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/tribolium_morphometry.ijm"><img src="images/language_macro.png" height="20"/></a> [tribolium_morphometry.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/tribolium_morphometry.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/jython/countNeighbors3D.py"><img src="images/language_jython.png" height="20"/></a> [countNeighbors3D.py](https://github.com/clij/clij2-docs/blob/master/src/main/jython/countNeighbors3D.py)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/jython/interactiveCylinderProjection.py"><img src="images/language_jython.png" height="20"/></a> [interactiveCylinderProjection.py](https://github.com/clij/clij2-docs/blob/master/src/main/jython/interactiveCylinderProjection.py)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/jython/interactiveSphereProjection.py"><img src="images/language_jython.png" height="20"/></a> [interactiveSphereProjection.py](https://github.com/clij/clij2-docs/blob/master/src/main/jython/interactiveSphereProjection.py)  
<a href="https://github.com/clij/clijpy/blob/master/python/benchmark_clijx_pull.ipynb"><img src="images/language_python.png" height="20"/></a> [benchmark_clijx_pull.ipynb](https://github.com/clij/clijpy/blob/master/python/benchmark_clijx_pull.ipynb)  
<a href="https://github.com/clij/clijpy/blob/master/python/clijpy_demo.ipynb"><img src="images/language_python.png" height="20"/></a> [clijpy_demo.ipynb](https://github.com/clij/clijpy/blob/master/python/clijpy_demo.ipynb)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

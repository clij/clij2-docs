## resliceTop
<img src="images/mini_clij1_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/>

Flippes Y and Z axis of an image stack. This operation is similar to ImageJs 'Reslice [/]' method but
offers less flexibility such as interpolation.

Category: [Transformations](https://clij.github.io/clij2-docs/reference__transform)

### resliceTop often follows after
* <a href="reference_topHatBox">topHatBox</a> (3)
* <a href="reference_resample">resample</a> (2)


### resliceTop is often followed by
* <a href="reference_resliceRadial">resliceRadial</a> (4)


### Usage in ImageJ macro
```
Ext.CLIJ2_resliceTop(Image source, Image destination);
```




### Usage in Java


<details>

<summary>
clij2.resliceTop(source, destination);
</summary>
<pre class="highlight">// init CLIJ and GPU
import net.haesleinhuepf.clij2.CLIJ2;
import net.haesleinhuepf.clij.clearcl.ClearCLBuffer;
CLIJ2 clij2 = CLIJ2.getInstance();

// get input parameters
ClearCLBuffer source = clij2.push(sourceImagePlus);
destination = clij2.create(new long[]{source.getWidth(), source.getDepth(), source.getHeight()}, source.getNativeType());
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.resliceTop(source, destination);
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
clij2.resliceTop(source, destination);
</summary>
<pre class="highlight">% init CLIJ and GPU
clij2 = init_clatlab();

% get input parameters
source = clij2.pushMat(source_matrix);
destination = clij2.create([source.getWidth(), source.getDepth(), source.getHeight()], source.getNativeType());
</pre>

<pre class="highlight">
% Execute operation on GPU
clij2.resliceTop(source, destination);
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
clij2.resliceTop(source, destination);
</summary>
<pre class="highlight">// init CLIJ and GPU
importClass(net.haesleinhuepf.clicy.CLICY);
importClass(Packages.icy.main.Icy);

clij2 = CLICY.getInstance();

// get input parameters
source_sequence = getSequence();
source = clij2.pushSequence(source_sequence);
destination = clij2.create([source.getWidth(), source.getDepth(), source.getHeight()], source.getNativeType());
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.resliceTop(source, destination);
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
<a href="https://clij.github.io/clij2-docs/md/drosophila_max_cylinder_projection"><img src="images/language_macro.png" height="20"/></a> [drosophila_max_cylinder_projection](https://clij.github.io/clij2-docs/md/drosophila_max_cylinder_projection)  




### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/drosophila_max_cylinder_projection.ijm"><img src="images/language_macro.png" height="20"/></a> [drosophila_max_cylinder_projection.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/drosophila_max_cylinder_projection.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/jython/interactiveCylinderProjection.py"><img src="images/language_jython.png" height="20"/></a> [interactiveCylinderProjection.py](https://github.com/clij/clij2-docs/blob/master/src/main/jython/interactiveCylinderProjection.py)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/jython/interactiveSphereProjection.py"><img src="images/language_jython.png" height="20"/></a> [interactiveSphereProjection.py](https://github.com/clij/clij2-docs/blob/master/src/main/jython/interactiveSphereProjection.py)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/jython/reslicing.py"><img src="images/language_jython.png" height="20"/></a> [reslicing.py](https://github.com/clij/clij2-docs/blob/master/src/main/jython/reslicing.py)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

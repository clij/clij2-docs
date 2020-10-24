## resample
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_empty_logo.png"/>

Resamples an image with given size factors using an affine transform.

Category: [Transformations](https://clij.github.io/clij2-docs/reference__transform)

### resample often follows after
* <a href="reference_maximumImageAndScalar">maximumImageAndScalar</a> (2)
* <a href="reference_maximumXProjection">maximumXProjection</a> (2)
* <a href="reference_maximumYProjection">maximumYProjection</a> (2)


### resample is often followed by
* <a href="reference_maximumZProjection">maximumZProjection</a> (2)
* <a href="reference_maximumImages">maximumImages</a> (3)
* <a href="reference_resliceTop">resliceTop</a> (2)


### Usage in ImageJ macro
```
Ext.CLIJ2_resample(Image source, Image destination, Number factorX, Number factorY, Number factorZ, Boolean linearInterpolation);
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
float factorX = 1.0;
float factorY = 2.0;
float factorZ = 3.0;
boolean linearInterpolation = true;
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.resample(source, destination, factorX, factorY, factorZ, linearInterpolation);
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
factorX = 1.0;
factorY = 2.0;
factorZ = 3.0;
linearInterpolation = true;
</pre>

<pre class="highlight">
% Execute operation on GPU
clij2.resample(source, destination, factorX, factorY, factorZ, linearInterpolation);
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
factorX = 1.0;
factorY = 2.0;
factorZ = 3.0;
linearInterpolation = true;
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.resample(source, destination, factorX, factorY, factorZ, linearInterpolation);
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
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/orthogonalMaximumProjections.ijm"><img src="images/language_macro.png" height="20"/></a> [orthogonalMaximumProjections.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/orthogonalMaximumProjections.ijm)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

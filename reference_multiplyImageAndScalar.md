## multiplyImageAndScalar
<img src="images/mini_clij1_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/>

Multiplies all pixels value x in a given image X with a constant scalar s.

<pre>f(x, s) = x * s</pre>

### multiplyImageAndScalar often follows after
* <a href="reference_multiplyMatrix">multiplyMatrix</a> (2)
* <a href="reference_invert">invert</a> (2)
* <a href="reference_pushArray">pushArray</a> (2)
* <a href="reference_resultsTableToImage2D">resultsTableToImage2D</a> (2)
* <a href="reference_spotsToPointList">spotsToPointList</a> (2)


### multiplyImageAndScalar is often followed by
* <a href="reference_print">print</a> (3)
* <a href="reference_smallerOrEqual">smallerOrEqual</a> (2)
* <a href="reference_transposeXY">transposeXY</a> (2)
* <a href="reference_distanceMatrixToMesh">distanceMatrixToMesh</a> (2)
* <a href="reference_convertUInt16">convertUInt16</a> (2)


### Usage in ImageJ macro
```
Ext.CLIJ2_multiplyImageAndScalar(Image source, Image destination, Number scalar);
```




### Usage in Java


<details>

<summary>
clij2.multiplyImageAndScalar(source, destination, scalar);
</summary>
<pre class="highlight">// init CLIJ and GPU
import net.haesleinhuepf.clij2.CLIJ2;
import net.haesleinhuepf.clij.clearcl.ClearCLBuffer;
CLIJ2 clij2 = CLIJ2.getInstance();

// get input parameters
ClearCLBuffer source = clij2.push(sourceImagePlus);
destination = clij2.create(source);
float scalar = 1.0;
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.multiplyImageAndScalar(source, destination, scalar);
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
clij2.multiplyImageAndScalar(source, destination, scalar);
</summary>
<pre class="highlight">% init CLIJ and GPU
clij2 = init_clatlab();

% get input parameters
source = clij2.pushMat(source_matrix);
destination = clij2.create(source);
scalar = 1.0;
</pre>

<pre class="highlight">
% Execute operation on GPU
clij2.multiplyImageAndScalar(source, destination, scalar);
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
clij2.multiplyImageAndScalar(source, destination, scalar);
</summary>
<pre class="highlight">// init CLIJ and GPU
importClass(net.haesleinhuepf.clicy.CLICY);
importClass(Packages.icy.main.Icy);

clij2 = CLICY.getInstance();

// get input parameters
source_sequence = getSequence();
source = clij2.pushSequence(source_sequence);
destination = clij2.create(source);
scalar = 1.0;
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.multiplyImageAndScalar(source, destination, scalar);
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
<a href="https://clij.github.io/clij2-docs/md/matrix_multiply"><img src="images/language_macro.png" height="20"/></a> [matrix_multiply](https://clij.github.io/clij2-docs/md/matrix_multiply)  
<a href="https://clij.github.io/clij2-docs/md/spots_pointlists_matrices_tables"><img src="images/language_macro.png" height="20"/></a> [spots_pointlists_matrices_tables](https://clij.github.io/clij2-docs/md/spots_pointlists_matrices_tables)  




### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/bitdepthConversion.ijm"><img src="images/language_macro.png" height="20"/></a> [bitdepthConversion.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/bitdepthConversion.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/debugging_pixels.ijm"><img src="images/language_macro.png" height="20"/></a> [debugging_pixels.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/debugging_pixels.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/matrix_multiply.ijm"><img src="images/language_macro.png" height="20"/></a> [matrix_multiply.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/matrix_multiply.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/spots_pointlists_matrices_tables.ijm"><img src="images/language_macro.png" height="20"/></a> [spots_pointlists_matrices_tables.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/spots_pointlists_matrices_tables.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/jython/addImages.py"><img src="images/language_jython.png" height="20"/></a> [addImages.py](https://github.com/clij/clij2-docs/blob/master/src/main/jython/addImages.py)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

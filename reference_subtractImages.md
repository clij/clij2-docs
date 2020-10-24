## subtractImages
<img src="images/mini_clij1_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_empty_logo.png"/>

Subtracts one image X from another image Y pixel wise.

<pre>f(x, y) = x - y</pre>

Category: [Math](https://clij.github.io/clij2-docs/reference__math)

### subtractImages often follows after
* <a href="reference_automaticThreshold">automaticThreshold</a> (2)
* <a href="reference_gaussianBlur3D">gaussianBlur3D</a> (2)
* <a href="reference_minimumYProjection">minimumYProjection</a> (3)
* <a href="reference_medianSliceBySliceSphere">medianSliceBySliceSphere</a> (2)
* <a href="reference_maximum3DBox">maximum3DBox</a> (2)
* <a href="reference_resultsTableToImage2D">resultsTableToImage2D</a> (3)
* <a href="reference_dilateBox">dilateBox</a> (2)


### subtractImages is often followed by
* <a href="reference_downsample2D">downsample2D</a> (2)
* <a href="reference_absolute">absolute</a> (3)
* <a href="reference_transposeXY">transposeXY</a> (3)
* <a href="reference_replaceIntensity">replaceIntensity</a> (2)


### Usage in ImageJ macro
```
Ext.CLIJ2_subtractImages(Image subtrahend, Image minuend, Image destination);
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
ClearCLBuffer subtrahend = clij2.push(subtrahendImagePlus);
ClearCLBuffer minuend = clij2.push(minuendImagePlus);
destination = clij2.create(subtrahend);
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.subtractImages(subtrahend, minuend, destination);
</pre>

<pre class="highlight">
// show result
destinationImagePlus = clij2.pull(destination);
destinationImagePlus.show();

// cleanup memory on GPU
clij2.release(subtrahend);
clij2.release(minuend);
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
subtrahend = clij2.pushMat(subtrahend_matrix);
minuend = clij2.pushMat(minuend_matrix);
destination = clij2.create(subtrahend);
</pre>

<pre class="highlight">
% Execute operation on GPU
clij2.subtractImages(subtrahend, minuend, destination);
</pre>

<pre class="highlight">
% show result
destination = clij2.pullMat(destination)

% cleanup memory on GPU
clij2.release(subtrahend);
clij2.release(minuend);
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
subtrahend_sequence = getSequence();
subtrahend = clij2.pushSequence(subtrahend_sequence);
minuend_sequence = getSequence();
minuend = clij2.pushSequence(minuend_sequence);
destination = clij2.create(subtrahend);
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.subtractImages(subtrahend, minuend, destination);
</pre>

<pre class="highlight">
// show result
destination_sequence = clij2.pullSequence(destination)
Icy.addSequence(destination_sequence);
// cleanup memory on GPU
clij2.release(subtrahend);
clij2.release(minuend);
clij2.release(destination);
</pre>

</details>





### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/backgroundSubtraction.ijm"><img src="images/language_macro.png" height="20"/></a> [backgroundSubtraction.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/backgroundSubtraction.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/topHat.ijm"><img src="images/language_macro.png" height="20"/></a> [topHat.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/topHat.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/workflow.ijm"><img src="images/language_macro.png" height="20"/></a> [workflow.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/workflow.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/jython/backgroundSubtraction.py"><img src="images/language_jython.png" height="20"/></a> [backgroundSubtraction.py](https://github.com/clij/clij2-docs/blob/master/src/main/jython/backgroundSubtraction.py)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

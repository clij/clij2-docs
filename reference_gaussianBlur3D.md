## gaussianBlur3D
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_cle_logo.png"/>

Computes the Gaussian blurred image of an image given two sigma values in X, Y and Z. 

Thus, the filterkernel can have non-isotropic shape.

The implementation is done separable. In case a sigma equals zero, the direction is not blurred.

Categories:  Noise, [Filter](https://clij.github.io/clij2-docs/reference__filter)

### gaussianBlur3D is often followed by
* <a href="reference_subtractImages">subtractImages</a> (1)
* <a href="reference_release">release</a> (1)
* <a href="reference_thresholdDefault">thresholdDefault</a> (1)
* <a href="reference_threshold">threshold</a> (3)
* <a href="reference_thresholdOtsu">thresholdOtsu</a> (1)
* <a href="reference_thresholdTriangle">thresholdTriangle</a> (2)
* <a href="reference_detectMaximaBox">detectMaximaBox</a> (1)


### Usage in ImageJ macro
```
Ext.CLIJ2_gaussianBlur3D(Image source, Image destination, Number sigma_x, Number sigma_y, Number sigma_z);
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
float sigma_x = 1.0;
float sigma_y = 2.0;
float sigma_z = 3.0;
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.gaussianBlur3D(source, destination, sigma_x, sigma_y, sigma_z);
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
sigma_x = 1.0;
sigma_y = 2.0;
sigma_z = 3.0;
</pre>

<pre class="highlight">
% Execute operation on GPU
clij2.gaussianBlur3D(source, destination, sigma_x, sigma_y, sigma_z);
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
sigma_x = 1.0;
sigma_y = 2.0;
sigma_z = 3.0;
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.gaussianBlur3D(source, destination, sigma_x, sigma_y, sigma_z);
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

cle.gaussian_blur(source, destination, sigma_x, sigma_y, sigma_z)

</pre>



</details>





### Example notebooks
<a href="https://clij.github.io/clij2-docs/md/blur"><img src="images/language_macro.png" height="20"/></a> [blur](https://clij.github.io/clij2-docs/md/blur)  
<a href="https://clij.github.io/clij2-docs/md/tribolium_morphometry"><img src="images/language_macro.png" height="20"/></a> [tribolium_morphometry](https://clij.github.io/clij2-docs/md/tribolium_morphometry)  




### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/backgroundSubtraction.ijm"><img src="images/language_macro.png" height="20"/></a> [backgroundSubtraction.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/backgroundSubtraction.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/blur.ijm"><img src="images/language_macro.png" height="20"/></a> [blur.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/blur.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/meshTouchingNeighbors.ijm"><img src="images/language_macro.png" height="20"/></a> [meshTouchingNeighbors.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/meshTouchingNeighbors.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/tribolium_morphometry.ijm"><img src="images/language_macro.png" height="20"/></a> [tribolium_morphometry.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/tribolium_morphometry.ijm)  
<a href="https://github.com/clij/clicy/blob/master/src/main/javascript/blur_frame_by_frame.js"><img src="images/language_javascript.png" height="20"/></a> [blur_frame_by_frame.js](https://github.com/clij/clicy/blob/master/src/main/javascript/blur_frame_by_frame.js)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

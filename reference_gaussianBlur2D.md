## gaussianBlur2D
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_cle_logo.png"/>

Computes the Gaussian blurred image of an image given two sigma values in X and Y. 

Thus, the filterkernel can have non-isotropic shape.

The implementation is done separable. In case a sigma equals zero, the direction is not blurred.

Categories:  Noise, [Filter](https://clij.github.io/clij2-docs/reference__filter)

### gaussianBlur2D often follows after
* <a href="reference_copySlice">copySlice</a> (1)


### gaussianBlur2D is often followed by
* <a href="reference_detectMaxima2DBox">detectMaxima2DBox</a> (5)
* <a href="reference_release">release</a> (1)
* <a href="reference_thresholdOtsu">thresholdOtsu</a> (2)
* <a href="reference_getMeanSquaredError">getMeanSquaredError</a> (1)
* <a href="reference_detectMaximaBox">detectMaximaBox</a> (1)


### Usage in ImageJ macro
```
Ext.CLIJ2_gaussianBlur2D(Image source, Image destination, Number sigma_x, Number sigma_y);
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
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.gaussianBlur2D(source, destination, sigma_x, sigma_y);
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
</pre>

<pre class="highlight">
% Execute operation on GPU
clij2.gaussianBlur2D(source, destination, sigma_x, sigma_y);
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
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.gaussianBlur2D(source, destination, sigma_x, sigma_y);
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

cle.gaussian_blur(source, destination, sigma_x, sigma_y)

</pre>



</details>





### Example notebooks
<a href="https://clij.github.io/clij2-docs/md/basics"><img src="images/language_macro.png" height="20"/></a> [basics](https://clij.github.io/clij2-docs/md/basics)  




### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/basics.ijm"><img src="images/language_macro.png" height="20"/></a> [basics.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/basics.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/mean_squared_error.ijm"><img src="images/language_macro.png" height="20"/></a> [mean_squared_error.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/mean_squared_error.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/push_pull_selections.ijm"><img src="images/language_macro.png" height="20"/></a> [push_pull_selections.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/push_pull_selections.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/push_pull_slices.ijm"><img src="images/language_macro.png" height="20"/></a> [push_pull_slices.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/push_pull_slices.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/spot_distance_measurement.ijm"><img src="images/language_macro.png" height="20"/></a> [spot_distance_measurement.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/spot_distance_measurement.ijm)  
<a href="https://github.com/clij/clicy/blob/master/src/main/javascript/simplePipeline.js"><img src="images/language_javascript.png" height="20"/></a> [simplePipeline.js](https://github.com/clij/clicy/blob/master/src/main/javascript/simplePipeline.js)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

## differenceOfGaussian2D
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_cle_logo.png"/>

Applies Gaussian blur to the input image twice with different sigma values resulting in two images which are then subtracted from each other.

It is recommended to apply this operation to images of type Float (32 bit) as results might be negative.

### Parameters

input : Image
    The input image to be processed.
destination : Image
    The output image where results are written into.
sigma1_x : float
    Sigma of the first Gaussian filter in x
sigma1_y : float
    Sigma of the first Gaussian filter in y
sigma2_x : float
    Sigma of the second Gaussian filter in x
sigma2_y : float
    Sigma of the second Gaussian filter in y

Categories: [Filter](https://clij.github.io/clij2-docs/reference__filter),  Noise, Background

Availability: Available in Fiji by activating the update sites clij and clij2.
This function is part of clij2_-2.5.0.1.jar.

### differenceOfGaussian2D often follows after
* <a href="reference_copySlice">copySlice</a> (1)


### differenceOfGaussian2D is often followed by
* <a href="reference_detectMaxima2DBox">detectMaxima2DBox</a> (1)
* <a href="reference_thresholdOtsu">thresholdOtsu</a> (1)


### Usage in ImageJ macro
```
Ext.CLIJ2_differenceOfGaussian2D(Image input, Image destination, Number sigma1x, Number sigma1y, Number sigma2x, Number sigma2y);
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
ClearCLBuffer input = clij2.push(inputImagePlus);
destination = clij2.create(input);
float sigma1x = 1.0;
float sigma1y = 2.0;
float sigma2x = 3.0;
float sigma2y = 4.0;
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.differenceOfGaussian2D(input, destination, sigma1x, sigma1y, sigma2x, sigma2y);
</pre>

<pre class="highlight">
// show result
destinationImagePlus = clij2.pull(destination);
destinationImagePlus.show();

// cleanup memory on GPU
clij2.release(input);
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
input = clij2.pushMat(input_matrix);
destination = clij2.create(input);
sigma1x = 1.0;
sigma1y = 2.0;
sigma2x = 3.0;
sigma2y = 4.0;
</pre>

<pre class="highlight">
% Execute operation on GPU
clij2.differenceOfGaussian2D(input, destination, sigma1x, sigma1y, sigma2x, sigma2y);
</pre>

<pre class="highlight">
% show result
destination = clij2.pullMat(destination)

% cleanup memory on GPU
clij2.release(input);
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
input_sequence = getSequence();
input = clij2.pushSequence(input_sequence);
destination = clij2.create(input);
sigma1x = 1.0;
sigma1y = 2.0;
sigma2x = 3.0;
sigma2y = 4.0;
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.differenceOfGaussian2D(input, destination, sigma1x, sigma1y, sigma2x, sigma2y);
</pre>

<pre class="highlight">
// show result
destination_sequence = clij2.pullSequence(destination)
Icy.addSequence(destination_sequence);
// cleanup memory on GPU
clij2.release(input);
clij2.release(destination);
</pre>

</details>



<details>

<summary>
clEsperanto Python (experimental)
</summary>
<pre class="highlight">import pyclesperanto_prototype as cle

cle.difference_of_gaussian(input, destination, sigma1_x, sigma1_y, sigma2_x, sigma2_y)

</pre>



</details>





### Example notebooks
<a href="https://clij.github.io/clij2-docs/md/spot_detection"><img src="images/language_macro.png" height="20"/></a> [spot_detection](https://clij.github.io/clij2-docs/md/spot_detection)  




### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/division_visualisation.ijm"><img src="images/language_macro.png" height="20"/></a> [division_visualisation.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/division_visualisation.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/spot_detection.ijm"><img src="images/language_macro.png" height="20"/></a> [spot_detection.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/spot_detection.ijm)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

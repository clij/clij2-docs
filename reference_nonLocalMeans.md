## nonLocalMeans
<img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_empty_logo.png"/>

By Robert Haase, based on work by Loic A. Royer

Applies a non-local means filter using a box neighborhood with a Gaussian weight specified with sigma to the input image.

Categories: [Filter](https://clij.github.io/clij2-docs/reference__filter), Background

Availability: Available in Fiji by activating the update sites clij and clij2.
This function is part of clijx_-0.30.2.0.jar.

### Usage in ImageJ macro
```
Ext.CLIJx_nonLocalMeans(Image input, Image destination, Number radiusX, Number radiusY, Number radiusZ, Number sigma);
```


### Usage in object oriented programming languages



<details>

<summary>
Java
</summary>
<pre class="highlight">// init CLIJ and GPU
import net.haesleinhuepf.clijx.CLIJx;
import net.haesleinhuepf.clij.clearcl.ClearCLBuffer;
CLIJx clijx = CLIJx.getInstance();

// get input parameters
ClearCLBuffer input = clijx.push(inputImagePlus);
destination = clijx.create(input);
int radiusX = 10;
int radiusY = 20;
int radiusZ = 30;
float sigma = 1.0;
</pre>

<pre class="highlight">
// Execute operation on GPU
clijx.nonLocalMeans(input, destination, radiusX, radiusY, radiusZ, sigma);
</pre>

<pre class="highlight">
// show result
destinationImagePlus = clijx.pull(destination);
destinationImagePlus.show();

// cleanup memory on GPU
clijx.release(input);
clijx.release(destination);
</pre>

</details>



<details>

<summary>
Matlab
</summary>
<pre class="highlight">% init CLIJ and GPU
clijx = init_clatlabx();

% get input parameters
input = clijx.pushMat(input_matrix);
destination = clijx.create(input);
radiusX = 10;
radiusY = 20;
radiusZ = 30;
sigma = 1.0;
</pre>

<pre class="highlight">
% Execute operation on GPU
clijx.nonLocalMeans(input, destination, radiusX, radiusY, radiusZ, sigma);
</pre>

<pre class="highlight">
% show result
destination = clijx.pullMat(destination)

% cleanup memory on GPU
clijx.release(input);
clijx.release(destination);
</pre>

</details>



[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

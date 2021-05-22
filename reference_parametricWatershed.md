## parametricWatershed
<img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_empty_logo.png"/>

Apply a binary watershed to a binary image and introduce black pixels between objects.

To have control about where objects are cut, the sigma parameters allow to control a Gaussian blur filter applied to the internally used distance map.

Category: [Binary](https://clij.github.io/clij2-docs/reference__binary)

Availability: Available in Fiji by activating the update sites clij and clij2.
This function is part of clijx_-0.31.0.6.jar.

### Usage in ImageJ macro
```
Ext.CLIJx_parametricWatershed(Image binary_source, Image destination, Number sigma_x, Number sigma_y, Number sigma_z);
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
ClearCLBuffer binary_source = clijx.push(binary_sourceImagePlus);
destination = clijx.create(binary_source);
float sigma_x = 1.0;
float sigma_y = 2.0;
float sigma_z = 3.0;
</pre>

<pre class="highlight">
// Execute operation on GPU
clijx.parametricWatershed(binary_source, destination, sigma_x, sigma_y, sigma_z);
</pre>

<pre class="highlight">
// show result
destinationImagePlus = clijx.pull(destination);
destinationImagePlus.show();

// cleanup memory on GPU
clijx.release(binary_source);
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
binary_source = clijx.pushMat(binary_source_matrix);
destination = clijx.create(binary_source);
sigma_x = 1.0;
sigma_y = 2.0;
sigma_z = 3.0;
</pre>

<pre class="highlight">
% Execute operation on GPU
clijx.parametricWatershed(binary_source, destination, sigma_x, sigma_y, sigma_z);
</pre>

<pre class="highlight">
% show result
destination = clijx.pullMat(destination)

% cleanup memory on GPU
clijx.release(binary_source);
clijx.release(destination);
</pre>

</details>



[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

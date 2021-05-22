## findMaxima
<img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_empty_logo.png"/>

Finds and labels local maxima with neighboring maxima and background above a given tolerance threshold.



Categories: [Detection](https://clij.github.io/clij2-docs/reference__detection), [Binary](https://clij.github.io/clij2-docs/reference__binary)

Availability: Available in Fiji by activating the update sites clij and clij2.
This function is part of clijx_-0.31.0.6.jar.

### Usage in ImageJ macro
```
Ext.CLIJx_findMaxima(Image source, Image destination, Number noise_threshold);
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
ClearCLBuffer source = clijx.push(sourceImagePlus);
destination = clijx.create(source);
float noise_threshold = 1.0;
</pre>

<pre class="highlight">
// Execute operation on GPU
clijx.findMaxima(source, destination, noise_threshold);
</pre>

<pre class="highlight">
// show result
destinationImagePlus = clijx.pull(destination);
destinationImagePlus.show();

// cleanup memory on GPU
clijx.release(source);
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
source = clijx.pushMat(source_matrix);
destination = clijx.create(source);
noise_threshold = 1.0;
</pre>

<pre class="highlight">
% Execute operation on GPU
clijx.findMaxima(source, destination, noise_threshold);
</pre>

<pre class="highlight">
% show result
destination = clijx.pullMat(destination)

% cleanup memory on GPU
clijx.release(source);
clijx.release(destination);
</pre>

</details>



[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

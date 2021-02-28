## morphoLibJExtendedMaxima
<img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_empty_logo.png"/>

Apply MorpholibJ's Extended Maxima to an image to produce an image where maxima regions are set to 255 and background to 0. 

The tolerance parameter specifies how deep intensity valley between maxima can be to fuse them while maxima detection.
This operation uses connectivity = 6 (a.k.a. diamond).

Categories: [Binary](https://clij.github.io/clij2-docs/reference__binary), [Detection](https://clij.github.io/clij2-docs/reference__detection)

Availability: Available in Fiji by activating the update sites clij, clij2 and clijx-assistant-extensions.
This function is part of clijx-assistant-morpholibj_-0.4.2.16.jar.

### Usage in ImageJ macro
```
Ext.CLIJx_morphoLibJExtendedMaxima(Image input, Image binary_destination, Number tolerance_threshold);
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
binary_destination = clijx.create(input);
float tolerance_threshold = 1.0;
</pre>

<pre class="highlight">
// Execute operation on GPU
clijx.morphoLibJExtendedMaxima(input, binary_destination, tolerance_threshold);
</pre>

<pre class="highlight">
// show result
binary_destinationImagePlus = clijx.pull(binary_destination);
binary_destinationImagePlus.show();

// cleanup memory on GPU
clijx.release(input);
clijx.release(binary_destination);
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
binary_destination = clijx.create(input);
tolerance_threshold = 1.0;
</pre>

<pre class="highlight">
% Execute operation on GPU
clijx.morphoLibJExtendedMaxima(input, binary_destination, tolerance_threshold);
</pre>

<pre class="highlight">
% show result
binary_destination = clijx.pullMat(binary_destination)

% cleanup memory on GPU
clijx.release(input);
clijx.release(binary_destination);
</pre>

</details>



[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

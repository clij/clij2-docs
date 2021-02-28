## morphoLibJKeepLargestRegion
<img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_empty_logo.png"/>

Apply MorpholibJ Keep Largest Region to a binary image.

Categories: [Binary](https://clij.github.io/clij2-docs/reference__binary), [Filter](https://clij.github.io/clij2-docs/reference__filter)

Availability: Available in Fiji by activating the update sites clij, clij2 and clijx-assistant-extensions.
This function is part of clijx-assistant-morpholibj_-0.4.2.16.jar.

### Usage in ImageJ macro
```
Ext.CLIJx_morphoLibJKeepLargestRegion(Image binary_input, Image binary_destination);
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
ClearCLBuffer binary_input = clijx.push(binary_inputImagePlus);
binary_destination = clijx.create(binary_input);
</pre>

<pre class="highlight">
// Execute operation on GPU
clijx.morphoLibJKeepLargestRegion(binary_input, binary_destination);
</pre>

<pre class="highlight">
// show result
binary_destinationImagePlus = clijx.pull(binary_destination);
binary_destinationImagePlus.show();

// cleanup memory on GPU
clijx.release(binary_input);
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
binary_input = clijx.pushMat(binary_input_matrix);
binary_destination = clijx.create(binary_input);
</pre>

<pre class="highlight">
% Execute operation on GPU
clijx.morphoLibJKeepLargestRegion(binary_input, binary_destination);
</pre>

<pre class="highlight">
% show result
binary_destination = clijx.pullMat(binary_destination)

% cleanup memory on GPU
clijx.release(binary_input);
clijx.release(binary_destination);
</pre>

</details>



[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

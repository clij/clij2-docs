## morphoLibJClassicWatershed
<img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_empty_logo.png"/>

Apply MorpholibJs Classic Watershed to an image.

Connectedness: 4 (2D) / 6 (3D)

Categories: [Binary](https://clij.github.io/clij2-docs/reference__binary), [Filter](https://clij.github.io/clij2-docs/reference__filter), [Labels](https://clij.github.io/clij2-docs/reference__label)

Availability: Available in Fiji by activating the update sites clij, clij2 and clijx-assistant-extensions.
This function is part of clijx-assistant-morpholibj_-0.4.2.22.jar.

### Usage in ImageJ macro
```
Ext.CLIJx_morphoLibJClassicWatershed(Image gradient_input, Image binary_restriction_input, Image destination, Number h_min, Number h_max);
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
ClearCLBuffer gradient_input = clijx.push(gradient_inputImagePlus);
ClearCLBuffer binary_restriction_input = clijx.push(binary_restriction_inputImagePlus);
destination = clijx.create(gradient_input);
float h_min = 1.0;
float h_max = 2.0;
</pre>

<pre class="highlight">
// Execute operation on GPU
clijx.morphoLibJClassicWatershed(gradient_input, binary_restriction_input, destination, h_min, h_max);
</pre>

<pre class="highlight">
// show result
destinationImagePlus = clijx.pull(destination);
destinationImagePlus.show();

// cleanup memory on GPU
clijx.release(gradient_input);
clijx.release(binary_restriction_input);
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
gradient_input = clijx.pushMat(gradient_input_matrix);
binary_restriction_input = clijx.pushMat(binary_restriction_input_matrix);
destination = clijx.create(gradient_input);
h_min = 1.0;
h_max = 2.0;
</pre>

<pre class="highlight">
% Execute operation on GPU
clijx.morphoLibJClassicWatershed(gradient_input, binary_restriction_input, destination, h_min, h_max);
</pre>

<pre class="highlight">
% show result
destination = clijx.pullMat(destination)

% cleanup memory on GPU
clijx.release(gradient_input);
clijx.release(binary_restriction_input);
clijx.release(destination);
</pre>

</details>



[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

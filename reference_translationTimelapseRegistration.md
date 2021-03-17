## translationTimelapseRegistration
<img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_empty_logo.png"/>

Applies 2D translation registration to every pair of t, t+1 slices of a 2D+t image stack.

Availability: Available in Fiji by activating the update sites clij and clij2.
This function is part of clijx_-0.30.1.22.jar.

### Usage in ImageJ macro
```
Ext.CLIJx_translationTimelapseRegistration(Image input, Image output);
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
output = clijx.create(input);
</pre>

<pre class="highlight">
// Execute operation on GPU
clijx.translationTimelapseRegistration(input, output);
</pre>

<pre class="highlight">
// show result
outputImagePlus = clijx.pull(output);
outputImagePlus.show();

// cleanup memory on GPU
clijx.release(input);
clijx.release(output);
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
output = clijx.create(input);
</pre>

<pre class="highlight">
% Execute operation on GPU
clijx.translationTimelapseRegistration(input, output);
</pre>

<pre class="highlight">
% show result
output = clijx.pullMat(output)

% cleanup memory on GPU
clijx.release(input);
clijx.release(output);
</pre>

</details>



[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

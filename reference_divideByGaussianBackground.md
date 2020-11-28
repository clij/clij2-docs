## divideByGaussianBackground
<img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_empty_logo.png"/>

Applies Gaussian blur to the input image and divides the original by the result.

Categories:  Background, [Filter](https://clij.github.io/clij2-docs/reference__filter)

### Usage in ImageJ macro
```
Ext.CLIJx_divideByGaussianBackground(Image input, Image destination, Number sigmaX, Number sigmaY, Number sigmaZ);
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
float sigmaX = 1.0;
float sigmaY = 2.0;
float sigmaZ = 3.0;
</pre>

<pre class="highlight">
// Execute operation on GPU
clijx.divideByGaussianBackground(input, destination, sigmaX, sigmaY, sigmaZ);
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
sigmaX = 1.0;
sigmaY = 2.0;
sigmaZ = 3.0;
</pre>

<pre class="highlight">
% Execute operation on GPU
clijx.divideByGaussianBackground(input, destination, sigmaX, sigmaY, sigmaZ);
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

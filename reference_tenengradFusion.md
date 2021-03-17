## tenengradFusion
<img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_empty_logo.png"/>

By Robert Haase based on work by Uwe Schmidt

Fuses #n# image stacks using Tenengrads algorithm.

Availability: Available in Fiji by activating the update sites clij and clij2.
This function is part of clijx_-0.30.1.22.jar.

### Usage in ImageJ macro
```
Ext.CLIJx_tenengradFusion(Image input, Image destination, Number number_of_substacks, Number sigmaX, Number sigmaY, Number sigmaZ, Number exponent);
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
int number_of_substacks = 10;
float sigmaX = 1.0;
float sigmaY = 2.0;
float sigmaZ = 3.0;
float exponent = 4.0;
</pre>

<pre class="highlight">
// Execute operation on GPU
clijx.tenengradFusion(input, destination, number_of_substacks, sigmaX, sigmaY, sigmaZ, exponent);
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
number_of_substacks = 10;
sigmaX = 1.0;
sigmaY = 2.0;
sigmaZ = 3.0;
exponent = 4.0;
</pre>

<pre class="highlight">
% Execute operation on GPU
clijx.tenengradFusion(input, destination, number_of_substacks, sigmaX, sigmaY, sigmaZ, exponent);
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

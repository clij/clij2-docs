## extrema
<img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_empty_logo.png"/>

Returns an image with pixel values most distant from 0: 

f(x, y) = x if abs(x) > abs(y), y else.

Availability: Available in Fiji by activating the update sites clij and clij2.
This function is part of clijx_-0.32.0.1.jar.

### Usage in ImageJ macro
```
Ext.CLIJx_extrema(Image input1, Image input2, Image destination);
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
ClearCLBuffer input1 = clijx.push(input1ImagePlus);
ClearCLBuffer input2 = clijx.push(input2ImagePlus);
destination = clijx.create(input1);
</pre>

<pre class="highlight">
// Execute operation on GPU
clijx.extrema(input1, input2, destination);
</pre>

<pre class="highlight">
// show result
destinationImagePlus = clijx.pull(destination);
destinationImagePlus.show();

// cleanup memory on GPU
clijx.release(input1);
clijx.release(input2);
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
input1 = clijx.pushMat(input1_matrix);
input2 = clijx.pushMat(input2_matrix);
destination = clijx.create(input1);
</pre>

<pre class="highlight">
% Execute operation on GPU
clijx.extrema(input1, input2, destination);
</pre>

<pre class="highlight">
% show result
destination = clijx.pullMat(destination)

% cleanup memory on GPU
clijx.release(input1);
clijx.release(input2);
clijx.release(destination);
</pre>

</details>



[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

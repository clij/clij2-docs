## different
<img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_empty_logo.png"/>

Determines the absolute difference between two images and sets all pixels to 1 where it is above a given tolerance, and 0 otherwise.

Category: [Math](https://clij.github.io/clij2-docs/reference__math)

### Usage in ImageJ macro
```
Ext.CLIJx_different(Image input_image1, Image input_image2, Image binary_destination, Number tolerance);
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
ClearCLBuffer input_image1 = clijx.push(input_image1ImagePlus);
ClearCLBuffer input_image2 = clijx.push(input_image2ImagePlus);
binary_destination = clijx.create(input_image1);
float tolerance = 1.0;
</pre>

<pre class="highlight">
// Execute operation on GPU
clijx.different(input_image1, input_image2, binary_destination, tolerance);
</pre>

<pre class="highlight">
// show result
binary_destinationImagePlus = clijx.pull(binary_destination);
binary_destinationImagePlus.show();

// cleanup memory on GPU
clijx.release(input_image1);
clijx.release(input_image2);
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
input_image1 = clijx.pushMat(input_image1_matrix);
input_image2 = clijx.pushMat(input_image2_matrix);
binary_destination = clijx.create(input_image1);
tolerance = 1.0;
</pre>

<pre class="highlight">
% Execute operation on GPU
clijx.different(input_image1, input_image2, binary_destination, tolerance);
</pre>

<pre class="highlight">
% show result
binary_destination = clijx.pullMat(binary_destination)

% cleanup memory on GPU
clijx.release(input_image1);
clijx.release(input_image2);
clijx.release(binary_destination);
</pre>

</details>



[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

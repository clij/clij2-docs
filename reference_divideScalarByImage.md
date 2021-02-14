## divideScalarByImage
<img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_empty_logo.png"/>

Divides a scalar s by image X pixel wise. 

<pre>f(s, x) = s / x</pre>

Category: [Math](https://clij.github.io/clij2-docs/reference__math)

### Usage in ImageJ macro
```
Ext.CLIJx_divideScalarByImage(Image image, Image destination, Number scalar);
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
ClearCLBuffer image = clijx.push(imageImagePlus);
destination = clijx.create(image);
float scalar = 1.0;
</pre>

<pre class="highlight">
// Execute operation on GPU
clijx.divideScalarByImage(image, destination, scalar);
</pre>

<pre class="highlight">
// show result
destinationImagePlus = clijx.pull(destination);
destinationImagePlus.show();

// cleanup memory on GPU
clijx.release(image);
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
image = clijx.pushMat(image_matrix);
destination = clijx.create(image);
scalar = 1.0;
</pre>

<pre class="highlight">
% Execute operation on GPU
clijx.divideScalarByImage(image, destination, scalar);
</pre>

<pre class="highlight">
% show result
destination = clijx.pullMat(destination)

% cleanup memory on GPU
clijx.release(image);
clijx.release(destination);
</pre>

</details>



[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

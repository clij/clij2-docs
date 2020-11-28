## extendedDepthOfFocusTenengradProjection
<img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_empty_logo.png"/>

Extended depth of focus projection maximizing intensity in the local sobel image.

The sigma parameter allows controlling an Gaussian blur which should smooth the altitude map.

Category: [Projections](https://clij.github.io/clij2-docs/reference__project)

### Usage in ImageJ macro
```
Ext.CLIJx_extendedDepthOfFocusTenengradProjection(Image source, Image destination, Number sigma);
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
float sigma = 1.0;
</pre>

<pre class="highlight">
// Execute operation on GPU
clijx.extendedDepthOfFocusTenengradProjection(source, destination, sigma);
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
sigma = 1.0;
</pre>

<pre class="highlight">
% Execute operation on GPU
clijx.extendedDepthOfFocusTenengradProjection(source, destination, sigma);
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

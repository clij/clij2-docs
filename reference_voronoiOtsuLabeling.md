## voronoiOtsuLabeling
<img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_empty_logo.png"/>

Applies two Gaussian blurs, spot detection, Otsu-thresholding and Voronoi-labeling.
The thresholded binary image is flooded using the Voronoi approach starting from the found local maxima.
Noise-removal sigma for spot detection and thresholding can be configured separately.

Category: [Labels](https://clij.github.io/clij2-docs/reference__label)

### Usage in ImageJ macro
```
Ext.CLIJx_voronoiOtsuLabeling(Image input, Image destination, Number spot_sigma, Number outline_sigma);
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
float spot_sigma = 1.0;
float outline_sigma = 2.0;
</pre>

<pre class="highlight">
// Execute operation on GPU
clijx.voronoiOtsuLabeling(input, destination, spot_sigma, outline_sigma);
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
spot_sigma = 1.0;
outline_sigma = 2.0;
</pre>

<pre class="highlight">
% Execute operation on GPU
clijx.voronoiOtsuLabeling(input, destination, spot_sigma, outline_sigma);
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

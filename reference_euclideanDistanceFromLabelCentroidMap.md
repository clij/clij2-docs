## euclideanDistanceFromLabelCentroidMap
<img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_empty_logo.png"/>

Takes a label map, determines the centroids of all labels and writes the distance of all labelled pixels to their centroid in the result image.
Background pixels stay zero.

Categories: [Measurements](https://clij.github.io/clij2-docs/reference__measurement), [Labels](https://clij.github.io/clij2-docs/reference__label)

### Usage in ImageJ macro
```
Ext.CLIJx_euclideanDistanceFromLabelCentroidMap(Image labelmap_input, Image destination);
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
ClearCLBuffer labelmap_input = clijx.push(labelmap_inputImagePlus);
destination = clijx.create(labelmap_input);
</pre>

<pre class="highlight">
// Execute operation on GPU
clijx.euclideanDistanceFromLabelCentroidMap(labelmap_input, destination);
</pre>

<pre class="highlight">
// show result
destinationImagePlus = clijx.pull(destination);
destinationImagePlus.show();

// cleanup memory on GPU
clijx.release(labelmap_input);
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
labelmap_input = clijx.pushMat(labelmap_input_matrix);
destination = clijx.create(labelmap_input);
</pre>

<pre class="highlight">
% Execute operation on GPU
clijx.euclideanDistanceFromLabelCentroidMap(labelmap_input, destination);
</pre>

<pre class="highlight">
% show result
destination = clijx.pullMat(destination)

% cleanup memory on GPU
clijx.release(labelmap_input);
clijx.release(destination);
</pre>

</details>



[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

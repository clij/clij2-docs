## readValuesFromPositions
<img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_empty_logo.png"/>

Takes a pointlist and a parametric image and reads parametric values from the positions.

The read intensity values are stored in a new vector.

### Parameters

pointlist
map_image
values_destination

Category: [Measurements](https://clij.github.io/clij2-docs/reference__measurement)

### Usage in ImageJ macro
```
Ext.CLIJx_readValuesFromPositions(Image pointlist, Image map_image, Image values_destination);
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
ClearCLBuffer pointlist = clijx.push(pointlistImagePlus);
ClearCLBuffer map_image = clijx.push(map_imageImagePlus);
values_destination = clijx.create(pointlist);
</pre>

<pre class="highlight">
// Execute operation on GPU
clijx.readValuesFromPositions(pointlist, map_image, values_destination);
</pre>

<pre class="highlight">
// show result
values_destinationImagePlus = clijx.pull(values_destination);
values_destinationImagePlus.show();

// cleanup memory on GPU
clijx.release(pointlist);
clijx.release(map_image);
clijx.release(values_destination);
</pre>

</details>



<details>

<summary>
Matlab
</summary>
<pre class="highlight">% init CLIJ and GPU
clijx = init_clatlabx();

% get input parameters
pointlist = clijx.pushMat(pointlist_matrix);
map_image = clijx.pushMat(map_image_matrix);
values_destination = clijx.create(pointlist);
</pre>

<pre class="highlight">
% Execute operation on GPU
clijx.readValuesFromPositions(pointlist, map_image, values_destination);
</pre>

<pre class="highlight">
% show result
values_destination = clijx.pullMat(values_destination)

% cleanup memory on GPU
clijx.release(pointlist);
clijx.release(map_image);
clijx.release(values_destination);
</pre>

</details>



[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)
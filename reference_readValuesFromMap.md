## readValuesFromMap
<img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_empty_logo.png"/>

Takes a label image and an parametric image and reads parametric values from the labels positions.

The read intensity valus are stored in a new vector.

Note: This will only work if all labels have number of voxels == 1 or if all pixels in each label have the same value.

### Parameters

labels
map_image
values_destination

Categories: [Labels](https://clij.github.io/clij2-docs/reference__label), [Measurements](https://clij.github.io/clij2-docs/reference__measurement), [Graphs](https://clij.github.io/clij2-docs/reference__graph)

Availability: Available in Fiji by activating the update sites clij and clij2.
This function is part of clijx_-0.30.1.22.jar.

### Usage in ImageJ macro
```
Ext.CLIJx_readValuesFromMap(Image labels, Image map_image, Image values_destination);
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
ClearCLBuffer labels = clijx.push(labelsImagePlus);
ClearCLBuffer map_image = clijx.push(map_imageImagePlus);
values_destination = clijx.create(labels);
</pre>

<pre class="highlight">
// Execute operation on GPU
clijx.readValuesFromMap(labels, map_image, values_destination);
</pre>

<pre class="highlight">
// show result
values_destinationImagePlus = clijx.pull(values_destination);
values_destinationImagePlus.show();

// cleanup memory on GPU
clijx.release(labels);
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
labels = clijx.pushMat(labels_matrix);
map_image = clijx.pushMat(map_image_matrix);
values_destination = clijx.create(labels);
</pre>

<pre class="highlight">
% Execute operation on GPU
clijx.readValuesFromMap(labels, map_image, values_destination);
</pre>

<pre class="highlight">
% show result
values_destination = clijx.pullMat(values_destination)

% cleanup memory on GPU
clijx.release(labels);
clijx.release(map_image);
clijx.release(values_destination);
</pre>

</details>



[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

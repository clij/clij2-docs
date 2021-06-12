## readValuesFromMap
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_empty_logo.png"/>

Takes a label image and an parametric image and reads parametric values from the labels positions.

The read intensity valus are stored in a new vector.

Note: This will only work if all labels have number of voxels == 1 or if all pixels in each label have the same value.

### Parameters

labels
map_image
values_destination

Categories: [Labels](https://clij.github.io/clij2-docs/reference__label), [Measurements](https://clij.github.io/clij2-docs/reference__measurement), [Graphs](https://clij.github.io/clij2-docs/reference__graph)

Availability: Available in Fiji by activating the update sites clij and clij2.
This function is part of clij2_-2.5.0.1.jar.

### Usage in ImageJ macro
```
Ext.CLIJ2_readValuesFromMap(Image labels, Image map_image, Image values_destination);
```


### Usage in object oriented programming languages



<details>

<summary>
Java
</summary>
<pre class="highlight">// init CLIJ and GPU
import net.haesleinhuepf.clij2.CLIJ2;
import net.haesleinhuepf.clij.clearcl.ClearCLBuffer;
CLIJ2 clij2 = CLIJ2.getInstance();

// get input parameters
ClearCLBuffer labels = clij2.push(labelsImagePlus);
ClearCLBuffer map_image = clij2.push(map_imageImagePlus);
values_destination = clij2.create(labels);
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.readValuesFromMap(labels, map_image, values_destination);
</pre>

<pre class="highlight">
// show result
values_destinationImagePlus = clij2.pull(values_destination);
values_destinationImagePlus.show();

// cleanup memory on GPU
clij2.release(labels);
clij2.release(map_image);
clij2.release(values_destination);
</pre>

</details>



<details>

<summary>
Matlab
</summary>
<pre class="highlight">% init CLIJ and GPU
clij2 = init_clatlab();

% get input parameters
labels = clij2.pushMat(labels_matrix);
map_image = clij2.pushMat(map_image_matrix);
values_destination = clij2.create(labels);
</pre>

<pre class="highlight">
% Execute operation on GPU
clij2.readValuesFromMap(labels, map_image, values_destination);
</pre>

<pre class="highlight">
% show result
values_destination = clij2.pullMat(values_destination)

% cleanup memory on GPU
clij2.release(labels);
clij2.release(map_image);
clij2.release(values_destination);
</pre>

</details>



<details>

<summary>
Icy JavaScript
</summary>
<pre class="highlight">// init CLIJ and GPU
importClass(net.haesleinhuepf.clicy.CLICY);
importClass(Packages.icy.main.Icy);

clij2 = CLICY.getInstance();

// get input parameters
labels_sequence = getSequence();
labels = clij2.pushSequence(labels_sequence);
map_image_sequence = getSequence();
map_image = clij2.pushSequence(map_image_sequence);
values_destination = clij2.create(labels);
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.readValuesFromMap(labels, map_image, values_destination);
</pre>

<pre class="highlight">
// show result
values_destination_sequence = clij2.pullSequence(values_destination)
Icy.addSequence(values_destination_sequence);
// cleanup memory on GPU
clij2.release(labels);
clij2.release(map_image);
clij2.release(values_destination);
</pre>

</details>



[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

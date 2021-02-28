## neighborCountWithTouchPortionAboveThresholdMap
<img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_empty_logo.png"/>

Starts from a label map, determines touch portion to neighbors, counts those above a given value (between 0 and 1) and draws a map.



Categories: [Graphs](https://clij.github.io/clij2-docs/reference__graph), [Labels](https://clij.github.io/clij2-docs/reference__label), [Measurements](https://clij.github.io/clij2-docs/reference__measurement)

Availability: Available in Fiji by activating the update sites clij and clij2.
This function is part of clijx_-0.30.1.21.jar.

### Usage in ImageJ macro
```
Ext.CLIJx_neighborCountWithTouchPortionAboveThresholdMap(Image labels, Image map_destination, Number minimum_touch_portion);
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
map_destination = clijx.create(labels);
float minimum_touch_portion = 1.0;
</pre>

<pre class="highlight">
// Execute operation on GPU
clijx.neighborCountWithTouchPortionAboveThresholdMap(labels, map_destination, minimum_touch_portion);
</pre>

<pre class="highlight">
// show result
map_destinationImagePlus = clijx.pull(map_destination);
map_destinationImagePlus.show();

// cleanup memory on GPU
clijx.release(labels);
clijx.release(map_destination);
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
map_destination = clijx.create(labels);
minimum_touch_portion = 1.0;
</pre>

<pre class="highlight">
% Execute operation on GPU
clijx.neighborCountWithTouchPortionAboveThresholdMap(labels, map_destination, minimum_touch_portion);
</pre>

<pre class="highlight">
% show result
map_destination = clijx.pullMat(map_destination)

% cleanup memory on GPU
clijx.release(labels);
clijx.release(map_destination);
</pre>

</details>



[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

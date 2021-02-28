## labelProximalNeighborCountMap
<img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_empty_logo.png"/>

By Robert Haase, Kisha Sivanathan

Takes two label maps, and counts for every label in label map 1 how many labels are in a given distance range to it in label map 2.

Distances are computed from the centroids of the labels. The resulting map is generated from the label map 1 by replacing the labels with the respective count.

Categories: [Labels](https://clij.github.io/clij2-docs/reference__label), [Measurements](https://clij.github.io/clij2-docs/reference__measurement), Visualisation

Availability: Available in Fiji by activating the update sites clij and clij2.
This function is part of clijx_-0.30.1.21.jar.

### Usage in ImageJ macro
```
Ext.CLIJx_labelProximalNeighborCountMap(Image label_map1, Image label_map2, Image proximal_neighbor_count_map_destination, Number min_distance, Number max_distance);
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
ClearCLBuffer label_map1 = clijx.push(label_map1ImagePlus);
ClearCLBuffer label_map2 = clijx.push(label_map2ImagePlus);
proximal_neighbor_count_map_destination = clijx.create(label_map1);
float min_distance = 1.0;
float max_distance = 2.0;
</pre>

<pre class="highlight">
// Execute operation on GPU
clijx.labelProximalNeighborCountMap(label_map1, label_map2, proximal_neighbor_count_map_destination, min_distance, max_distance);
</pre>

<pre class="highlight">
// show result
proximal_neighbor_count_map_destinationImagePlus = clijx.pull(proximal_neighbor_count_map_destination);
proximal_neighbor_count_map_destinationImagePlus.show();

// cleanup memory on GPU
clijx.release(label_map1);
clijx.release(label_map2);
clijx.release(proximal_neighbor_count_map_destination);
</pre>

</details>



<details>

<summary>
Matlab
</summary>
<pre class="highlight">% init CLIJ and GPU
clijx = init_clatlabx();

% get input parameters
label_map1 = clijx.pushMat(label_map1_matrix);
label_map2 = clijx.pushMat(label_map2_matrix);
proximal_neighbor_count_map_destination = clijx.create(label_map1);
min_distance = 1.0;
max_distance = 2.0;
</pre>

<pre class="highlight">
% Execute operation on GPU
clijx.labelProximalNeighborCountMap(label_map1, label_map2, proximal_neighbor_count_map_destination, min_distance, max_distance);
</pre>

<pre class="highlight">
% show result
proximal_neighbor_count_map_destination = clijx.pullMat(proximal_neighbor_count_map_destination)

% cleanup memory on GPU
clijx.release(label_map1);
clijx.release(label_map2);
clijx.release(proximal_neighbor_count_map_destination);
</pre>

</details>



[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

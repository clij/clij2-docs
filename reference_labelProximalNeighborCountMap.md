## labelProximalNeighborCountMap
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_empty_logo.png"/>

By Robert Haase, Kisha Sivanathan

Takes two label maps, and counts for every label in label map 1 how many labels are in a given distance range to it in label map 2.

Distances are computed from the centroids of the labels. The resulting map is generated from the label map 1 by replacing the labels with the respective count.

Categories: [Labels](https://clij.github.io/clij2-docs/reference__label), [Measurements](https://clij.github.io/clij2-docs/reference__measurement), Visualisation

Availability: Available in Fiji by activating the update sites clij and clij2.
This function is part of clij2_-2.5.0.1.jar.

### Usage in ImageJ macro
```
Ext.CLIJ2_labelProximalNeighborCountMap(Image label_map1, Image label_map2, Image proximal_neighbor_count_map_destination, Number min_distance, Number max_distance);
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
ClearCLBuffer label_map1 = clij2.push(label_map1ImagePlus);
ClearCLBuffer label_map2 = clij2.push(label_map2ImagePlus);
proximal_neighbor_count_map_destination = clij2.create(label_map1);
float min_distance = 1.0;
float max_distance = 2.0;
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.labelProximalNeighborCountMap(label_map1, label_map2, proximal_neighbor_count_map_destination, min_distance, max_distance);
</pre>

<pre class="highlight">
// show result
proximal_neighbor_count_map_destinationImagePlus = clij2.pull(proximal_neighbor_count_map_destination);
proximal_neighbor_count_map_destinationImagePlus.show();

// cleanup memory on GPU
clij2.release(label_map1);
clij2.release(label_map2);
clij2.release(proximal_neighbor_count_map_destination);
</pre>

</details>



<details>

<summary>
Matlab
</summary>
<pre class="highlight">% init CLIJ and GPU
clij2 = init_clatlab();

% get input parameters
label_map1 = clij2.pushMat(label_map1_matrix);
label_map2 = clij2.pushMat(label_map2_matrix);
proximal_neighbor_count_map_destination = clij2.create(label_map1);
min_distance = 1.0;
max_distance = 2.0;
</pre>

<pre class="highlight">
% Execute operation on GPU
clij2.labelProximalNeighborCountMap(label_map1, label_map2, proximal_neighbor_count_map_destination, min_distance, max_distance);
</pre>

<pre class="highlight">
% show result
proximal_neighbor_count_map_destination = clij2.pullMat(proximal_neighbor_count_map_destination)

% cleanup memory on GPU
clij2.release(label_map1);
clij2.release(label_map2);
clij2.release(proximal_neighbor_count_map_destination);
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
label_map1_sequence = getSequence();
label_map1 = clij2.pushSequence(label_map1_sequence);
label_map2_sequence = getSequence();
label_map2 = clij2.pushSequence(label_map2_sequence);
proximal_neighbor_count_map_destination = clij2.create(label_map1);
min_distance = 1.0;
max_distance = 2.0;
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.labelProximalNeighborCountMap(label_map1, label_map2, proximal_neighbor_count_map_destination, min_distance, max_distance);
</pre>

<pre class="highlight">
// show result
proximal_neighbor_count_map_destination_sequence = clij2.pullSequence(proximal_neighbor_count_map_destination)
Icy.addSequence(proximal_neighbor_count_map_destination_sequence);
// cleanup memory on GPU
clij2.release(label_map1);
clij2.release(label_map2);
clij2.release(proximal_neighbor_count_map_destination);
</pre>

</details>



[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

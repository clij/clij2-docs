## minimumDistanceOfTouchingNeighbors
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_cle_logo.png"/>

Takes a touch matrix and a distance matrix to determine the shortest distance of touching neighbors for every object.

Categories: [Measurements](https://clij.github.io/clij2-docs/reference__measurement), [Graphs](https://clij.github.io/clij2-docs/reference__graph)

Availability: Available in Fiji by activating the update sites clij and clij2.
This function is part of clij2_-2.5.0.1.jar.

### Usage in ImageJ macro
```
Ext.CLIJ2_minimumDistanceOfTouchingNeighbors(Image distance_matrix, Image touch_matrix, Image minimum_distancelist_destination);
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
ClearCLBuffer distance_matrix = clij2.push(distance_matrixImagePlus);
ClearCLBuffer touch_matrix = clij2.push(touch_matrixImagePlus);
minimum_distancelist_destination = clij2.create(distance_matrix);
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.minimumDistanceOfTouchingNeighbors(distance_matrix, touch_matrix, minimum_distancelist_destination);
</pre>

<pre class="highlight">
// show result
minimum_distancelist_destinationImagePlus = clij2.pull(minimum_distancelist_destination);
minimum_distancelist_destinationImagePlus.show();

// cleanup memory on GPU
clij2.release(distance_matrix);
clij2.release(touch_matrix);
clij2.release(minimum_distancelist_destination);
</pre>

</details>



<details>

<summary>
Matlab
</summary>
<pre class="highlight">% init CLIJ and GPU
clij2 = init_clatlab();

% get input parameters
distance_matrix = clij2.pushMat(distance_matrix_matrix);
touch_matrix = clij2.pushMat(touch_matrix_matrix);
minimum_distancelist_destination = clij2.create(distance_matrix);
</pre>

<pre class="highlight">
% Execute operation on GPU
clij2.minimumDistanceOfTouchingNeighbors(distance_matrix, touch_matrix, minimum_distancelist_destination);
</pre>

<pre class="highlight">
% show result
minimum_distancelist_destination = clij2.pullMat(minimum_distancelist_destination)

% cleanup memory on GPU
clij2.release(distance_matrix);
clij2.release(touch_matrix);
clij2.release(minimum_distancelist_destination);
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
distance_matrix_sequence = getSequence();
distance_matrix = clij2.pushSequence(distance_matrix_sequence);
touch_matrix_sequence = getSequence();
touch_matrix = clij2.pushSequence(touch_matrix_sequence);
minimum_distancelist_destination = clij2.create(distance_matrix);
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.minimumDistanceOfTouchingNeighbors(distance_matrix, touch_matrix, minimum_distancelist_destination);
</pre>

<pre class="highlight">
// show result
minimum_distancelist_destination_sequence = clij2.pullSequence(minimum_distancelist_destination)
Icy.addSequence(minimum_distancelist_destination_sequence);
// cleanup memory on GPU
clij2.release(distance_matrix);
clij2.release(touch_matrix);
clij2.release(minimum_distancelist_destination);
</pre>

</details>



<details>

<summary>
clEsperanto Python (experimental)
</summary>
<pre class="highlight">import pyclesperanto_prototype as cle

cle.minimum_distance_of_touching_neighbors(distance_matrix, touch_matrix, minimum_distancelist_destination)

</pre>



</details>





### Example notebooks
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/neighbors/shape_descriptors_based_on_neighborhood_graphs.ipynb"><img src="images/language_python.png" height="20"/></a> [shape_descriptors_based_on_neighborhood_graphs.ipynb](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/neighbors/shape_descriptors_based_on_neighborhood_graphs.ipynb)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

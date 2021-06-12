## pointlistToLabelledSpots
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_cle_logo.png"/>

Takes a pointlist with dimensions n times d with n point coordinates in d dimensions and labels corresponding pixels.

Category: [Labels](https://clij.github.io/clij2-docs/reference__label)

Availability: Available in Fiji by activating the update sites clij and clij2.
This function is part of clij2_-2.5.0.1.jar.

### pointlistToLabelledSpots often follows after
* <a href="reference_create2D">create2D</a> (1)


### pointlistToLabelledSpots is often followed by
* <a href="reference_labelVoronoiOctagon">labelVoronoiOctagon</a> (4)


### Usage in ImageJ macro
```
Ext.CLIJ2_pointlistToLabelledSpots(Image pointlist, Image spots_destination);
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
ClearCLBuffer pointlist = clij2.push(pointlistImagePlus);
spots_destination = clij2.create(pointlist);
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.pointlistToLabelledSpots(pointlist, spots_destination);
</pre>

<pre class="highlight">
// show result
spots_destinationImagePlus = clij2.pull(spots_destination);
spots_destinationImagePlus.show();

// cleanup memory on GPU
clij2.release(pointlist);
clij2.release(spots_destination);
</pre>

</details>



<details>

<summary>
Matlab
</summary>
<pre class="highlight">% init CLIJ and GPU
clij2 = init_clatlab();

% get input parameters
pointlist = clij2.pushMat(pointlist_matrix);
spots_destination = clij2.create(pointlist);
</pre>

<pre class="highlight">
% Execute operation on GPU
clij2.pointlistToLabelledSpots(pointlist, spots_destination);
</pre>

<pre class="highlight">
% show result
spots_destination = clij2.pullMat(spots_destination)

% cleanup memory on GPU
clij2.release(pointlist);
clij2.release(spots_destination);
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
pointlist_sequence = getSequence();
pointlist = clij2.pushSequence(pointlist_sequence);
spots_destination = clij2.create(pointlist);
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.pointlistToLabelledSpots(pointlist, spots_destination);
</pre>

<pre class="highlight">
// show result
spots_destination_sequence = clij2.pullSequence(spots_destination)
Icy.addSequence(spots_destination_sequence);
// cleanup memory on GPU
clij2.release(pointlist);
clij2.release(spots_destination);
</pre>

</details>



<details>

<summary>
clEsperanto Python (experimental)
</summary>
<pre class="highlight">import pyclesperanto_prototype as cle

cle.pointlist_to_labelled_spots(pointlist, spots_destination)

</pre>



</details>





### Example notebooks
<a href="https://clij.github.io/clij2-docs/md/filtering_in_graphs"><img src="images/language_macro.png" height="20"/></a> [filtering_in_graphs](https://clij.github.io/clij2-docs/md/filtering_in_graphs)  
<a href="https://clij.github.io/clij2-docs/md/neighbors_of_neighbors"><img src="images/language_macro.png" height="20"/></a> [neighbors_of_neighbors](https://clij.github.io/clij2-docs/md/neighbors_of_neighbors)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/neighbors/mesh_between_touching_neighbors.ipynb"><img src="images/language_python.png" height="20"/></a> [mesh_between_touching_neighbors.ipynb](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/neighbors/mesh_between_touching_neighbors.ipynb)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/neighbors/mesh_nearest_neighbors.ipynb"><img src="images/language_python.png" height="20"/></a> [mesh_nearest_neighbors.ipynb](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/neighbors/mesh_nearest_neighbors.ipynb)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/neighbors/mesh_with_distances.ipynb"><img src="images/language_python.png" height="20"/></a> [mesh_with_distances.ipynb](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/neighbors/mesh_with_distances.ipynb)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/neighbors/shape_descriptors_based_on_neighborhood_graphs.ipynb"><img src="images/language_python.png" height="20"/></a> [shape_descriptors_based_on_neighborhood_graphs.ipynb](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/neighbors/shape_descriptors_based_on_neighborhood_graphs.ipynb)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/benchmarks/connected_component_labeling.ipynb"><img src="images/language_python.png" height="20"/></a> [connected_component_labeling.ipynb](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/benchmarks/connected_component_labeling.ipynb)  




### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/filtering_in_graphs.ijm"><img src="images/language_macro.png" height="20"/></a> [filtering_in_graphs.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/filtering_in_graphs.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/large_matrices.ijm"><img src="images/language_macro.png" height="20"/></a> [large_matrices.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/large_matrices.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/neighbors_of_neighbors.ijm"><img src="images/language_macro.png" height="20"/></a> [neighbors_of_neighbors.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/neighbors_of_neighbors.ijm)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

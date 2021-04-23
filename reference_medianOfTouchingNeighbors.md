## medianOfTouchingNeighbors
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_cle_logo.png"/>

Takes a touch matrix and a vector of values to determine the median value among touching neighbors for every object. 



Categories: [Measurements](https://clij.github.io/clij2-docs/reference__measurement), [Graphs](https://clij.github.io/clij2-docs/reference__graph)

Availability: Available in Fiji by activating the update sites clij and clij2.
This function is part of clij2_-2.2.1.0.jar.

### medianOfTouchingNeighbors often follows after
* <a href="reference_pushArray">pushArray</a> (1)
* <a href="reference_generateTouchMatrix">generateTouchMatrix</a> (1)


### medianOfTouchingNeighbors is often followed by
* <a href="reference_standardDeviationOfTouchingNeighbors">standardDeviationOfTouchingNeighbors</a> (1)
* <a href="reference_replaceIntensities">replaceIntensities</a> (2)


### Usage in ImageJ macro
```
Ext.CLIJ2_medianOfTouchingNeighbors(Image values, Image touch_matrix, Image median_values_destination);
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
ClearCLBuffer values = clij2.push(valuesImagePlus);
ClearCLBuffer touch_matrix = clij2.push(touch_matrixImagePlus);
median_values_destination = clij2.create(values);
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.medianOfTouchingNeighbors(values, touch_matrix, median_values_destination);
</pre>

<pre class="highlight">
// show result
median_values_destinationImagePlus = clij2.pull(median_values_destination);
median_values_destinationImagePlus.show();

// cleanup memory on GPU
clij2.release(values);
clij2.release(touch_matrix);
clij2.release(median_values_destination);
</pre>

</details>



<details>

<summary>
Matlab
</summary>
<pre class="highlight">% init CLIJ and GPU
clij2 = init_clatlab();

% get input parameters
values = clij2.pushMat(values_matrix);
touch_matrix = clij2.pushMat(touch_matrix_matrix);
median_values_destination = clij2.create(values);
</pre>

<pre class="highlight">
% Execute operation on GPU
clij2.medianOfTouchingNeighbors(values, touch_matrix, median_values_destination);
</pre>

<pre class="highlight">
% show result
median_values_destination = clij2.pullMat(median_values_destination)

% cleanup memory on GPU
clij2.release(values);
clij2.release(touch_matrix);
clij2.release(median_values_destination);
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
values_sequence = getSequence();
values = clij2.pushSequence(values_sequence);
touch_matrix_sequence = getSequence();
touch_matrix = clij2.pushSequence(touch_matrix_sequence);
median_values_destination = clij2.create(values);
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.medianOfTouchingNeighbors(values, touch_matrix, median_values_destination);
</pre>

<pre class="highlight">
// show result
median_values_destination_sequence = clij2.pullSequence(median_values_destination)
Icy.addSequence(median_values_destination_sequence);
// cleanup memory on GPU
clij2.release(values);
clij2.release(touch_matrix);
clij2.release(median_values_destination);
</pre>

</details>



<details>

<summary>
clEsperanto Python (experimental)
</summary>
<pre class="highlight">import pyclesperanto_prototype as cle

cle.median_of_touching_neighbors(values, touch_matrix, median_values_destination)

</pre>



</details>





### Example notebooks
<a href="https://clij.github.io/clij2-docs/md/filtering_in_graphs"><img src="images/language_macro.png" height="20"/></a> [filtering_in_graphs](https://clij.github.io/clij2-docs/md/filtering_in_graphs)  
<a href="https://clij.github.io/clij2-docs/md/neighbors_of_neighbors"><img src="images/language_macro.png" height="20"/></a> [neighbors_of_neighbors](https://clij.github.io/clij2-docs/md/neighbors_of_neighbors)  
<a href="https://clij.github.io/clij2-docs/md/tribolium_morphometry"><img src="images/language_macro.png" height="20"/></a> [tribolium_morphometry](https://clij.github.io/clij2-docs/md/tribolium_morphometry)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/neighbors/neighbors_of_neighbors.ipynb"><img src="images/language_python.png" height="20"/></a> [neighbors_of_neighbors.ipynb](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/neighbors/neighbors_of_neighbors.ipynb)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/tissues/tissue_neighborhood_quantification.ipynb"><img src="images/language_python.png" height="20"/></a> [tissue_neighborhood_quantification.ipynb](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/tissues/tissue_neighborhood_quantification.ipynb)  




### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/filtering_in_graphs.ijm"><img src="images/language_macro.png" height="20"/></a> [filtering_in_graphs.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/filtering_in_graphs.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/neighbors_of_neighbors.ijm"><img src="images/language_macro.png" height="20"/></a> [neighbors_of_neighbors.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/neighbors_of_neighbors.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/tribolium_morphometry.ijm"><img src="images/language_macro.png" height="20"/></a> [tribolium_morphometry.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/tribolium_morphometry.ijm)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

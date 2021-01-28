## neighborsOfNeighbors
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_cle_logo.png"/>

Determines neighbors of neigbors from touch matrix and saves the result as a new touch matrix.

Categories: [Filter](https://clij.github.io/clij2-docs/reference__filter), [Graphs](https://clij.github.io/clij2-docs/reference__graph)

### neighborsOfNeighbors often follows after
* <a href="reference_generateTouchMatrix">generateTouchMatrix</a> (1)


### neighborsOfNeighbors is often followed by
* <a href="reference_meanOfTouchingNeighbors">meanOfTouchingNeighbors</a> (1)


### Usage in ImageJ macro
```
Ext.CLIJ2_neighborsOfNeighbors(Image touch_matrix, Image neighbor_matrix_destination);
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
ClearCLBuffer touch_matrix = clij2.push(touch_matrixImagePlus);
neighbor_matrix_destination = clij2.create(touch_matrix);
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.neighborsOfNeighbors(touch_matrix, neighbor_matrix_destination);
</pre>

<pre class="highlight">
// show result
neighbor_matrix_destinationImagePlus = clij2.pull(neighbor_matrix_destination);
neighbor_matrix_destinationImagePlus.show();

// cleanup memory on GPU
clij2.release(touch_matrix);
clij2.release(neighbor_matrix_destination);
</pre>

</details>



<details>

<summary>
Matlab
</summary>
<pre class="highlight">% init CLIJ and GPU
clij2 = init_clatlab();

% get input parameters
touch_matrix = clij2.pushMat(touch_matrix_matrix);
neighbor_matrix_destination = clij2.create(touch_matrix);
</pre>

<pre class="highlight">
% Execute operation on GPU
clij2.neighborsOfNeighbors(touch_matrix, neighbor_matrix_destination);
</pre>

<pre class="highlight">
% show result
neighbor_matrix_destination = clij2.pullMat(neighbor_matrix_destination)

% cleanup memory on GPU
clij2.release(touch_matrix);
clij2.release(neighbor_matrix_destination);
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
touch_matrix_sequence = getSequence();
touch_matrix = clij2.pushSequence(touch_matrix_sequence);
neighbor_matrix_destination = clij2.create(touch_matrix);
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.neighborsOfNeighbors(touch_matrix, neighbor_matrix_destination);
</pre>

<pre class="highlight">
// show result
neighbor_matrix_destination_sequence = clij2.pullSequence(neighbor_matrix_destination)
Icy.addSequence(neighbor_matrix_destination_sequence);
// cleanup memory on GPU
clij2.release(touch_matrix);
clij2.release(neighbor_matrix_destination);
</pre>

</details>



<details>

<summary>
clEsperanto Python (experimental)
</summary>
<pre class="highlight">import pyclesperanto_prototype as cle

cle.neighbors_of_neighbors(touch_matrix, neighbor_matrix_destination)

</pre>



</details>





### Example notebooks
<a href="https://clij.github.io/clij2-docs/md/neighbors_of_neighbors"><img src="images/language_macro.png" height="20"/></a> [neighbors_of_neighbors](https://clij.github.io/clij2-docs/md/neighbors_of_neighbors)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/neighbors/neighbors_of_neighbors.ipynb"><img src="images/language_python.png" height="20"/></a> [neighbors_of_neighbors.ipynb](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/neighbors/neighbors_of_neighbors.ipynb)  




### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/neighbors_of_neighbors.ijm"><img src="images/language_macro.png" height="20"/></a> [neighbors_of_neighbors.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/neighbors_of_neighbors.ijm)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

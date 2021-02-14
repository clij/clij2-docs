## averageDistanceOfTouchingNeighbors
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_cle_logo.png"/>

Takes a touch matrix and a distance matrix to determine the average distance of touching neighbors 
 for every object.

Categories: [Graphs](https://clij.github.io/clij2-docs/reference__graph), [Measurements](https://clij.github.io/clij2-docs/reference__measurement)

### averageDistanceOfTouchingNeighbors often follows after
* <a href="reference_generateDistanceMatrix">generateDistanceMatrix</a> (1)


### Usage in ImageJ macro
```
Ext.CLIJ2_averageDistanceOfTouchingNeighbors(Image distance_matrix, Image touch_matrix, Image average_distancelist_destination);
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
average_distancelist_destination = clij2.create(distance_matrix);
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.averageDistanceOfTouchingNeighbors(distance_matrix, touch_matrix, average_distancelist_destination);
</pre>

<pre class="highlight">
// show result
average_distancelist_destinationImagePlus = clij2.pull(average_distancelist_destination);
average_distancelist_destinationImagePlus.show();

// cleanup memory on GPU
clij2.release(distance_matrix);
clij2.release(touch_matrix);
clij2.release(average_distancelist_destination);
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
average_distancelist_destination = clij2.create(distance_matrix);
</pre>

<pre class="highlight">
% Execute operation on GPU
clij2.averageDistanceOfTouchingNeighbors(distance_matrix, touch_matrix, average_distancelist_destination);
</pre>

<pre class="highlight">
% show result
average_distancelist_destination = clij2.pullMat(average_distancelist_destination)

% cleanup memory on GPU
clij2.release(distance_matrix);
clij2.release(touch_matrix);
clij2.release(average_distancelist_destination);
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
average_distancelist_destination = clij2.create(distance_matrix);
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.averageDistanceOfTouchingNeighbors(distance_matrix, touch_matrix, average_distancelist_destination);
</pre>

<pre class="highlight">
// show result
average_distancelist_destination_sequence = clij2.pullSequence(average_distancelist_destination)
Icy.addSequence(average_distancelist_destination_sequence);
// cleanup memory on GPU
clij2.release(distance_matrix);
clij2.release(touch_matrix);
clij2.release(average_distancelist_destination);
</pre>

</details>



<details>

<summary>
clEsperanto Python (experimental)
</summary>
<pre class="highlight">import pyclesperanto_prototype as cle

cle.average_distance_of_touching_neighbors(distance_matrix, touch_matrix, average_distancelist_destination)

</pre>



</details>





### Example notebooks
<a href="https://clij.github.io/clij2-docs/md/tribolium_morphometry"><img src="images/language_macro.png" height="20"/></a> [tribolium_morphometry](https://clij.github.io/clij2-docs/md/tribolium_morphometry)  




### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/tribolium_morphometry.ijm"><img src="images/language_macro.png" height="20"/></a> [tribolium_morphometry.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/tribolium_morphometry.ijm)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

## shortestDistances
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_empty_logo.png"/>

Determine the shortest distance from a distance matrix. 

This corresponds to the minimum for each individial column.

Categories: [Measurements](https://clij.github.io/clij2-docs/reference__measurement), [Graphs](https://clij.github.io/clij2-docs/reference__graph)

Availability: Available in Fiji by activating the update sites clij and clij2.
This function is part of clij2_-2.2.1.0.jar.

### shortestDistances often follows after
* <a href="reference_generateDistanceMatrix">generateDistanceMatrix</a> (1)


### Usage in ImageJ macro
```
Ext.CLIJ2_shortestDistances(Image distance_matrix, Image destination_minimum_distances);
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
destination_minimum_distances = clij2.create(distance_matrix);
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.shortestDistances(distance_matrix, destination_minimum_distances);
</pre>

<pre class="highlight">
// show result
destination_minimum_distancesImagePlus = clij2.pull(destination_minimum_distances);
destination_minimum_distancesImagePlus.show();

// cleanup memory on GPU
clij2.release(distance_matrix);
clij2.release(destination_minimum_distances);
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
destination_minimum_distances = clij2.create(distance_matrix);
</pre>

<pre class="highlight">
% Execute operation on GPU
clij2.shortestDistances(distance_matrix, destination_minimum_distances);
</pre>

<pre class="highlight">
% show result
destination_minimum_distances = clij2.pullMat(destination_minimum_distances)

% cleanup memory on GPU
clij2.release(distance_matrix);
clij2.release(destination_minimum_distances);
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
destination_minimum_distances = clij2.create(distance_matrix);
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.shortestDistances(distance_matrix, destination_minimum_distances);
</pre>

<pre class="highlight">
// show result
destination_minimum_distances_sequence = clij2.pullSequence(destination_minimum_distances)
Icy.addSequence(destination_minimum_distances_sequence);
// cleanup memory on GPU
clij2.release(distance_matrix);
clij2.release(destination_minimum_distances);
</pre>

</details>





### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/spot_distance_measurement.ijm"><img src="images/language_macro.png" height="20"/></a> [spot_distance_measurement.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/spot_distance_measurement.ijm)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

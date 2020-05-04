## standardDeviationOfTouchingNeighbors
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_empty_logo.png"/>

Takes a touch matrix and a vector of values to determine the standard deviation value among touching neighbors for every object. 



### standardDeviationOfTouchingNeighbors often follows after
* <a href="reference_generateTouchMatrix">generateTouchMatrix</a> (2)
* <a href="reference_medianOfTouchingNeighbors">medianOfTouchingNeighbors</a> (2)
* <a href="reference_averageDistanceOfTouchingNeighbors">averageDistanceOfTouchingNeighbors</a> (2)


### standardDeviationOfTouchingNeighbors is often followed by
* <a href="reference_replaceIntensities">replaceIntensities</a> (2)


### Usage in ImageJ macro
```
Ext.CLIJ2_standardDeviationOfTouchingNeighbors(Image values, Image touch_matrix, ByRef Image standard_deviation_values_destination);
```




### Usage in Java


<details>

<summary>
clij2.standardDeviationOfTouchingNeighbors(values, touch_matrix, standard_deviation_values_destination);
</summary>
<pre class="highlight">// init CLIJ and GPU
import net.haesleinhuepf.clij2.CLIJ2;
import net.haesleinhuepf.clij.clearcl.ClearCLBuffer;
CLIJ2 clij2 = CLIJ2.getInstance();

// get input parameters
ClearCLBuffer values = clij2.push(valuesImagePlus);
ClearCLBuffer touch_matrix = clij2.push(touch_matrixImagePlus);
standard_deviation_values_destination = clij2.create(values);
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.standardDeviationOfTouchingNeighbors(values, touch_matrix, standard_deviation_values_destination);
</pre>

<pre class="highlight">
//show result
standard_deviation_values_destinationImagePlus = clij2.pull(standard_deviation_values_destination);
standard_deviation_values_destinationImagePlus.show();

// cleanup memory on GPU
clij2.release(values);
clij2.release(touch_matrix);
clij2.release(standard_deviation_values_destination);
</pre>

</details>





### Usage in Matlab


<details>

<summary>
clij2.standardDeviationOfTouchingNeighbors(values, touch_matrix, standard_deviation_values_destination);
</summary>
<pre class="highlight">% init CLIJ and GPU
clij2 = init_clatlab();

% get input parameters
values = clij2.pushMat(values_matrix);
touch_matrix = clij2.pushMat(touch_matrix_matrix);
standard_deviation_values_destination = clij2.create(values);
</pre>

<pre class="highlight">
% Execute operation on GPU
clij2.standardDeviationOfTouchingNeighbors(values, touch_matrix, standard_deviation_values_destination);
</pre>

<pre class="highlight">
% show result
standard_deviation_values_destination = clij2.pullMat(standard_deviation_values_destination)

% cleanup memory on GPU
clij2.release(values);
clij2.release(touch_matrix);
clij2.release(standard_deviation_values_destination);
</pre>

</details>





### Usage in Icy


<details>

<summary>
clij2.standardDeviationOfTouchingNeighbors(values, touch_matrix, standard_deviation_values_destination);
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
standard_deviation_values_destination = clij2.create(values);
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.standardDeviationOfTouchingNeighbors(values, touch_matrix, standard_deviation_values_destination);
</pre>

<pre class="highlight">
// show result
standard_deviation_values_destination_sequence = clij2.pullSequence(standard_deviation_values_destination)
Icy.addSequence(standard_deviation_values_destination_sequence);
// cleanup memory on GPU
clij2.release(values);
clij2.release(touch_matrix);
clij2.release(standard_deviation_values_destination);
</pre>

</details>





### Example notebooks
<a href="https://clij.github.io/clij2-docs/md/neighbors_of_neighbors"><img src="images/language_macro.png" height="20"/></a> [neighbors_of_neighbors](https://clij.github.io/clij2-docs/md/neighbors_of_neighbors)  




### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/neighbors_of_neighbors.ijm"><img src="images/language_macro.png" height="20"/></a> [neighbors_of_neighbors.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/neighbors_of_neighbors.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/tribolium_morphometry.ijm"><img src="images/language_macro.png" height="20"/></a> [tribolium_morphometry.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/tribolium_morphometry.ijm)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

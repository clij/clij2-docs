## averageDistanceOfNClosestPoints
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/>

Determines the average of the n closest points for every point in a distance matrix.

This corresponds to the average of the n minimum values (rows) for each column of the distance matrix.

Categories: [Graphs](https://clij.github.io/clij2-docs/reference__graph), [Measurements](https://clij.github.io/clij2-docs/reference__measurement)

### averageDistanceOfNClosestPoints is often followed by
* <a href="reference_release">release</a> (3)


### Usage in ImageJ macro
```
Ext.CLIJ2_averageDistanceOfNClosestPoints(Image distance_matrix, Image distance_list_destination, Number nClosestPointsTofind);
```




### Usage in Java


<details>

<summary>
clij2.averageDistanceOfNClosestPoints(distance_matrix, distance_list_destination, nClosestPointsTofind);
</summary>
<pre class="highlight">// init CLIJ and GPU
import net.haesleinhuepf.clij2.CLIJ2;
import net.haesleinhuepf.clij.clearcl.ClearCLBuffer;
CLIJ2 clij2 = CLIJ2.getInstance();

// get input parameters
ClearCLBuffer distance_matrix = clij2.push(distance_matrixImagePlus);
distance_list_destination = clij2.create(distance_matrix);
int nClosestPointsTofind = 10;
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.averageDistanceOfNClosestPoints(distance_matrix, distance_list_destination, nClosestPointsTofind);
</pre>

<pre class="highlight">
//show result
distance_list_destinationImagePlus = clij2.pull(distance_list_destination);
distance_list_destinationImagePlus.show();

// cleanup memory on GPU
clij2.release(distance_matrix);
clij2.release(distance_list_destination);
</pre>

</details>





### Usage in Matlab


<details>

<summary>
clij2.averageDistanceOfNClosestPoints(distance_matrix, distance_list_destination, nClosestPointsTofind);
</summary>
<pre class="highlight">% init CLIJ and GPU
clij2 = init_clatlab();

% get input parameters
distance_matrix = clij2.pushMat(distance_matrix_matrix);
distance_list_destination = clij2.create(distance_matrix);
nClosestPointsTofind = 10;
</pre>

<pre class="highlight">
% Execute operation on GPU
clij2.averageDistanceOfNClosestPoints(distance_matrix, distance_list_destination, nClosestPointsTofind);
</pre>

<pre class="highlight">
% show result
distance_list_destination = clij2.pullMat(distance_list_destination)

% cleanup memory on GPU
clij2.release(distance_matrix);
clij2.release(distance_list_destination);
</pre>

</details>





### Usage in Icy


<details>

<summary>
clij2.averageDistanceOfNClosestPoints(distance_matrix, distance_list_destination, nClosestPointsTofind);
</summary>
<pre class="highlight">// init CLIJ and GPU
importClass(net.haesleinhuepf.clicy.CLICY);
importClass(Packages.icy.main.Icy);

clij2 = CLICY.getInstance();

// get input parameters
distance_matrix_sequence = getSequence();
distance_matrix = clij2.pushSequence(distance_matrix_sequence);
distance_list_destination = clij2.create(distance_matrix);
nClosestPointsTofind = 10;
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.averageDistanceOfNClosestPoints(distance_matrix, distance_list_destination, nClosestPointsTofind);
</pre>

<pre class="highlight">
// show result
distance_list_destination_sequence = clij2.pullSequence(distance_list_destination)
Icy.addSequence(distance_list_destination_sequence);
// cleanup memory on GPU
clij2.release(distance_matrix);
clij2.release(distance_list_destination);
</pre>

</details>



[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

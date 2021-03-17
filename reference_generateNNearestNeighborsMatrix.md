## generateNNearestNeighborsMatrix
<img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_cle_logo.png"/>

Produces a touch-matrix where the n nearest neighbors are marked as touching neighbors. 

Takes a distance matrix (e.g. derived from a pointlist of centroids) and marks for every column the n smallest
distances as neighbors. The resulting matrix can be use as if it was a touch-matrix (a.k.a. adjacency graph matrix). 

Inspired by a similar implementation in imglib2 [1]

Note: The implementation is limited to square matrices.

### Parameters

distance_marix : Image
touch_matrix_destination : Image
n : int
   number of neighbors
   
References
----------
[1] https://github.com/imglib/imglib2/blob/master/src/main/java/net/imglib2/interpolation/neighborsearch/InverseDistanceWeightingInterpolator.java


Categories: [Graphs](https://clij.github.io/clij2-docs/reference__graph), [Measurements](https://clij.github.io/clij2-docs/reference__measurement)

Availability: Available in Fiji by activating the update sites clij and clij2.
This function is part of clijx_-0.30.1.22.jar.

### Usage in ImageJ macro
```
Ext.CLIJx_generateNNearestNeighborsMatrix(Image distance_matrix, Image touch_matrix_destination, Number n);
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
ClearCLBuffer distance_matrix = clijx.push(distance_matrixImagePlus);
touch_matrix_destination = clijx.create(distance_matrix);
int n = 10;
</pre>

<pre class="highlight">
// Execute operation on GPU
clijx.generateNNearestNeighborsMatrix(distance_matrix, touch_matrix_destination, n);
</pre>

<pre class="highlight">
// show result
touch_matrix_destinationImagePlus = clijx.pull(touch_matrix_destination);
touch_matrix_destinationImagePlus.show();

// cleanup memory on GPU
clijx.release(distance_matrix);
clijx.release(touch_matrix_destination);
</pre>

</details>



<details>

<summary>
Matlab
</summary>
<pre class="highlight">% init CLIJ and GPU
clijx = init_clatlabx();

% get input parameters
distance_matrix = clijx.pushMat(distance_matrix_matrix);
touch_matrix_destination = clijx.create(distance_matrix);
n = 10;
</pre>

<pre class="highlight">
% Execute operation on GPU
clijx.generateNNearestNeighborsMatrix(distance_matrix, touch_matrix_destination, n);
</pre>

<pre class="highlight">
% show result
touch_matrix_destination = clijx.pullMat(touch_matrix_destination)

% cleanup memory on GPU
clijx.release(distance_matrix);
clijx.release(touch_matrix_destination);
</pre>

</details>



<details>

<summary>
clEsperanto Python (experimental)
</summary>
<pre class="highlight">import pyclesperanto_prototype as cle

cle.generate_n_nearest_neighbors_matrix(distance_matrix, touch_matrix_destination, n)

</pre>



</details>



[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

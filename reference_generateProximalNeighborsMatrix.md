## generateProximalNeighborsMatrix
<img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_cle_logo.png"/>

Produces a touch-matrix where the neighbors within a given distance range are marked as touching neighbors.

Takes a distance matrix (e.g. derived from a pointlist of centroids) and marks for every column the neighbors whose
distance lie within a given distance range (>= min and <= max). 
The resulting matrix can be use as if it was a touch-matrix (a.k.a. adjacency graph matrix). 

### Parameters

distance_marix : Image
touch_matrix_destination : Image
min_distance : float, optional
    default : 0
max_distance : float, optional
    default: 10 

Returns
-------
touch_matrix_destination

Categories: [Graphs](https://clij.github.io/clij2-docs/reference__graph), [Measurements](https://clij.github.io/clij2-docs/reference__measurement)

### Usage in ImageJ macro
```
Ext.CLIJx_generateProximalNeighborsMatrix(Image distance_matrix, Image touch_matrix_destination, Number min_distance, Number max_distance);
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
float min_distance = 1.0;
float max_distance = 2.0;
</pre>

<pre class="highlight">
// Execute operation on GPU
clijx.generateProximalNeighborsMatrix(distance_matrix, touch_matrix_destination, min_distance, max_distance);
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
min_distance = 1.0;
max_distance = 2.0;
</pre>

<pre class="highlight">
% Execute operation on GPU
clijx.generateProximalNeighborsMatrix(distance_matrix, touch_matrix_destination, min_distance, max_distance);
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

cle.generate_proximal_neighbors_matrix(distance_matrix, touch_matrix_destination, min_distance, max_distance)

</pre>



</details>



[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

## maximumDistanceOfTouchingNeighbors
<img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_cle_logo.png"/>

Takes a touch matrix and a distance matrix to determine the maximum distance of touching neighbors for every object.

Categories: [Measurements](https://clij.github.io/clij2-docs/reference__measurement), [Graphs](https://clij.github.io/clij2-docs/reference__graph)

### Usage in ImageJ macro
```
Ext.CLIJx_maximumDistanceOfTouchingNeighbors(Image distance_matrix, Image touch_matrix, Image distancelist_destination);
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
ClearCLBuffer touch_matrix = clijx.push(touch_matrixImagePlus);
distancelist_destination = clijx.create(distance_matrix);
</pre>

<pre class="highlight">
// Execute operation on GPU
clijx.maximumDistanceOfTouchingNeighbors(distance_matrix, touch_matrix, distancelist_destination);
</pre>

<pre class="highlight">
// show result
distancelist_destinationImagePlus = clijx.pull(distancelist_destination);
distancelist_destinationImagePlus.show();

// cleanup memory on GPU
clijx.release(distance_matrix);
clijx.release(touch_matrix);
clijx.release(distancelist_destination);
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
touch_matrix = clijx.pushMat(touch_matrix_matrix);
distancelist_destination = clijx.create(distance_matrix);
</pre>

<pre class="highlight">
% Execute operation on GPU
clijx.maximumDistanceOfTouchingNeighbors(distance_matrix, touch_matrix, distancelist_destination);
</pre>

<pre class="highlight">
% show result
distancelist_destination = clijx.pullMat(distancelist_destination)

% cleanup memory on GPU
clijx.release(distance_matrix);
clijx.release(touch_matrix);
clijx.release(distancelist_destination);
</pre>

</details>



<details>

<summary>
clEsperanto Python (experimental)
</summary>
<pre class="highlight">import pyclesperanto_prototype as cle

cle.maximum_distance_of_touching_neighbors(distance_matrix, touch_matrix, distancelist_destination)

</pre>



</details>



[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

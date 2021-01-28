## pointIndexListToTouchMatrix
<img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_cle_logo.png"/>

Takes a list of point indices to generate a touch matrix (a.k.a. adjacency graph matrix) out of it. 

The list hasa dimensionality of m*n for the points 1... m (0 a.k.a. background is not in this list). In the n rows, there are
indices to points which should be connected.

### Parameters

indexlist : Image
matrix_destination : Image

Category: [Graphs](https://clij.github.io/clij2-docs/reference__graph)

### Usage in ImageJ macro
```
Ext.CLIJx_pointIndexListToTouchMatrix(Image indexlist, Image matrix_destination);
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
ClearCLBuffer indexlist = clijx.push(indexlistImagePlus);
matrix_destination = clijx.create(indexlist);
</pre>

<pre class="highlight">
// Execute operation on GPU
clijx.pointIndexListToTouchMatrix(indexlist, matrix_destination);
</pre>

<pre class="highlight">
// show result
matrix_destinationImagePlus = clijx.pull(matrix_destination);
matrix_destinationImagePlus.show();

// cleanup memory on GPU
clijx.release(indexlist);
clijx.release(matrix_destination);
</pre>

</details>



<details>

<summary>
Matlab
</summary>
<pre class="highlight">% init CLIJ and GPU
clijx = init_clatlabx();

% get input parameters
indexlist = clijx.pushMat(indexlist_matrix);
matrix_destination = clijx.create(indexlist);
</pre>

<pre class="highlight">
% Execute operation on GPU
clijx.pointIndexListToTouchMatrix(indexlist, matrix_destination);
</pre>

<pre class="highlight">
% show result
matrix_destination = clijx.pullMat(matrix_destination)

% cleanup memory on GPU
clijx.release(indexlist);
clijx.release(matrix_destination);
</pre>

</details>



<details>

<summary>
clEsperanto Python (experimental)
</summary>
<pre class="highlight">import pyclesperanto_prototype as cle

cle.point_index_list_to_touch_matrix(indexlist, matrix_destination)

</pre>



</details>



[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

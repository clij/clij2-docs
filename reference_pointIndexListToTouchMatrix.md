## pointIndexListToTouchMatrix
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_cle_logo.png"/>

Takes a list of point indices to generate a touch matrix (a.k.a. adjacency graph matrix) out of it. 

The list hasa dimensionality of m*n for the points 1... m (0 a.k.a. background is not in this list). In the n rows, there are
indices to points which should be connected.

### Parameters

indexlist : Image
matrix_destination : Image

Category: [Graphs](https://clij.github.io/clij2-docs/reference__graph)

Availability: Available in Fiji by activating the update sites clij and clij2.
This function is part of clij2_-2.5.0.1.jar.

### Usage in ImageJ macro
```
Ext.CLIJ2_pointIndexListToTouchMatrix(Image indexlist, Image matrix_destination);
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
ClearCLBuffer indexlist = clij2.push(indexlistImagePlus);
matrix_destination = clij2.create(indexlist);
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.pointIndexListToTouchMatrix(indexlist, matrix_destination);
</pre>

<pre class="highlight">
// show result
matrix_destinationImagePlus = clij2.pull(matrix_destination);
matrix_destinationImagePlus.show();

// cleanup memory on GPU
clij2.release(indexlist);
clij2.release(matrix_destination);
</pre>

</details>



<details>

<summary>
Matlab
</summary>
<pre class="highlight">% init CLIJ and GPU
clij2 = init_clatlab();

% get input parameters
indexlist = clij2.pushMat(indexlist_matrix);
matrix_destination = clij2.create(indexlist);
</pre>

<pre class="highlight">
% Execute operation on GPU
clij2.pointIndexListToTouchMatrix(indexlist, matrix_destination);
</pre>

<pre class="highlight">
% show result
matrix_destination = clij2.pullMat(matrix_destination)

% cleanup memory on GPU
clij2.release(indexlist);
clij2.release(matrix_destination);
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
indexlist_sequence = getSequence();
indexlist = clij2.pushSequence(indexlist_sequence);
matrix_destination = clij2.create(indexlist);
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.pointIndexListToTouchMatrix(indexlist, matrix_destination);
</pre>

<pre class="highlight">
// show result
matrix_destination_sequence = clij2.pullSequence(matrix_destination)
Icy.addSequence(matrix_destination_sequence);
// cleanup memory on GPU
clij2.release(indexlist);
clij2.release(matrix_destination);
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

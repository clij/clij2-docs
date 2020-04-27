## touchMatrixToAdjacencyMatrix
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_empty_logo.png"/>

Converts a touch matrix in an adjacency matrix

### Usage in ImageJ macro
```
Ext.CLIJ2_touchMatrixToAdjacencyMatrix(Image touch_matrix, ByRef Image adjacency_matrix);
```




### Usage in Java


<details>

<summary>
clij2.touchMatrixToAdjacencyMatrix(touch_matrix, adjacency_matrix);
</summary>
<pre class="highlight">// init CLIJ and GPU
import net.haesleinhuepf.clij2.CLIJ2;
import net.haesleinhuepf.clij.clearcl.ClearCLBuffer;
CLIJ2 clij2 = CLIJ2.getInstance();

// get input parameters
ClearCLBuffer touch_matrix = clij2.push(touch_matrixImagePlus);
ClearCLBuffer adjacency_matrix = clij2.push(adjacency_matrixImagePlus);
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.touchMatrixToAdjacencyMatrix(touch_matrix, adjacency_matrix);
</pre>

<pre class="highlight">
//show result

// cleanup memory on GPU
clij2.release(touch_matrix);
clij2.release(adjacency_matrix);
</pre>

</details>





### Usage in Matlab


<details>

<summary>
clij2.touchMatrixToAdjacencyMatrix(touch_matrix, adjacency_matrix);
</summary>
<pre class="highlight">% init CLIJ and GPU
clij2 = init_clatlab();

% get input parameters
touch_matrix = clij2.pushMat(touch_matrix_matrix);
adjacency_matrix = clij2.pushMat(adjacency_matrix_matrix);
</pre>

<pre class="highlight">
% Execute operation on GPU
clij2.touchMatrixToAdjacencyMatrix(touch_matrix, adjacency_matrix);
</pre>

<pre class="highlight">
% show result

% cleanup memory on GPU
clij2.release(touch_matrix);
clij2.release(adjacency_matrix);
</pre>

</details>





### Usage in Icy


<details>

<summary>
clij2.touchMatrixToAdjacencyMatrix(touch_matrix, adjacency_matrix);
</summary>
<pre class="highlight">// init CLIJ and GPU
importClass(net.haesleinhuepf.clicy.CLICY);
importClass(Packages.icy.main.Icy);

clij2 = CLICY.getInstance();

// get input parameters
touch_matrix_sequence = getSequence();touch_matrix = clij2.pushSequence(touch_matrix_sequence);
adjacency_matrix_sequence = getSequence();adjacency_matrix = clij2.pushSequence(adjacency_matrix_sequence);
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.touchMatrixToAdjacencyMatrix(touch_matrix, adjacency_matrix);
</pre>

<pre class="highlight">
// show result

// cleanup memory on GPU
clij2.release(touch_matrix);
clij2.release(adjacency_matrix);
</pre>

</details>



[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

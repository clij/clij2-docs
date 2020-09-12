## minimumDistanceOfTouchingNeighbors
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/>

Takes a touch matrix and a distance matrix to determine the shortest distance of touching neighbors for every object.

Categories: [Measurements](https://clij.github.io/clij2-docs/reference__measurement), [Graphs](https://clij.github.io/clij2-docs/reference__graph)

### Usage in ImageJ macro
```
Ext.CLIJ2_minimumDistanceOfTouchingNeighbors(Image distance_matrix, Image touch_matrix, Image minimum_distancelist_destination);
```




### Usage in Java


<details>

<summary>
clij2.minimumDistanceOfTouchingNeighbors(distance_matrix, touch_matrix, minimum_distancelist_destination);
</summary>
<pre class="highlight">// init CLIJ and GPU
import net.haesleinhuepf.clij2.CLIJ2;
import net.haesleinhuepf.clij.clearcl.ClearCLBuffer;
CLIJ2 clij2 = CLIJ2.getInstance();

// get input parameters
ClearCLBuffer distance_matrix = clij2.push(distance_matrixImagePlus);
ClearCLBuffer touch_matrix = clij2.push(touch_matrixImagePlus);
minimum_distancelist_destination = clij2.create(distance_matrix);
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.minimumDistanceOfTouchingNeighbors(distance_matrix, touch_matrix, minimum_distancelist_destination);
</pre>

<pre class="highlight">
//show result
minimum_distancelist_destinationImagePlus = clij2.pull(minimum_distancelist_destination);
minimum_distancelist_destinationImagePlus.show();

// cleanup memory on GPU
clij2.release(distance_matrix);
clij2.release(touch_matrix);
clij2.release(minimum_distancelist_destination);
</pre>

</details>





### Usage in Matlab


<details>

<summary>
clij2.minimumDistanceOfTouchingNeighbors(distance_matrix, touch_matrix, minimum_distancelist_destination);
</summary>
<pre class="highlight">% init CLIJ and GPU
clij2 = init_clatlab();

% get input parameters
distance_matrix = clij2.pushMat(distance_matrix_matrix);
touch_matrix = clij2.pushMat(touch_matrix_matrix);
minimum_distancelist_destination = clij2.create(distance_matrix);
</pre>

<pre class="highlight">
% Execute operation on GPU
clij2.minimumDistanceOfTouchingNeighbors(distance_matrix, touch_matrix, minimum_distancelist_destination);
</pre>

<pre class="highlight">
% show result
minimum_distancelist_destination = clij2.pullMat(minimum_distancelist_destination)

% cleanup memory on GPU
clij2.release(distance_matrix);
clij2.release(touch_matrix);
clij2.release(minimum_distancelist_destination);
</pre>

</details>





### Usage in Icy


<details>

<summary>
clij2.minimumDistanceOfTouchingNeighbors(distance_matrix, touch_matrix, minimum_distancelist_destination);
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
minimum_distancelist_destination = clij2.create(distance_matrix);
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.minimumDistanceOfTouchingNeighbors(distance_matrix, touch_matrix, minimum_distancelist_destination);
</pre>

<pre class="highlight">
// show result
minimum_distancelist_destination_sequence = clij2.pullSequence(minimum_distancelist_destination)
Icy.addSequence(minimum_distancelist_destination_sequence);
// cleanup memory on GPU
clij2.release(distance_matrix);
clij2.release(touch_matrix);
clij2.release(minimum_distancelist_destination);
</pre>

</details>



[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

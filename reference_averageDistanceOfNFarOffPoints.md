## averageDistanceOfNFarOffPoints
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/>

Determines the average of the n far off (most distant) points for every point in a distance matrix.

This corresponds to the average of the n maximum values (rows) for each column of the distance matrix.

### Parameters

distance_matrix : Image
    The a distance matrix to be processed.
distance_list_destination : Image
    A vector image with the same width as the distance matrix and height=1, depth=1.
    Determined average distances will be written into this vector.
n_far_off_points_to_find : Number
    Number of largest distances which should be averaged.


Categories: [Graphs](https://clij.github.io/clij2-docs/reference__graph), [Measurements](https://clij.github.io/clij2-docs/reference__measurement)

Availability: Available in Fiji by activating the update sites clij and clij2.
This function is part of clij2_-2.2.1.0.jar.

### Usage in ImageJ macro
```
Ext.CLIJ2_averageDistanceOfNFarOffPoints(Image distance_matrix, Image distance+_list_destination, Number n_far_off_points_to_find);
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
distance+_list_destination = clij2.create(distance_matrix);
int n_far_off_points_to_find = 10;
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.averageDistanceOfNFarOffPoints(distance_matrix, distance+_list_destination, n_far_off_points_to_find);
</pre>

<pre class="highlight">
// show result
distance+_list_destinationImagePlus = clij2.pull(distance+_list_destination);
distance+_list_destinationImagePlus.show();

// cleanup memory on GPU
clij2.release(distance_matrix);
clij2.release(distance+_list_destination);
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
distance+_list_destination = clij2.create(distance_matrix);
n_far_off_points_to_find = 10;
</pre>

<pre class="highlight">
% Execute operation on GPU
clij2.averageDistanceOfNFarOffPoints(distance_matrix, distance+_list_destination, n_far_off_points_to_find);
</pre>

<pre class="highlight">
% show result
distance+_list_destination = clij2.pullMat(distance+_list_destination)

% cleanup memory on GPU
clij2.release(distance_matrix);
clij2.release(distance+_list_destination);
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
distance+_list_destination = clij2.create(distance_matrix);
n_far_off_points_to_find = 10;
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.averageDistanceOfNFarOffPoints(distance_matrix, distance+_list_destination, n_far_off_points_to_find);
</pre>

<pre class="highlight">
// show result
distance+_list_destination_sequence = clij2.pullSequence(distance+_list_destination)
Icy.addSequence(distance+_list_destination_sequence);
// cleanup memory on GPU
clij2.release(distance_matrix);
clij2.release(distance+_list_destination);
</pre>

</details>



[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

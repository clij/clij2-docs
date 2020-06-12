## distanceMatrixToMesh
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/>

Generates a mesh from a distance matric and a list of point coordinates.

Takes a pointlist with dimensions n*d with n point coordinates in d dimensions and a distance matrix of size n*n to draw lines from all points to points if the corresponding pixel in the distance matrix is smaller than a given distance threshold.

### distanceMatrixToMesh often follows after
* <a href="reference_multiplyImageAndScalar">multiplyImageAndScalar</a> (2)
* <a href="reference_generateDistanceMatrix">generateDistanceMatrix</a> (2)


### Usage in ImageJ macro
```
Ext.CLIJ2_distanceMatrixToMesh(Image pointlist, Image distance_matrix, Image mesh_destination, Number maximum_distance);
```




### Usage in Java


<details>

<summary>
clij2.distanceMatrixToMesh(pointlist, distance_matrix, mesh_destination, maximum_distance);
</summary>
<pre class="highlight">// init CLIJ and GPU
import net.haesleinhuepf.clij2.CLIJ2;
import net.haesleinhuepf.clij.clearcl.ClearCLBuffer;
CLIJ2 clij2 = CLIJ2.getInstance();

// get input parameters
ClearCLBuffer pointlist = clij2.push(pointlistImagePlus);
ClearCLBuffer distance_matrix = clij2.push(distance_matrixImagePlus);
mesh_destination = clij2.create(pointlist);
float maximum_distance = 1.0;
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.distanceMatrixToMesh(pointlist, distance_matrix, mesh_destination, maximum_distance);
</pre>

<pre class="highlight">
//show result
mesh_destinationImagePlus = clij2.pull(mesh_destination);
mesh_destinationImagePlus.show();

// cleanup memory on GPU
clij2.release(pointlist);
clij2.release(distance_matrix);
clij2.release(mesh_destination);
</pre>

</details>





### Usage in Matlab


<details>

<summary>
clij2.distanceMatrixToMesh(pointlist, distance_matrix, mesh_destination, maximum_distance);
</summary>
<pre class="highlight">% init CLIJ and GPU
clij2 = init_clatlab();

% get input parameters
pointlist = clij2.pushMat(pointlist_matrix);
distance_matrix = clij2.pushMat(distance_matrix_matrix);
mesh_destination = clij2.create(pointlist);
maximum_distance = 1.0;
</pre>

<pre class="highlight">
% Execute operation on GPU
clij2.distanceMatrixToMesh(pointlist, distance_matrix, mesh_destination, maximum_distance);
</pre>

<pre class="highlight">
% show result
mesh_destination = clij2.pullMat(mesh_destination)

% cleanup memory on GPU
clij2.release(pointlist);
clij2.release(distance_matrix);
clij2.release(mesh_destination);
</pre>

</details>





### Usage in Icy


<details>

<summary>
clij2.distanceMatrixToMesh(pointlist, distance_matrix, mesh_destination, maximum_distance);
</summary>
<pre class="highlight">// init CLIJ and GPU
importClass(net.haesleinhuepf.clicy.CLICY);
importClass(Packages.icy.main.Icy);

clij2 = CLICY.getInstance();

// get input parameters
pointlist_sequence = getSequence();
pointlist = clij2.pushSequence(pointlist_sequence);
distance_matrix_sequence = getSequence();
distance_matrix = clij2.pushSequence(distance_matrix_sequence);
mesh_destination = clij2.create(pointlist);
maximum_distance = 1.0;
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.distanceMatrixToMesh(pointlist, distance_matrix, mesh_destination, maximum_distance);
</pre>

<pre class="highlight">
// show result
mesh_destination_sequence = clij2.pullSequence(mesh_destination)
Icy.addSequence(mesh_destination_sequence);
// cleanup memory on GPU
clij2.release(pointlist);
clij2.release(distance_matrix);
clij2.release(mesh_destination);
</pre>

</details>





### Example notebooks
<a href="https://clij.github.io/clij2-docs/md/spots_pointlists_matrices_tables"><img src="images/language_macro.png" height="20"/></a> [spots_pointlists_matrices_tables](https://clij.github.io/clij2-docs/md/spots_pointlists_matrices_tables)  




### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/spots_pointlists_matrices_tables.ijm"><img src="images/language_macro.png" height="20"/></a> [spots_pointlists_matrices_tables.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/spots_pointlists_matrices_tables.ijm)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

## generateDistanceMatrix
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/>

Takes two images containing coordinates and builds up a matrix containing distance between the points. 

Convention: image width represents number of points, height represents dimensionality (2D, 3D, ... 10D). The result image has width the first input image and height equals to the width of the second input image.

### generateDistanceMatrix often follows after
* <a href="reference_labelledSpotsToPointList">labelledSpotsToPointList</a> (4)
* <a href="reference_spotsToPointList">spotsToPointList</a> (3)


### generateDistanceMatrix is often followed by
* <a href="reference_smallerOrEqual">smallerOrEqual</a> (2)
* <a href="reference_nClosestPoints">nClosestPoints</a> (2)
* <a href="reference_release">release</a> (4)
* <a href="reference_shortestDistances">shortestDistances</a> (2)
* <a href="reference_crop2D">crop2D</a> (2)
* <a href="reference_distanceMatrixToMesh">distanceMatrixToMesh</a> (2)
* <a href="reference_averageDistanceOfTouchingNeighbors">averageDistanceOfTouchingNeighbors</a> (3)
* <a href="reference_multiplyImages">multiplyImages</a> (2)


### Usage in ImageJ macro
```
Ext.CLIJ2_generateDistanceMatrix(Image coordinate_list1, Image coordinate_list2, Image distance_matrix_destination);
```




### Usage in Java


<details>

<summary>
clij2.generateDistanceMatrix(coordinate_list1, coordinate_list2, distance_matrix_destination);
</summary>
<pre class="highlight">// init CLIJ and GPU
import net.haesleinhuepf.clij2.CLIJ2;
import net.haesleinhuepf.clij.clearcl.ClearCLBuffer;
CLIJ2 clij2 = CLIJ2.getInstance();

// get input parameters
ClearCLBuffer coordinate_list1 = clij2.push(coordinate_list1ImagePlus);
ClearCLBuffer coordinate_list2 = clij2.push(coordinate_list2ImagePlus);
distance_matrix_destination = clij2.create(coordinate_list1);
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.generateDistanceMatrix(coordinate_list1, coordinate_list2, distance_matrix_destination);
</pre>

<pre class="highlight">
//show result
distance_matrix_destinationImagePlus = clij2.pull(distance_matrix_destination);
distance_matrix_destinationImagePlus.show();

// cleanup memory on GPU
clij2.release(coordinate_list1);
clij2.release(coordinate_list2);
clij2.release(distance_matrix_destination);
</pre>

</details>





### Usage in Matlab


<details>

<summary>
clij2.generateDistanceMatrix(coordinate_list1, coordinate_list2, distance_matrix_destination);
</summary>
<pre class="highlight">% init CLIJ and GPU
clij2 = init_clatlab();

% get input parameters
coordinate_list1 = clij2.pushMat(coordinate_list1_matrix);
coordinate_list2 = clij2.pushMat(coordinate_list2_matrix);
distance_matrix_destination = clij2.create(coordinate_list1);
</pre>

<pre class="highlight">
% Execute operation on GPU
clij2.generateDistanceMatrix(coordinate_list1, coordinate_list2, distance_matrix_destination);
</pre>

<pre class="highlight">
% show result
distance_matrix_destination = clij2.pullMat(distance_matrix_destination)

% cleanup memory on GPU
clij2.release(coordinate_list1);
clij2.release(coordinate_list2);
clij2.release(distance_matrix_destination);
</pre>

</details>





### Usage in Icy


<details>

<summary>
clij2.generateDistanceMatrix(coordinate_list1, coordinate_list2, distance_matrix_destination);
</summary>
<pre class="highlight">// init CLIJ and GPU
importClass(net.haesleinhuepf.clicy.CLICY);
importClass(Packages.icy.main.Icy);

clij2 = CLICY.getInstance();

// get input parameters
coordinate_list1_sequence = getSequence();
coordinate_list1 = clij2.pushSequence(coordinate_list1_sequence);
coordinate_list2_sequence = getSequence();
coordinate_list2 = clij2.pushSequence(coordinate_list2_sequence);
distance_matrix_destination = clij2.create(coordinate_list1);
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.generateDistanceMatrix(coordinate_list1, coordinate_list2, distance_matrix_destination);
</pre>

<pre class="highlight">
// show result
distance_matrix_destination_sequence = clij2.pullSequence(distance_matrix_destination)
Icy.addSequence(distance_matrix_destination_sequence);
// cleanup memory on GPU
clij2.release(coordinate_list1);
clij2.release(coordinate_list2);
clij2.release(distance_matrix_destination);
</pre>

</details>





### Example notebooks
<a href="https://clij.github.io/clij2-docs/md/spots_pointlists_matrices_tables"><img src="images/language_macro.png" height="20"/></a> [spots_pointlists_matrices_tables](https://clij.github.io/clij2-docs/md/spots_pointlists_matrices_tables)  
<a href="https://clij.github.io/clij2-docs/md/tribolium_morphometry"><img src="images/language_macro.png" height="20"/></a> [tribolium_morphometry](https://clij.github.io/clij2-docs/md/tribolium_morphometry)  




### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/mesh_closest_points.ijm"><img src="images/language_macro.png" height="20"/></a> [mesh_closest_points.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/mesh_closest_points.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/spots_pointlists_matrices_tables.ijm"><img src="images/language_macro.png" height="20"/></a> [spots_pointlists_matrices_tables.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/spots_pointlists_matrices_tables.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/spot_distance_measurement.ijm"><img src="images/language_macro.png" height="20"/></a> [spot_distance_measurement.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/spot_distance_measurement.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/tribolium_morphometry.ijm"><img src="images/language_macro.png" height="20"/></a> [tribolium_morphometry.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/tribolium_morphometry.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/jython/mesh_closest_points.py"><img src="images/language_jython.png" height="20"/></a> [mesh_closest_points.py](https://github.com/clij/clij2-docs/blob/master/src/main/jython/mesh_closest_points.py)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

## generateTouchMatrix
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_cle_logo.png"/>

Takes a labelmap with n labels and generates a (n+1)*(n+1) matrix where all pixels are set to 0 exept those where labels are touching. 

Only half of the matrix is filled (with x < y). For example, if labels 3 and 4 are touching then the pixel (3,4) in the matrix will be set to 1.

Categories: [Graphs](https://clij.github.io/clij2-docs/reference__graph), [Measurements](https://clij.github.io/clij2-docs/reference__measurement), [Labels](https://clij.github.io/clij2-docs/reference__label)

### generateTouchMatrix often follows after
* <a href="reference_extendLabelingViaVoronoi">extendLabelingViaVoronoi</a> (2)
* <a href="reference_labelVoronoiOctagon">labelVoronoiOctagon</a> (2)
* <a href="reference_maximum2DSphere">maximum2DSphere</a> (2)
* <a href="reference_onlyzeroOverwriteMaximumBox">onlyzeroOverwriteMaximumBox</a> (2)


### generateTouchMatrix is often followed by
* <a href="reference_standardDeviationOfTouchingNeighbors">standardDeviationOfTouchingNeighbors</a> (2)
* <a href="reference_minimumOfTouchingNeighbors">minimumOfTouchingNeighbors</a> (3)
* <a href="reference_countTouchingNeighbors">countTouchingNeighbors</a> (2)
* <a href="reference_release">release</a> (5)
* <a href="reference_neighborsOfNeighbors">neighborsOfNeighbors</a> (3)
* <a href="reference_medianOfTouchingNeighbors">medianOfTouchingNeighbors</a> (3)
* <a href="reference_meanOfTouchingNeighbors">meanOfTouchingNeighbors</a> (2)
* <a href="reference_touchMatrixToMesh">touchMatrixToMesh</a> (8)
* <a href="reference_multiplyImages">multiplyImages</a> (2)
* <a href="reference_maximumOfTouchingNeighbors">maximumOfTouchingNeighbors</a> (3)
* <a href="reference_averageDistanceOfTouchingNeighbors">averageDistanceOfTouchingNeighbors</a> (2)


### Usage in ImageJ macro
```
Ext.CLIJ2_generateTouchMatrix(Image label_map, Image touch_matrix_destination);
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
ClearCLBuffer label_map = clij2.push(label_mapImagePlus);
touch_matrix_destination = clij2.create(label_map);
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.generateTouchMatrix(label_map, touch_matrix_destination);
</pre>

<pre class="highlight">
// show result
touch_matrix_destinationImagePlus = clij2.pull(touch_matrix_destination);
touch_matrix_destinationImagePlus.show();

// cleanup memory on GPU
clij2.release(label_map);
clij2.release(touch_matrix_destination);
</pre>

</details>



<details>

<summary>
Matlab
</summary>
<pre class="highlight">% init CLIJ and GPU
clij2 = init_clatlab();

% get input parameters
label_map = clij2.pushMat(label_map_matrix);
touch_matrix_destination = clij2.create(label_map);
</pre>

<pre class="highlight">
% Execute operation on GPU
clij2.generateTouchMatrix(label_map, touch_matrix_destination);
</pre>

<pre class="highlight">
% show result
touch_matrix_destination = clij2.pullMat(touch_matrix_destination)

% cleanup memory on GPU
clij2.release(label_map);
clij2.release(touch_matrix_destination);
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
label_map_sequence = getSequence();
label_map = clij2.pushSequence(label_map_sequence);
touch_matrix_destination = clij2.create(label_map);
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.generateTouchMatrix(label_map, touch_matrix_destination);
</pre>

<pre class="highlight">
// show result
touch_matrix_destination_sequence = clij2.pullSequence(touch_matrix_destination)
Icy.addSequence(touch_matrix_destination_sequence);
// cleanup memory on GPU
clij2.release(label_map);
clij2.release(touch_matrix_destination);
</pre>

</details>



<details>

<summary>
clEsperanto Python (experimental)
</summary>
<pre class="highlight">import pyclesperanto_prototype as cle

cle.generate_touch_matrix(label_map, touch_matrix_destination)

</pre>



</details>





### Example notebooks
<a href="https://clij.github.io/clij2-docs/md/filtering_in_graphs"><img src="images/language_macro.png" height="20"/></a> [filtering_in_graphs](https://clij.github.io/clij2-docs/md/filtering_in_graphs)  
<a href="https://clij.github.io/clij2-docs/md/mean_of_touching_neighbors"><img src="images/language_macro.png" height="20"/></a> [mean_of_touching_neighbors](https://clij.github.io/clij2-docs/md/mean_of_touching_neighbors)  
<a href="https://clij.github.io/clij2-docs/md/neighbors_of_neighbors"><img src="images/language_macro.png" height="20"/></a> [neighbors_of_neighbors](https://clij.github.io/clij2-docs/md/neighbors_of_neighbors)  
<a href="https://clij.github.io/clij2-docs/md/spots_pointlists_matrices_tables"><img src="images/language_macro.png" height="20"/></a> [spots_pointlists_matrices_tables](https://clij.github.io/clij2-docs/md/spots_pointlists_matrices_tables)  
<a href="https://clij.github.io/clij2-docs/md/superpixel_segmentation"><img src="images/language_macro.png" height="20"/></a> [superpixel_segmentation](https://clij.github.io/clij2-docs/md/superpixel_segmentation)  
<a href="https://clij.github.io/clij2-docs/md/tribolium_morphometry"><img src="images/language_macro.png" height="20"/></a> [tribolium_morphometry](https://clij.github.io/clij2-docs/md/tribolium_morphometry)  




### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/division_visualisation.ijm"><img src="images/language_macro.png" height="20"/></a> [division_visualisation.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/division_visualisation.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/filtering_in_graphs.ijm"><img src="images/language_macro.png" height="20"/></a> [filtering_in_graphs.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/filtering_in_graphs.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/large_matrices.ijm"><img src="images/language_macro.png" height="20"/></a> [large_matrices.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/large_matrices.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/mean_of_touching_neighbors.ijm"><img src="images/language_macro.png" height="20"/></a> [mean_of_touching_neighbors.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/mean_of_touching_neighbors.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/meshTouchingNeighbors.ijm"><img src="images/language_macro.png" height="20"/></a> [meshTouchingNeighbors.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/meshTouchingNeighbors.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/neighbors_of_neighbors.ijm"><img src="images/language_macro.png" height="20"/></a> [neighbors_of_neighbors.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/neighbors_of_neighbors.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/rotating_sphere.ijm"><img src="images/language_macro.png" height="20"/></a> [rotating_sphere.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/rotating_sphere.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/spots_pointlists_matrices_tables.ijm"><img src="images/language_macro.png" height="20"/></a> [spots_pointlists_matrices_tables.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/spots_pointlists_matrices_tables.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/superpixel_segmentation.ijm"><img src="images/language_macro.png" height="20"/></a> [superpixel_segmentation.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/superpixel_segmentation.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/tribolium_morphometry.ijm"><img src="images/language_macro.png" height="20"/></a> [tribolium_morphometry.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/tribolium_morphometry.ijm)  
<a href="https://github.com/clij/clatlab/blob/master/src/main/matlab/mesh_close_points.m"><img src="images/language_matlab.png" height="20"/></a> [mesh_close_points.m](https://github.com/clij/clatlab/blob/master/src/main/matlab/mesh_close_points.m)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

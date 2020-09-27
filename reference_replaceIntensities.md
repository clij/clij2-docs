## replaceIntensities
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/>

Replaces integer intensities specified in a vector image. 

The vector image must be 3D with size (m, 1, 1) where m corresponds to the maximum intensity in the original image. Assuming the vector image contains values (0, 1, 0, 2) means: 
 * All pixels with value 0 (first entry in the vector image) get value 0
 * All pixels with value 1 get value 1
 * All pixels with value 2 get value 0
 * All pixels with value 3 get value 2


Category: [Filter](https://clij.github.io/clij2-docs/reference__filter)

### replaceIntensities often follows after
* <a href="reference_connectedComponentsLabelingBox">connectedComponentsLabelingBox</a> (3)
* <a href="reference_labelVoronoiOctagon">labelVoronoiOctagon</a> (9)
* <a href="reference_medianOfTouchingNeighbors">medianOfTouchingNeighbors</a> (4)
* <a href="reference_greaterOrEqualConstant">greaterOrEqualConstant</a> (2)
* <a href="reference_meanOfTouchingNeighbors">meanOfTouchingNeighbors</a> (4)
* <a href="reference_averageDistanceOfTouchingNeighbors">averageDistanceOfTouchingNeighbors</a> (2)
* <a href="reference_standardDeviationOfTouchingNeighbors">standardDeviationOfTouchingNeighbors</a> (2)
* <a href="reference_undefinedToZero">undefinedToZero</a> (2)
* <a href="reference_minimumOfTouchingNeighbors">minimumOfTouchingNeighbors</a> (4)
* <a href="reference_transposeXY">transposeXY</a> (2)
* <a href="reference_maximum2DBox">maximum2DBox</a> (3)
* <a href="reference_maximumYProjection">maximumYProjection</a> (2)
* <a href="reference_maximumOfTouchingNeighbors">maximumOfTouchingNeighbors</a> (4)
* <a href="reference_smallerConstant">smallerConstant</a> (2)
* <a href="reference_mask">mask</a> (2)


### replaceIntensities is often followed by
* <a href="reference_maximumZProjection">maximumZProjection</a> (3)
* <a href="reference_release">release</a> (3)
* <a href="reference_copySlice">copySlice</a> (3)
* <a href="reference_mask">mask</a> (2)


### Usage in ImageJ macro
```
Ext.CLIJ2_replaceIntensities(Image input, Image new_values_vector, Image destination);
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
ClearCLBuffer input = clij2.push(inputImagePlus);
ClearCLBuffer new_values_vector = clij2.push(new_values_vectorImagePlus);
destination = clij2.create(input);
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.replaceIntensities(input, new_values_vector, destination);
</pre>

<pre class="highlight">
// show result
destinationImagePlus = clij2.pull(destination);
destinationImagePlus.show();

// cleanup memory on GPU
clij2.release(input);
clij2.release(new_values_vector);
clij2.release(destination);
</pre>

</details>



<details>

<summary>
Matlab
</summary>
<pre class="highlight">% init CLIJ and GPU
clij2 = init_clatlab();

% get input parameters
input = clij2.pushMat(input_matrix);
new_values_vector = clij2.pushMat(new_values_vector_matrix);
destination = clij2.create(input);
</pre>

<pre class="highlight">
% Execute operation on GPU
clij2.replaceIntensities(input, new_values_vector, destination);
</pre>

<pre class="highlight">
% show result
destination = clij2.pullMat(destination)

% cleanup memory on GPU
clij2.release(input);
clij2.release(new_values_vector);
clij2.release(destination);
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
input_sequence = getSequence();
input = clij2.pushSequence(input_sequence);
new_values_vector_sequence = getSequence();
new_values_vector = clij2.pushSequence(new_values_vector_sequence);
destination = clij2.create(input);
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.replaceIntensities(input, new_values_vector, destination);
</pre>

<pre class="highlight">
// show result
destination_sequence = clij2.pullSequence(destination)
Icy.addSequence(destination_sequence);
// cleanup memory on GPU
clij2.release(input);
clij2.release(new_values_vector);
clij2.release(destination);
</pre>

</details>





### Example notebooks
<a href="https://clij.github.io/clij2-docs/md/filtering_in_graphs"><img src="images/language_macro.png" height="20"/></a> [filtering_in_graphs](https://clij.github.io/clij2-docs/md/filtering_in_graphs)  
<a href="https://clij.github.io/clij2-docs/md/mean_of_touching_neighbors"><img src="images/language_macro.png" height="20"/></a> [mean_of_touching_neighbors](https://clij.github.io/clij2-docs/md/mean_of_touching_neighbors)  
<a href="https://clij.github.io/clij2-docs/md/neighbors_of_neighbors"><img src="images/language_macro.png" height="20"/></a> [neighbors_of_neighbors](https://clij.github.io/clij2-docs/md/neighbors_of_neighbors)  
<a href="https://clij.github.io/clij2-docs/md/superpixel_segmentation"><img src="images/language_macro.png" height="20"/></a> [superpixel_segmentation](https://clij.github.io/clij2-docs/md/superpixel_segmentation)  
<a href="https://clij.github.io/clij2-docs/md/tribolium_morphometry"><img src="images/language_macro.png" height="20"/></a> [tribolium_morphometry](https://clij.github.io/clij2-docs/md/tribolium_morphometry)  




### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/division_visualisation.ijm"><img src="images/language_macro.png" height="20"/></a> [division_visualisation.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/division_visualisation.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/filtering_in_graphs.ijm"><img src="images/language_macro.png" height="20"/></a> [filtering_in_graphs.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/filtering_in_graphs.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/jaccard_matrix.ijm"><img src="images/language_macro.png" height="20"/></a> [jaccard_matrix.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/jaccard_matrix.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/mean_of_touching_neighbors.ijm"><img src="images/language_macro.png" height="20"/></a> [mean_of_touching_neighbors.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/mean_of_touching_neighbors.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/neighbors_of_neighbors.ijm"><img src="images/language_macro.png" height="20"/></a> [neighbors_of_neighbors.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/neighbors_of_neighbors.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/superpixel_segmentation.ijm"><img src="images/language_macro.png" height="20"/></a> [superpixel_segmentation.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/superpixel_segmentation.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/tribolium_morphometry.ijm"><img src="images/language_macro.png" height="20"/></a> [tribolium_morphometry.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/tribolium_morphometry.ijm)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

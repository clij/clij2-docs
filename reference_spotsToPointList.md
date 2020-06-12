## spotsToPointList
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/>

Transforms a spots image as resulting from maximum/minimum detection in an image where every column contains d 
pixels (with d = dimensionality of the original image) with the coordinates of the maxima/minima.

### spotsToPointList often follows after
* <a href="reference_translate2D">translate2D</a> (2)
* <a href="reference_greaterConstant">greaterConstant</a> (2)
* <a href="reference_detectMaximaBox">detectMaximaBox</a> (3)


### spotsToPointList is often followed by
* <a href="reference_release">release</a> (2)
* <a href="reference_image2DToResultsTable">image2DToResultsTable</a> (3)
* <a href="reference_multiplyImageAndScalar">multiplyImageAndScalar</a> (2)
* <a href="reference_generateDistanceMatrix">generateDistanceMatrix</a> (3)


### Usage in ImageJ macro
```
Ext.CLIJ2_spotsToPointList(Image input_spots, Image destination_pointlist);
```




### Usage in Java


<details>

<summary>
clij2.spotsToPointList(input_spots, destination_pointlist);
</summary>
<pre class="highlight">// init CLIJ and GPU
import net.haesleinhuepf.clij2.CLIJ2;
import net.haesleinhuepf.clij.clearcl.ClearCLBuffer;
CLIJ2 clij2 = CLIJ2.getInstance();

// get input parameters
ClearCLBuffer input_spots = clij2.push(input_spotsImagePlus);
destination_pointlist = clij2.create(input_spots);
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.spotsToPointList(input_spots, destination_pointlist);
</pre>

<pre class="highlight">
//show result
destination_pointlistImagePlus = clij2.pull(destination_pointlist);
destination_pointlistImagePlus.show();

// cleanup memory on GPU
clij2.release(input_spots);
clij2.release(destination_pointlist);
</pre>

</details>





### Usage in Matlab


<details>

<summary>
clij2.spotsToPointList(input_spots, destination_pointlist);
</summary>
<pre class="highlight">% init CLIJ and GPU
clij2 = init_clatlab();

% get input parameters
input_spots = clij2.pushMat(input_spots_matrix);
destination_pointlist = clij2.create(input_spots);
</pre>

<pre class="highlight">
% Execute operation on GPU
clij2.spotsToPointList(input_spots, destination_pointlist);
</pre>

<pre class="highlight">
% show result
destination_pointlist = clij2.pullMat(destination_pointlist)

% cleanup memory on GPU
clij2.release(input_spots);
clij2.release(destination_pointlist);
</pre>

</details>





### Usage in Icy


<details>

<summary>
clij2.spotsToPointList(input_spots, destination_pointlist);
</summary>
<pre class="highlight">// init CLIJ and GPU
importClass(net.haesleinhuepf.clicy.CLICY);
importClass(Packages.icy.main.Icy);

clij2 = CLICY.getInstance();

// get input parameters
input_spots_sequence = getSequence();
input_spots = clij2.pushSequence(input_spots_sequence);
destination_pointlist = clij2.create(input_spots);
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.spotsToPointList(input_spots, destination_pointlist);
</pre>

<pre class="highlight">
// show result
destination_pointlist_sequence = clij2.pullSequence(destination_pointlist)
Icy.addSequence(destination_pointlist_sequence);
// cleanup memory on GPU
clij2.release(input_spots);
clij2.release(destination_pointlist);
</pre>

</details>





### Example notebooks
<a href="https://clij.github.io/clij2-docs/md/spots_pointlists_matrices_tables"><img src="images/language_macro.png" height="20"/></a> [spots_pointlists_matrices_tables](https://clij.github.io/clij2-docs/md/spots_pointlists_matrices_tables)  




### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/meshTouchingNeighbors.ijm"><img src="images/language_macro.png" height="20"/></a> [meshTouchingNeighbors.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/meshTouchingNeighbors.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/mesh_closest_points.ijm"><img src="images/language_macro.png" height="20"/></a> [mesh_closest_points.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/mesh_closest_points.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/spots_pointlists_matrices_tables.ijm"><img src="images/language_macro.png" height="20"/></a> [spots_pointlists_matrices_tables.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/spots_pointlists_matrices_tables.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/spot_distance_measurement.ijm"><img src="images/language_macro.png" height="20"/></a> [spot_distance_measurement.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/spot_distance_measurement.ijm)  
<a href="https://github.com/clij/clatlab/blob/master/src/main/matlab/mesh_close_points.m"><img src="images/language_matlab.png" height="20"/></a> [mesh_close_points.m](https://github.com/clij/clatlab/blob/master/src/main/matlab/mesh_close_points.m)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/jython/mesh_closest_points.py"><img src="images/language_jython.png" height="20"/></a> [mesh_closest_points.py](https://github.com/clij/clij2-docs/blob/master/src/main/jython/mesh_closest_points.py)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

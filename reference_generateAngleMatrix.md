## generateAngleMatrix
<img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_cle_logo.png"/>

Computes the angle in radians between all point coordinates given in two point lists.

 Takes two images containing pointlists (dimensionality n * d, n: number of 
points and d: dimensionality) and builds up a matrix containing the 
angles between these points.

Convention: Values range from -90 to 90 degrees (-0.5 to 0.5 pi radians)
* -90 degreess (-0.5 pi radians): Top
* 0 defrees (0 radians): Right
* 90 degrees (0.5 pi radians): Bottom

Convention: Given two point lists with dimensionality n * d and m * d, the distance 
matrix will be of size(n + 1) * (m + 1). The first row and column 
contain zeros. They represent the distance of the objects to a 
theoretical background object. In that way, distance matrices are of 
the same size as touch matrices (see generateTouchMatrix). Thus, one 
can threshold a distance matrix to generate a touch matrix out of it 
for drawing meshes. 

Implemented for 2D only at the moment.

### Parameters

coordinate_list1 : Image
coordinate_list2 : Image
angle_matrix_destination : Image

Returns
-------
angle_matrix_destination

Categories: [Graphs](https://clij.github.io/clij2-docs/reference__graph), [Measurements](https://clij.github.io/clij2-docs/reference__measurement)

Availability: Available in Fiji by activating the update sites clij and clij2.
This function is part of clijx_-0.30.2.0.jar.

### Usage in ImageJ macro
```
Ext.CLIJx_generateAngleMatrix(Image coordinate_list1, Image coordinate_list2, Image angle_matrix_destination);
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
ClearCLBuffer coordinate_list1 = clijx.push(coordinate_list1ImagePlus);
ClearCLBuffer coordinate_list2 = clijx.push(coordinate_list2ImagePlus);
angle_matrix_destination = clijx.create(coordinate_list1);
</pre>

<pre class="highlight">
// Execute operation on GPU
clijx.generateAngleMatrix(coordinate_list1, coordinate_list2, angle_matrix_destination);
</pre>

<pre class="highlight">
// show result
angle_matrix_destinationImagePlus = clijx.pull(angle_matrix_destination);
angle_matrix_destinationImagePlus.show();

// cleanup memory on GPU
clijx.release(coordinate_list1);
clijx.release(coordinate_list2);
clijx.release(angle_matrix_destination);
</pre>

</details>



<details>

<summary>
Matlab
</summary>
<pre class="highlight">% init CLIJ and GPU
clijx = init_clatlabx();

% get input parameters
coordinate_list1 = clijx.pushMat(coordinate_list1_matrix);
coordinate_list2 = clijx.pushMat(coordinate_list2_matrix);
angle_matrix_destination = clijx.create(coordinate_list1);
</pre>

<pre class="highlight">
% Execute operation on GPU
clijx.generateAngleMatrix(coordinate_list1, coordinate_list2, angle_matrix_destination);
</pre>

<pre class="highlight">
% show result
angle_matrix_destination = clijx.pullMat(angle_matrix_destination)

% cleanup memory on GPU
clijx.release(coordinate_list1);
clijx.release(coordinate_list2);
clijx.release(angle_matrix_destination);
</pre>

</details>



<details>

<summary>
clEsperanto Python (experimental)
</summary>
<pre class="highlight">import pyclesperanto_prototype as cle

cle.generate_angle_matrix(coordinate_list1, coordinate_list2, angle_matrix_destination)

</pre>



</details>





### Example notebooks
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/neighbors/mesh_with_distances.ipynb"><img src="images/language_python.png" height="20"/></a> [mesh_with_distances.ipynb](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/neighbors/mesh_with_distances.ipynb)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

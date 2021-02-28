## drawDistanceMeshBetweenTouchingLabels
<img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_cle_logo.png"/>

Starting from a label map, draw lines between touching neighbors resulting in a mesh.

The end points of the lines correspond to the centroids of the labels. The intensity of the lines 
corresponds to the distance between these labels (in pixels or voxels).

Categories: [Graphs](https://clij.github.io/clij2-docs/reference__graph), [Labels](https://clij.github.io/clij2-docs/reference__label), [Measurements](https://clij.github.io/clij2-docs/reference__measurement)

Availability: Available in Fiji by activating the update sites clij and clij2.
This function is part of clijx_-0.30.1.21.jar.

### Usage in ImageJ macro
```
Ext.CLIJx_drawDistanceMeshBetweenTouchingLabels(Image input, Image destination);
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
ClearCLBuffer input = clijx.push(inputImagePlus);
destination = clijx.create(input);
</pre>

<pre class="highlight">
// Execute operation on GPU
clijx.drawDistanceMeshBetweenTouchingLabels(input, destination);
</pre>

<pre class="highlight">
// show result
destinationImagePlus = clijx.pull(destination);
destinationImagePlus.show();

// cleanup memory on GPU
clijx.release(input);
clijx.release(destination);
</pre>

</details>



<details>

<summary>
Matlab
</summary>
<pre class="highlight">% init CLIJ and GPU
clijx = init_clatlabx();

% get input parameters
input = clijx.pushMat(input_matrix);
destination = clijx.create(input);
</pre>

<pre class="highlight">
% Execute operation on GPU
clijx.drawDistanceMeshBetweenTouchingLabels(input, destination);
</pre>

<pre class="highlight">
% show result
destination = clijx.pullMat(destination)

% cleanup memory on GPU
clijx.release(input);
clijx.release(destination);
</pre>

</details>



<details>

<summary>
clEsperanto Python (experimental)
</summary>
<pre class="highlight">import pyclesperanto_prototype as cle

cle.draw_distance_mesh_between_touching_labels(input, destination)

</pre>



</details>





### Example notebooks
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/neighbors/mesh_with_distances.ipynb"><img src="images/language_python.png" height="20"/></a> [mesh_with_distances.ipynb](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/neighbors/mesh_with_distances.ipynb)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/neighbors/shape_descriptors_based_on_neighborhood_graphs.ipynb"><img src="images/language_python.png" height="20"/></a> [shape_descriptors_based_on_neighborhood_graphs.ipynb](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/neighbors/shape_descriptors_based_on_neighborhood_graphs.ipynb)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

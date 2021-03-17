## meanOfTouchingNeighborsMap
<img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_cle_logo.png"/>

Takes a label image and a parametric intensity image and will replace each labels value in the parametric image
by the mean average value of neighboring labels. The radius of the neighborhood can be configured:
* radius 0: Nothing is replaced
* radius 1: direct neighbors are taken into account
* radius 2: neighbors and neighbors or neighbors are taken into account
* radius n: ...

Note: Values of all pixels in a label each must be identical.

### Parameters

parametric_map : Image
label_map : Image
parametric_map_destination : Image
radius : int
ignore_touching_background : bool

Returns
-------
parametric_map_destination

Categories: [Measurements](https://clij.github.io/clij2-docs/reference__measurement), [Filter](https://clij.github.io/clij2-docs/reference__filter), [Graphs](https://clij.github.io/clij2-docs/reference__graph)

Availability: Available in Fiji by activating the update sites clij and clij2.
This function is part of clijx_-0.30.1.22.jar.

### Usage in ImageJ macro
```
Ext.CLIJx_meanOfTouchingNeighborsMap(Image parametric_map, Image label_map, Image parametric_map_destination, Number radius, Boolean ignore_touching_background);
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
ClearCLBuffer parametric_map = clijx.push(parametric_mapImagePlus);
ClearCLBuffer label_map = clijx.push(label_mapImagePlus);
parametric_map_destination = clijx.create(parametric_map);
int radius = 10;
boolean ignore_touching_background = true;
</pre>

<pre class="highlight">
// Execute operation on GPU
clijx.meanOfTouchingNeighborsMap(parametric_map, label_map, parametric_map_destination, radius, ignore_touching_background);
</pre>

<pre class="highlight">
// show result
parametric_map_destinationImagePlus = clijx.pull(parametric_map_destination);
parametric_map_destinationImagePlus.show();

// cleanup memory on GPU
clijx.release(parametric_map);
clijx.release(label_map);
clijx.release(parametric_map_destination);
</pre>

</details>



<details>

<summary>
Matlab
</summary>
<pre class="highlight">% init CLIJ and GPU
clijx = init_clatlabx();

% get input parameters
parametric_map = clijx.pushMat(parametric_map_matrix);
label_map = clijx.pushMat(label_map_matrix);
parametric_map_destination = clijx.create(parametric_map);
radius = 10;
ignore_touching_background = true;
</pre>

<pre class="highlight">
% Execute operation on GPU
clijx.meanOfTouchingNeighborsMap(parametric_map, label_map, parametric_map_destination, radius, ignore_touching_background);
</pre>

<pre class="highlight">
% show result
parametric_map_destination = clijx.pullMat(parametric_map_destination)

% cleanup memory on GPU
clijx.release(parametric_map);
clijx.release(label_map);
clijx.release(parametric_map_destination);
</pre>

</details>



<details>

<summary>
clEsperanto Python (experimental)
</summary>
<pre class="highlight">import pyclesperanto_prototype as cle

cle.mean_of_touching_neighbors_map(parametric_map, label_map, parametric_map_destination, radius, ignore_touching_background)

</pre>



</details>





### Example notebooks
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/neighbors/neighbors_of_neighbors.ipynb"><img src="images/language_python.png" height="20"/></a> [neighbors_of_neighbors.ipynb](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/neighbors/neighbors_of_neighbors.ipynb)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

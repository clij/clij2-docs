## voronoiLabeling
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_cle_logo.png"/>

Takes a binary image, labels connected components and dilates the regions using a octagon shape until they touch. 

The resulting label map is written to the output.

Categories: [Filter](https://clij.github.io/clij2-docs/reference__filter), [Labels](https://clij.github.io/clij2-docs/reference__label), [Binary](https://clij.github.io/clij2-docs/reference__binary)

Availability: Available in Fiji by activating the update sites clij and clij2.
This function is part of clij2_-2.5.0.1.jar.

### voronoiLabeling often follows after
* <a href="reference_thresholdOtsu">thresholdOtsu</a> (2)


### voronoiLabeling is often followed by
* <a href="reference_excludeLabelsOnEdges">excludeLabelsOnEdges</a> (1)
* <a href="reference_release">release</a> (1)


### Usage in ImageJ macro
```
Ext.CLIJ2_voronoiLabeling(Image input, Image destination);
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
destination = clij2.create(input);
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.voronoiLabeling(input, destination);
</pre>

<pre class="highlight">
// show result
destinationImagePlus = clij2.pull(destination);
destinationImagePlus.show();

// cleanup memory on GPU
clij2.release(input);
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
destination = clij2.create(input);
</pre>

<pre class="highlight">
% Execute operation on GPU
clij2.voronoiLabeling(input, destination);
</pre>

<pre class="highlight">
% show result
destination = clij2.pullMat(destination)

% cleanup memory on GPU
clij2.release(input);
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
destination = clij2.create(input);
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.voronoiLabeling(input, destination);
</pre>

<pre class="highlight">
// show result
destination_sequence = clij2.pullSequence(destination)
Icy.addSequence(destination_sequence);
// cleanup memory on GPU
clij2.release(input);
clij2.release(destination);
</pre>

</details>



<details>

<summary>
clEsperanto Python (experimental)
</summary>
<pre class="highlight">import pyclesperanto_prototype as cle

cle.voronoi_labeling(input, destination)

</pre>



</details>





### Example notebooks
<a href="https://clij.github.io/clij2-docs/md/count_neighbors"><img src="images/language_macro.png" height="20"/></a> [count_neighbors](https://clij.github.io/clij2-docs/md/count_neighbors)  
<a href="https://clij.github.io/clij2-docs/md/image_types"><img src="images/language_macro.png" height="20"/></a> [image_types](https://clij.github.io/clij2-docs/md/image_types)  
<a href="https://clij.github.io/clij2-docs/md/labelmap_voronoi"><img src="images/language_macro.png" height="20"/></a> [labelmap_voronoi](https://clij.github.io/clij2-docs/md/labelmap_voronoi)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/basics/spots_pointlists_matrices_tables.ipynb"><img src="images/language_python.png" height="20"/></a> [spots_pointlists_matrices_tables.ipynb](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/basics/spots_pointlists_matrices_tables.ipynb)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/basics/voronoi_diagrams.ipynb"><img src="images/language_python.png" height="20"/></a> [voronoi_diagrams.ipynb](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/basics/voronoi_diagrams.ipynb)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/neighbors/quantitative_neighbor_maps.ipynb"><img src="images/language_python.png" height="20"/></a> [quantitative_neighbor_maps.ipynb](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/neighbors/quantitative_neighbor_maps.ipynb)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/segmentation/segmentation_2d_membranes.ipynb"><img src="images/language_python.png" height="20"/></a> [segmentation_2d_membranes.ipynb](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/segmentation/segmentation_2d_membranes.ipynb)  




### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/count_neighbors.ijm"><img src="images/language_macro.png" height="20"/></a> [count_neighbors.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/count_neighbors.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/image_types.ijm"><img src="images/language_macro.png" height="20"/></a> [image_types.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/image_types.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/labelmap_voronoi.ijm"><img src="images/language_macro.png" height="20"/></a> [labelmap_voronoi.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/labelmap_voronoi.ijm)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

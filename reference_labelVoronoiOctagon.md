## labelVoronoiOctagon
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/>

Takes a labelled image and dilates the labels using a octagon shape until they touch. 

The pixels where  the regions touched are afterwards returned as binary image which corresponds to the Voronoi diagram.

Categories: [Filter](https://clij.github.io/clij2-docs/reference__filter), [Labels](https://clij.github.io/clij2-docs/reference__label)

### labelVoronoiOctagon often follows after
* <a href="reference_pointlistToLabelledSpots">pointlistToLabelledSpots</a> (5)
* <a href="reference_labelSpots">labelSpots</a> (2)


### labelVoronoiOctagon is often followed by
* <a href="reference_replaceIntensities">replaceIntensities</a> (9)
* <a href="reference_generateTouchMatrix">generateTouchMatrix</a> (2)
* <a href="reference_statisticsOfLabelledPixels">statisticsOfLabelledPixels</a> (2)


### Usage in ImageJ macro
```
Ext.CLIJ2_labelVoronoiOctagon(Image label_map, Image label_voronoi_destination);
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
label_voronoi_destination = clij2.create(label_map);
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.labelVoronoiOctagon(label_map, label_voronoi_destination);
</pre>

<pre class="highlight">
// show result
label_voronoi_destinationImagePlus = clij2.pull(label_voronoi_destination);
label_voronoi_destinationImagePlus.show();

// cleanup memory on GPU
clij2.release(label_map);
clij2.release(label_voronoi_destination);
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
label_voronoi_destination = clij2.create(label_map);
</pre>

<pre class="highlight">
% Execute operation on GPU
clij2.labelVoronoiOctagon(label_map, label_voronoi_destination);
</pre>

<pre class="highlight">
% show result
label_voronoi_destination = clij2.pullMat(label_voronoi_destination)

% cleanup memory on GPU
clij2.release(label_map);
clij2.release(label_voronoi_destination);
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
label_voronoi_destination = clij2.create(label_map);
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.labelVoronoiOctagon(label_map, label_voronoi_destination);
</pre>

<pre class="highlight">
// show result
label_voronoi_destination_sequence = clij2.pullSequence(label_voronoi_destination)
Icy.addSequence(label_voronoi_destination_sequence);
// cleanup memory on GPU
clij2.release(label_map);
clij2.release(label_voronoi_destination);
</pre>

</details>





### Example notebooks
<a href="https://clij.github.io/clij2-docs/md/filtering_in_graphs"><img src="images/language_macro.png" height="20"/></a> [filtering_in_graphs](https://clij.github.io/clij2-docs/md/filtering_in_graphs)  
<a href="https://clij.github.io/clij2-docs/md/neighbors_of_neighbors"><img src="images/language_macro.png" height="20"/></a> [neighbors_of_neighbors](https://clij.github.io/clij2-docs/md/neighbors_of_neighbors)  
<a href="https://clij.github.io/clij2-docs/md/spots_pointlists_matrices_tables"><img src="images/language_macro.png" height="20"/></a> [spots_pointlists_matrices_tables](https://clij.github.io/clij2-docs/md/spots_pointlists_matrices_tables)  




### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/filtering_in_graphs.ijm"><img src="images/language_macro.png" height="20"/></a> [filtering_in_graphs.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/filtering_in_graphs.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/large_matrices.ijm"><img src="images/language_macro.png" height="20"/></a> [large_matrices.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/large_matrices.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/neighbors_of_neighbors.ijm"><img src="images/language_macro.png" height="20"/></a> [neighbors_of_neighbors.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/neighbors_of_neighbors.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/spots_pointlists_matrices_tables.ijm"><img src="images/language_macro.png" height="20"/></a> [spots_pointlists_matrices_tables.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/spots_pointlists_matrices_tables.ijm)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

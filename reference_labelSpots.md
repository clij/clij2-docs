## labelSpots
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_cle_logo.png"/>

Transforms a binary image with single pixles set to 1 to a labelled spots image. 

Transforms a spots image as resulting from maximum/minimum detection in an image of the same size where every spot has a number 1, 2, ... n.

Categories: [Filter](https://clij.github.io/clij2-docs/reference__filter), [Labels](https://clij.github.io/clij2-docs/reference__label), [Binary](https://clij.github.io/clij2-docs/reference__binary)

Availability: Available in Fiji by activating the update sites clij and clij2.
This function is part of clij2_-2.3.0.6.jar.

### labelSpots often follows after
* <a href="reference_detectMaxima2DBox">detectMaxima2DBox</a> (1)
* <a href="reference_mask">mask</a> (6)


### labelSpots is often followed by
* <a href="reference_labelVoronoiOctagon">labelVoronoiOctagon</a> (1)
* <a href="reference_release">release</a> (4)
* <a href="reference_labelledSpotsToPointList">labelledSpotsToPointList</a> (7)


### Usage in ImageJ macro
```
Ext.CLIJ2_labelSpots(Image input_spots, Image labelled_spots_destination);
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
ClearCLBuffer input_spots = clij2.push(input_spotsImagePlus);
labelled_spots_destination = clij2.create(input_spots);
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.labelSpots(input_spots, labelled_spots_destination);
</pre>

<pre class="highlight">
// show result
labelled_spots_destinationImagePlus = clij2.pull(labelled_spots_destination);
labelled_spots_destinationImagePlus.show();

// cleanup memory on GPU
clij2.release(input_spots);
clij2.release(labelled_spots_destination);
</pre>

</details>



<details>

<summary>
Matlab
</summary>
<pre class="highlight">% init CLIJ and GPU
clij2 = init_clatlab();

% get input parameters
input_spots = clij2.pushMat(input_spots_matrix);
labelled_spots_destination = clij2.create(input_spots);
</pre>

<pre class="highlight">
% Execute operation on GPU
clij2.labelSpots(input_spots, labelled_spots_destination);
</pre>

<pre class="highlight">
% show result
labelled_spots_destination = clij2.pullMat(labelled_spots_destination)

% cleanup memory on GPU
clij2.release(input_spots);
clij2.release(labelled_spots_destination);
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
input_spots_sequence = getSequence();
input_spots = clij2.pushSequence(input_spots_sequence);
labelled_spots_destination = clij2.create(input_spots);
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.labelSpots(input_spots, labelled_spots_destination);
</pre>

<pre class="highlight">
// show result
labelled_spots_destination_sequence = clij2.pullSequence(labelled_spots_destination)
Icy.addSequence(labelled_spots_destination_sequence);
// cleanup memory on GPU
clij2.release(input_spots);
clij2.release(labelled_spots_destination);
</pre>

</details>



<details>

<summary>
clEsperanto Python (experimental)
</summary>
<pre class="highlight">import pyclesperanto_prototype as cle

cle.label_spots(input_spots, labelled_spots_destination)

</pre>



</details>





### Example notebooks
<a href="https://clij.github.io/clij2-docs/md/spots_pointlists_matrices_tables"><img src="images/language_macro.png" height="20"/></a> [spots_pointlists_matrices_tables](https://clij.github.io/clij2-docs/md/spots_pointlists_matrices_tables)  
<a href="https://clij.github.io/clij2-docs/md/tribolium_morphometry"><img src="images/language_macro.png" height="20"/></a> [tribolium_morphometry](https://clij.github.io/clij2-docs/md/tribolium_morphometry)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/segmentation/bead_segmentation.ipynb"><img src="images/language_python.png" height="20"/></a> [bead_segmentation.ipynb](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/segmentation/bead_segmentation.ipynb)  




### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/spots_pointlists_matrices_tables.ijm"><img src="images/language_macro.png" height="20"/></a> [spots_pointlists_matrices_tables.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/spots_pointlists_matrices_tables.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/tribolium_morphometry.ijm"><img src="images/language_macro.png" height="20"/></a> [tribolium_morphometry.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/tribolium_morphometry.ijm)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

## labelledSpotsToPointList
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_empty_logo.png"/>

Generates a coordinate list of points in a labelled spot image. 

Transforms a labelmap of spots (single pixels with values 1, 2, ..., n for n spots) as resulting 
from connected components analysis in an image where every column contains d 
pixels (with d = dimensionality of the original image) with the coordinates of the maxima/minima.

Categories: [Measurements](https://clij.github.io/clij2-docs/reference__measurement), [Labels](https://clij.github.io/clij2-docs/reference__label)

Availability: Available in Fiji by activating the update sites clij and clij2.
This function is part of clij2_-2.5.0.1.jar.

### labelledSpotsToPointList often follows after
* <a href="reference_connectedComponentsLabeling">connectedComponentsLabeling</a> (1)
* <a href="reference_labelSpots">labelSpots</a> (7)


### labelledSpotsToPointList is often followed by
* <a href="reference_getDimensions">getDimensions</a> (1)
* <a href="reference_release">release</a> (2)
* <a href="reference_touchMatrixToMesh">touchMatrixToMesh</a> (4)
* <a href="reference_generateDistanceMatrix">generateDistanceMatrix</a> (5)


### Usage in ImageJ macro
```
Ext.CLIJ2_labelledSpotsToPointList(Image input_labelled_spots, Image destination_pointlist);
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
ClearCLBuffer input_labelled_spots = clij2.push(input_labelled_spotsImagePlus);
destination_pointlist = clij2.create(input_labelled_spots);
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.labelledSpotsToPointList(input_labelled_spots, destination_pointlist);
</pre>

<pre class="highlight">
// show result
destination_pointlistImagePlus = clij2.pull(destination_pointlist);
destination_pointlistImagePlus.show();

// cleanup memory on GPU
clij2.release(input_labelled_spots);
clij2.release(destination_pointlist);
</pre>

</details>



<details>

<summary>
Matlab
</summary>
<pre class="highlight">% init CLIJ and GPU
clij2 = init_clatlab();

% get input parameters
input_labelled_spots = clij2.pushMat(input_labelled_spots_matrix);
destination_pointlist = clij2.create(input_labelled_spots);
</pre>

<pre class="highlight">
% Execute operation on GPU
clij2.labelledSpotsToPointList(input_labelled_spots, destination_pointlist);
</pre>

<pre class="highlight">
% show result
destination_pointlist = clij2.pullMat(destination_pointlist)

% cleanup memory on GPU
clij2.release(input_labelled_spots);
clij2.release(destination_pointlist);
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
input_labelled_spots_sequence = getSequence();
input_labelled_spots = clij2.pushSequence(input_labelled_spots_sequence);
destination_pointlist = clij2.create(input_labelled_spots);
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.labelledSpotsToPointList(input_labelled_spots, destination_pointlist);
</pre>

<pre class="highlight">
// show result
destination_pointlist_sequence = clij2.pullSequence(destination_pointlist)
Icy.addSequence(destination_pointlist_sequence);
// cleanup memory on GPU
clij2.release(input_labelled_spots);
clij2.release(destination_pointlist);
</pre>

</details>





### Example notebooks
<a href="https://clij.github.io/clij2-docs/md/tribolium_morphometry"><img src="images/language_macro.png" height="20"/></a> [tribolium_morphometry](https://clij.github.io/clij2-docs/md/tribolium_morphometry)  




### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/rotating_sphere.ijm"><img src="images/language_macro.png" height="20"/></a> [rotating_sphere.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/rotating_sphere.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/tribolium_morphometry.ijm"><img src="images/language_macro.png" height="20"/></a> [tribolium_morphometry.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/tribolium_morphometry.ijm)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

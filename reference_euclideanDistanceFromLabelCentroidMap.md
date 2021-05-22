## euclideanDistanceFromLabelCentroidMap
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_cle_logo.png"/>

Takes a label map, determines the centroids of all labels and writes the distance of all labelled pixels to their centroid in the result image.
Background pixels stay zero.

Categories: [Measurements](https://clij.github.io/clij2-docs/reference__measurement), [Labels](https://clij.github.io/clij2-docs/reference__label)

Availability: Available in Fiji by activating the update sites clij and clij2.
This function is part of clij2_-2.3.0.6.jar.

### Usage in ImageJ macro
```
Ext.CLIJ2_euclideanDistanceFromLabelCentroidMap(Image labelmap_input, Image destination);
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
ClearCLBuffer labelmap_input = clij2.push(labelmap_inputImagePlus);
destination = clij2.create(labelmap_input);
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.euclideanDistanceFromLabelCentroidMap(labelmap_input, destination);
</pre>

<pre class="highlight">
// show result
destinationImagePlus = clij2.pull(destination);
destinationImagePlus.show();

// cleanup memory on GPU
clij2.release(labelmap_input);
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
labelmap_input = clij2.pushMat(labelmap_input_matrix);
destination = clij2.create(labelmap_input);
</pre>

<pre class="highlight">
% Execute operation on GPU
clij2.euclideanDistanceFromLabelCentroidMap(labelmap_input, destination);
</pre>

<pre class="highlight">
% show result
destination = clij2.pullMat(destination)

% cleanup memory on GPU
clij2.release(labelmap_input);
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
labelmap_input_sequence = getSequence();
labelmap_input = clij2.pushSequence(labelmap_input_sequence);
destination = clij2.create(labelmap_input);
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.euclideanDistanceFromLabelCentroidMap(labelmap_input, destination);
</pre>

<pre class="highlight">
// show result
destination_sequence = clij2.pullSequence(destination)
Icy.addSequence(destination_sequence);
// cleanup memory on GPU
clij2.release(labelmap_input);
clij2.release(destination);
</pre>

</details>



<details>

<summary>
clEsperanto Python (experimental)
</summary>
<pre class="highlight">import pyclesperanto_prototype as cle

cle.euclidean_distance_from_label_centroid_map(labelmap_input, destination)

</pre>



</details>



[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

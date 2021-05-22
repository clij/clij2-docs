## labelMaximumExtensionRatioMap
<img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_cle_logo.png"/>

Takes a label map, determines for every label the extension ratio and replaces every label with the that number.

The extension ratio is the maximum distance of any pixel in the label to the label centroid divided by the average distance of all pixels in the label to the centroid.

Categories: [Labels](https://clij.github.io/clij2-docs/reference__label), [Measurements](https://clij.github.io/clij2-docs/reference__measurement), Visualisation

Availability: Available in Fiji by activating the update sites clij and clij2.
This function is part of clij2_-2.3.0.6.jar.

### Usage in ImageJ macro
```
Ext.CLIJ2_labelMaximumExtensionRatioMap(Image input, Image destination);
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
clij2.labelMaximumExtensionRatioMap(input, destination);
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
clij2.labelMaximumExtensionRatioMap(input, destination);
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
clij2.labelMaximumExtensionRatioMap(input, destination);
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

cle.label_maximum_extension_ratio_map(input, destination)

</pre>



</details>





### Example notebooks
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/neighbors/quantitative_neighbor_maps.ipynb"><img src="images/language_python.png" height="20"/></a> [quantitative_neighbor_maps.ipynb](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/neighbors/quantitative_neighbor_maps.ipynb)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

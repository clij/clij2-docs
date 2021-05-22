## proximalNeighborCountMap
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_empty_logo.png"/>

Takes a label map, determines which labels are within a given distance range and replaces every label with the number of neighboring labels.



Categories: [Graphs](https://clij.github.io/clij2-docs/reference__graph), [Labels](https://clij.github.io/clij2-docs/reference__label),  Visualisation, [Measurements](https://clij.github.io/clij2-docs/reference__measurement)

Availability: Available in Fiji by activating the update sites clij and clij2.
This function is part of clij2_-2.3.0.6.jar.

### proximalNeighborCountMap often follows after
* <a href="reference_connectedComponentsLabelingBox">connectedComponentsLabelingBox</a> (1)


### Usage in ImageJ macro
```
Ext.CLIJ2_proximalNeighborCountMap(Image input, Image destination, Number min_distance, Number max_distance);
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
float min_distance = 1.0;
float max_distance = 2.0;
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.proximalNeighborCountMap(input, destination, min_distance, max_distance);
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
min_distance = 1.0;
max_distance = 2.0;
</pre>

<pre class="highlight">
% Execute operation on GPU
clij2.proximalNeighborCountMap(input, destination, min_distance, max_distance);
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
min_distance = 1.0;
max_distance = 2.0;
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.proximalNeighborCountMap(input, destination, min_distance, max_distance);
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





### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/parametric_images.ijm"><img src="images/language_macro.png" height="20"/></a> [parametric_images.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/parametric_images.ijm)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

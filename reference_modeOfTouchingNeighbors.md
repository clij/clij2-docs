## modeOfTouchingNeighbors
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_cle_logo.png"/>

Takes a touch matrix and a vector of values to determine the most popular integer value among touching neighbors for every object.
TODO: This only works for values between 0 and 255 for now.

Availability: Available in Fiji by activating the update sites clij and clij2.
This function is part of clij2_-2.3.0.6.jar.

### Usage in ImageJ macro
```
Ext.CLIJ2_modeOfTouchingNeighbors(Image values, Image touch_matrix, Image mode_values_destination);
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
ClearCLBuffer values = clij2.push(valuesImagePlus);
ClearCLBuffer touch_matrix = clij2.push(touch_matrixImagePlus);
mode_values_destination = clij2.create(values);
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.modeOfTouchingNeighbors(values, touch_matrix, mode_values_destination);
</pre>

<pre class="highlight">
// show result
mode_values_destinationImagePlus = clij2.pull(mode_values_destination);
mode_values_destinationImagePlus.show();

// cleanup memory on GPU
clij2.release(values);
clij2.release(touch_matrix);
clij2.release(mode_values_destination);
</pre>

</details>



<details>

<summary>
Matlab
</summary>
<pre class="highlight">% init CLIJ and GPU
clij2 = init_clatlab();

% get input parameters
values = clij2.pushMat(values_matrix);
touch_matrix = clij2.pushMat(touch_matrix_matrix);
mode_values_destination = clij2.create(values);
</pre>

<pre class="highlight">
% Execute operation on GPU
clij2.modeOfTouchingNeighbors(values, touch_matrix, mode_values_destination);
</pre>

<pre class="highlight">
% show result
mode_values_destination = clij2.pullMat(mode_values_destination)

% cleanup memory on GPU
clij2.release(values);
clij2.release(touch_matrix);
clij2.release(mode_values_destination);
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
values_sequence = getSequence();
values = clij2.pushSequence(values_sequence);
touch_matrix_sequence = getSequence();
touch_matrix = clij2.pushSequence(touch_matrix_sequence);
mode_values_destination = clij2.create(values);
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.modeOfTouchingNeighbors(values, touch_matrix, mode_values_destination);
</pre>

<pre class="highlight">
// show result
mode_values_destination_sequence = clij2.pullSequence(mode_values_destination)
Icy.addSequence(mode_values_destination_sequence);
// cleanup memory on GPU
clij2.release(values);
clij2.release(touch_matrix);
clij2.release(mode_values_destination);
</pre>

</details>



<details>

<summary>
clEsperanto Python (experimental)
</summary>
<pre class="highlight">import pyclesperanto_prototype as cle

cle.mode_of_touching_neighbors(values, touch_matrix, mode_values_destination)

</pre>



</details>





### Example notebooks
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/tissues/tissue_neighborhood_quantification.ipynb"><img src="images/language_python.png" height="20"/></a> [tissue_neighborhood_quantification.ipynb](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/tissues/tissue_neighborhood_quantification.ipynb)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

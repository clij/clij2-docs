## modeOfTouchingNeighbors
<img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_cle_logo.png"/>

Takes a touch matrix and a vector of values to determine the most popular integer value among touching neighbors for every object.
TODO: This only works for values between 0 and 255 for now.

Availability: Available in Fiji by activating the update sites clij and clij2.
This function is part of clijx_-0.30.1.22.jar.

### Usage in ImageJ macro
```
Ext.CLIJx_modeOfTouchingNeighbors(Image values, Image touch_matrix, Image mode_values_destination);
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
ClearCLBuffer values = clijx.push(valuesImagePlus);
ClearCLBuffer touch_matrix = clijx.push(touch_matrixImagePlus);
mode_values_destination = clijx.create(values);
</pre>

<pre class="highlight">
// Execute operation on GPU
clijx.modeOfTouchingNeighbors(values, touch_matrix, mode_values_destination);
</pre>

<pre class="highlight">
// show result
mode_values_destinationImagePlus = clijx.pull(mode_values_destination);
mode_values_destinationImagePlus.show();

// cleanup memory on GPU
clijx.release(values);
clijx.release(touch_matrix);
clijx.release(mode_values_destination);
</pre>

</details>



<details>

<summary>
Matlab
</summary>
<pre class="highlight">% init CLIJ and GPU
clijx = init_clatlabx();

% get input parameters
values = clijx.pushMat(values_matrix);
touch_matrix = clijx.pushMat(touch_matrix_matrix);
mode_values_destination = clijx.create(values);
</pre>

<pre class="highlight">
% Execute operation on GPU
clijx.modeOfTouchingNeighbors(values, touch_matrix, mode_values_destination);
</pre>

<pre class="highlight">
% show result
mode_values_destination = clijx.pullMat(mode_values_destination)

% cleanup memory on GPU
clijx.release(values);
clijx.release(touch_matrix);
clijx.release(mode_values_destination);
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

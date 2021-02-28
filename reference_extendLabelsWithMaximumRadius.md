## extendLabelsWithMaximumRadius
<img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_cle_logo.png"/>

Extend labels with a given radius.

This is actually a local maximum filter applied to a label map which does not overwrite labels.
It is recommended to apply this operation to isotropic images only.

Categories: [Filter](https://clij.github.io/clij2-docs/reference__filter), [Labels](https://clij.github.io/clij2-docs/reference__label)

Availability: Available in Fiji by activating the update sites clij and clij2.
This function is part of clijx_-0.30.1.21.jar.

### Usage in ImageJ macro
```
Ext.CLIJx_extendLabelsWithMaximumRadius(Image input, Image destination, Number radius);
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
ClearCLBuffer input = clijx.push(inputImagePlus);
destination = clijx.create(input);
int radius = 10;
</pre>

<pre class="highlight">
// Execute operation on GPU
clijx.extendLabelsWithMaximumRadius(input, destination, radius);
</pre>

<pre class="highlight">
// show result
destinationImagePlus = clijx.pull(destination);
destinationImagePlus.show();

// cleanup memory on GPU
clijx.release(input);
clijx.release(destination);
</pre>

</details>



<details>

<summary>
Matlab
</summary>
<pre class="highlight">% init CLIJ and GPU
clijx = init_clatlabx();

% get input parameters
input = clijx.pushMat(input_matrix);
destination = clijx.create(input);
radius = 10;
</pre>

<pre class="highlight">
% Execute operation on GPU
clijx.extendLabelsWithMaximumRadius(input, destination, radius);
</pre>

<pre class="highlight">
% show result
destination = clijx.pullMat(destination)

% cleanup memory on GPU
clijx.release(input);
clijx.release(destination);
</pre>

</details>



<details>

<summary>
clEsperanto Python (experimental)
</summary>
<pre class="highlight">import pyclesperanto_prototype as cle

cle.extend_labels_with_maximum_radius(input, destination, radius)

</pre>



</details>





### Example notebooks
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/benchmarks/extend_labels.ipynb"><img src="images/language_python.png" height="20"/></a> [extend_labels.ipynb](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/benchmarks/extend_labels.ipynb)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

## reduceLabelsToLabelEdges
<img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_empty_logo.png"/>

Takes a label map and reduces all labels to their edges. Label IDs stay the same and background will be zero.

Category: [Labels](https://clij.github.io/clij2-docs/reference__label)

Availability: Available in Fiji by activating the update sites clij and clij2.
This function is part of clijx_-0.30.2.0.jar.

### Usage in ImageJ macro
```
Ext.CLIJx_reduceLabelsToLabelEdges(Image input_labels, Image destination_labels);
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
ClearCLBuffer input_labels = clijx.push(input_labelsImagePlus);
destination_labels = clijx.create(input_labels);
</pre>

<pre class="highlight">
// Execute operation on GPU
clijx.reduceLabelsToLabelEdges(input_labels, destination_labels);
</pre>

<pre class="highlight">
// show result
destination_labelsImagePlus = clijx.pull(destination_labels);
destination_labelsImagePlus.show();

// cleanup memory on GPU
clijx.release(input_labels);
clijx.release(destination_labels);
</pre>

</details>



<details>

<summary>
Matlab
</summary>
<pre class="highlight">% init CLIJ and GPU
clijx = init_clatlabx();

% get input parameters
input_labels = clijx.pushMat(input_labels_matrix);
destination_labels = clijx.create(input_labels);
</pre>

<pre class="highlight">
% Execute operation on GPU
clijx.reduceLabelsToLabelEdges(input_labels, destination_labels);
</pre>

<pre class="highlight">
% show result
destination_labels = clijx.pullMat(destination_labels)

% cleanup memory on GPU
clijx.release(input_labels);
clijx.release(destination_labels);
</pre>

</details>



[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

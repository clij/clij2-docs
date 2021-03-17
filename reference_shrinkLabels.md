## shrinkLabels
<img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_empty_logo.png"/>

Extend labels with a given radius.

This is actually a local minimum filter applied to a label map after introducing background-gaps between labels.
In case relabel_islands is set, split objects will get new labels each. In this case, more labels might be in the result.
It is recommended to apply this operation to isotropic images only.
Warning: If labels were too small, they may be missing in the resulting label image.

Categories: [Filter](https://clij.github.io/clij2-docs/reference__filter), [Labels](https://clij.github.io/clij2-docs/reference__label)

Availability: Available in Fiji by activating the update sites clij and clij2.
This function is part of clijx_-0.30.1.22.jar.

### Usage in ImageJ macro
```
Ext.CLIJx_shrinkLabels(Image labels_input, Image labels_destination, Number radius, Boolean relabel_islands);
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
ClearCLBuffer labels_input = clijx.push(labels_inputImagePlus);
labels_destination = clijx.create(labels_input);
int radius = 10;
boolean relabel_islands = true;
</pre>

<pre class="highlight">
// Execute operation on GPU
clijx.shrinkLabels(labels_input, labels_destination, radius, relabel_islands);
</pre>

<pre class="highlight">
// show result
labels_destinationImagePlus = clijx.pull(labels_destination);
labels_destinationImagePlus.show();

// cleanup memory on GPU
clijx.release(labels_input);
clijx.release(labels_destination);
</pre>

</details>



<details>

<summary>
Matlab
</summary>
<pre class="highlight">% init CLIJ and GPU
clijx = init_clatlabx();

% get input parameters
labels_input = clijx.pushMat(labels_input_matrix);
labels_destination = clijx.create(labels_input);
radius = 10;
relabel_islands = true;
</pre>

<pre class="highlight">
% Execute operation on GPU
clijx.shrinkLabels(labels_input, labels_destination, radius, relabel_islands);
</pre>

<pre class="highlight">
% show result
labels_destination = clijx.pullMat(labels_destination)

% cleanup memory on GPU
clijx.release(labels_input);
clijx.release(labels_destination);
</pre>

</details>



[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

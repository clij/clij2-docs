## labelSurface
<img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_empty_logo.png"/>

Takes a label map and excludes all labels which are not on the surface.

For each label, a ray from a given center towards the label. If the ray crosses another label, the labelin question is not at the surface and thus, removed.

Categories: [Measurements](https://clij.github.io/clij2-docs/reference__measurement), [Labels](https://clij.github.io/clij2-docs/reference__label)

Availability: Available in Fiji by activating the update sites clij and clij2.
This function is part of clijx_-0.30.2.0.jar.

### Usage in ImageJ macro
```
Ext.CLIJx_labelSurface(Image input_labels, Image destination_labels, Number relative_center_x, Number relative_center_y, Number relative_center_z);
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
float relative_center_x = 1.0;
float relative_center_y = 2.0;
float relative_center_z = 3.0;
</pre>

<pre class="highlight">
// Execute operation on GPU
clijx.labelSurface(input_labels, destination_labels, relative_center_x, relative_center_y, relative_center_z);
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
relative_center_x = 1.0;
relative_center_y = 2.0;
relative_center_z = 3.0;
</pre>

<pre class="highlight">
% Execute operation on GPU
clijx.labelSurface(input_labels, destination_labels, relative_center_x, relative_center_y, relative_center_z);
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

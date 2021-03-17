## flagLabelsOnEdges
<img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_empty_logo.png"/>

Determines which labels in a label map touch the edges of the image (in X, Y and Z if the image is 3D). 

It results in a vector image with values 1 (touches edges) and 0 (does not touch edge).
The entry in the vector (index 0) corresponds to background, following entries correspond to labels.

Categories: [Filter](https://clij.github.io/clij2-docs/reference__filter), [Labels](https://clij.github.io/clij2-docs/reference__label)

Availability: Available in Fiji by activating the update sites clij and clij2.
This function is part of clijx_-0.30.1.22.jar.

### Usage in ImageJ macro
```
Ext.CLIJx_flagLabelsOnEdges(Image label_map_input, Image flag_vector_destination);
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
ClearCLBuffer label_map_input = clijx.push(label_map_inputImagePlus);
flag_vector_destination = clijx.create(label_map_input);
</pre>

<pre class="highlight">
// Execute operation on GPU
clijx.flagLabelsOnEdges(label_map_input, flag_vector_destination);
</pre>

<pre class="highlight">
// show result
flag_vector_destinationImagePlus = clijx.pull(flag_vector_destination);
flag_vector_destinationImagePlus.show();

// cleanup memory on GPU
clijx.release(label_map_input);
clijx.release(flag_vector_destination);
</pre>

</details>



<details>

<summary>
Matlab
</summary>
<pre class="highlight">% init CLIJ and GPU
clijx = init_clatlabx();

% get input parameters
label_map_input = clijx.pushMat(label_map_input_matrix);
flag_vector_destination = clijx.create(label_map_input);
</pre>

<pre class="highlight">
% Execute operation on GPU
clijx.flagLabelsOnEdges(label_map_input, flag_vector_destination);
</pre>

<pre class="highlight">
% show result
flag_vector_destination = clijx.pullMat(flag_vector_destination)

% cleanup memory on GPU
clijx.release(label_map_input);
clijx.release(flag_vector_destination);
</pre>

</details>



[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

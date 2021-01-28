## readIntensitiesFromMap
<img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_cle_logo.png"/>

Takes a label image and an parametric image and reads parametric values from the labels positions.

The read intensity valus are stored in a new vector.

Note: This will only work if all labels have number of voxels == 1 or if all pixels in each label have the same value.

### Parameters

labels
map_image
values_destination

Categories: [Labels](https://clij.github.io/clij2-docs/reference__label), [Measurements](https://clij.github.io/clij2-docs/reference__measurement), [Graphs](https://clij.github.io/clij2-docs/reference__graph)

### Usage in ImageJ macro
```
Ext.CLIJx_readIntensitiesFromMap(Image input, Image new_values_vector, Image destination);
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
ClearCLBuffer new_values_vector = clijx.push(new_values_vectorImagePlus);
destination = clijx.create(input);
</pre>

<pre class="highlight">
// Execute operation on GPU
clijx.readIntensitiesFromMap(input, new_values_vector, destination);
</pre>

<pre class="highlight">
// show result
destinationImagePlus = clijx.pull(destination);
destinationImagePlus.show();

// cleanup memory on GPU
clijx.release(input);
clijx.release(new_values_vector);
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
new_values_vector = clijx.pushMat(new_values_vector_matrix);
destination = clijx.create(input);
</pre>

<pre class="highlight">
% Execute operation on GPU
clijx.readIntensitiesFromMap(input, new_values_vector, destination);
</pre>

<pre class="highlight">
% show result
destination = clijx.pullMat(destination)

% cleanup memory on GPU
clijx.release(input);
clijx.release(new_values_vector);
clijx.release(destination);
</pre>

</details>



<details>

<summary>
clEsperanto Python (experimental)
</summary>
<pre class="highlight">import pyclesperanto_prototype as cle

cle.read_intensities_from_map(input, new_values_vector, destination)

</pre>



</details>



[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

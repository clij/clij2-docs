## makeIsotropic
<img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_empty_logo.png"/>

Applies a scaling operation using linear interpolation to generate an image stack with a given isotropic voxel size.

Category: [Transformations](https://clij.github.io/clij2-docs/reference__transform)

Availability: Available in Fiji by activating the update sites clij and clij2.
This function is part of clijx_-0.30.1.21.jar.

### Usage in ImageJ macro
```
Ext.CLIJx_makeIsotropic(Image input, Image destination, Number original_voxel_size_x, Number original_voxel_size_y, Number original_voxel_size_z, Number new_voxel_size);
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
float original_voxel_size_x = 1.0;
float original_voxel_size_y = 2.0;
float original_voxel_size_z = 3.0;
float new_voxel_size = 4.0;
</pre>

<pre class="highlight">
// Execute operation on GPU
clijx.makeIsotropic(input, destination, original_voxel_size_x, original_voxel_size_y, original_voxel_size_z, new_voxel_size);
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
original_voxel_size_x = 1.0;
original_voxel_size_y = 2.0;
original_voxel_size_z = 3.0;
new_voxel_size = 4.0;
</pre>

<pre class="highlight">
% Execute operation on GPU
clijx.makeIsotropic(input, destination, original_voxel_size_x, original_voxel_size_y, original_voxel_size_z, new_voxel_size);
</pre>

<pre class="highlight">
% show result
destination = clijx.pullMat(destination)

% cleanup memory on GPU
clijx.release(input);
clijx.release(destination);
</pre>

</details>



[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

## rigidTransform
<img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_cle_logo.png"/>

Applies a rigid transform using linear interpolation to an image stack.

Category: [Transformations](https://clij.github.io/clij2-docs/reference__transform)

### Usage in ImageJ macro
```
Ext.CLIJx_rigidTransform(Image input, Image destination, Number translation_x, Number translation_y, Number translation_z, Number rotation_angle_x, Number rotation_angle_y, Number rotation_angle_z);
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
float translation_x = 1.0;
float translation_y = 2.0;
float translation_z = 3.0;
float rotation_angle_x = 4.0;
float rotation_angle_y = 5.0;
float rotation_angle_z = 6.0;
</pre>

<pre class="highlight">
// Execute operation on GPU
clijx.rigidTransform(input, destination, translation_x, translation_y, translation_z, rotation_angle_x, rotation_angle_y, rotation_angle_z);
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
translation_x = 1.0;
translation_y = 2.0;
translation_z = 3.0;
rotation_angle_x = 4.0;
rotation_angle_y = 5.0;
rotation_angle_z = 6.0;
</pre>

<pre class="highlight">
% Execute operation on GPU
clijx.rigidTransform(input, destination, translation_x, translation_y, translation_z, rotation_angle_x, rotation_angle_y, rotation_angle_z);
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

cle.rigid_transform(input, destination, translation_x, translation_y, translation_z, rotation_angle_x, rotation_angle_y, rotation_angle_z)

</pre>



</details>



[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

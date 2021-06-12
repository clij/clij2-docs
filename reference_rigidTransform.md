## rigidTransform
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_cle_logo.png"/>

Applies a rigid transform using linear interpolation to an image stack.

Category: [Transformations](https://clij.github.io/clij2-docs/reference__transform)

Availability: Available in Fiji by activating the update sites clij and clij2.
This function is part of clij2_-2.5.0.1.jar.

### Usage in ImageJ macro
```
Ext.CLIJ2_rigidTransform(Image input, Image destination, Number translation_x, Number translation_y, Number translation_z, Number rotation_angle_x, Number rotation_angle_y, Number rotation_angle_z);
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
ClearCLBuffer input = clij2.push(inputImagePlus);
destination = clij2.create(input);
float translation_x = 1.0;
float translation_y = 2.0;
float translation_z = 3.0;
float rotation_angle_x = 4.0;
float rotation_angle_y = 5.0;
float rotation_angle_z = 6.0;
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.rigidTransform(input, destination, translation_x, translation_y, translation_z, rotation_angle_x, rotation_angle_y, rotation_angle_z);
</pre>

<pre class="highlight">
// show result
destinationImagePlus = clij2.pull(destination);
destinationImagePlus.show();

// cleanup memory on GPU
clij2.release(input);
clij2.release(destination);
</pre>

</details>



<details>

<summary>
Matlab
</summary>
<pre class="highlight">% init CLIJ and GPU
clij2 = init_clatlab();

% get input parameters
input = clij2.pushMat(input_matrix);
destination = clij2.create(input);
translation_x = 1.0;
translation_y = 2.0;
translation_z = 3.0;
rotation_angle_x = 4.0;
rotation_angle_y = 5.0;
rotation_angle_z = 6.0;
</pre>

<pre class="highlight">
% Execute operation on GPU
clij2.rigidTransform(input, destination, translation_x, translation_y, translation_z, rotation_angle_x, rotation_angle_y, rotation_angle_z);
</pre>

<pre class="highlight">
% show result
destination = clij2.pullMat(destination)

% cleanup memory on GPU
clij2.release(input);
clij2.release(destination);
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
input_sequence = getSequence();
input = clij2.pushSequence(input_sequence);
destination = clij2.create(input);
translation_x = 1.0;
translation_y = 2.0;
translation_z = 3.0;
rotation_angle_x = 4.0;
rotation_angle_y = 5.0;
rotation_angle_z = 6.0;
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.rigidTransform(input, destination, translation_x, translation_y, translation_z, rotation_angle_x, rotation_angle_y, rotation_angle_z);
</pre>

<pre class="highlight">
// show result
destination_sequence = clij2.pullSequence(destination)
Icy.addSequence(destination_sequence);
// cleanup memory on GPU
clij2.release(input);
clij2.release(destination);
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





### Example notebooks
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/transforms/affine_transforms.ipynb"><img src="images/language_python.png" height="20"/></a> [affine_transforms.ipynb](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/transforms/affine_transforms.ipynb)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

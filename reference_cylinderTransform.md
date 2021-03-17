## cylinderTransform
<img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_empty_logo.png"/>

Applies a cylinder transform to an image stack assuming the center line goes in Y direction in the center of the stack.

This transforms an image stack from an XYZ coordinate system to a AYD coordinate system with 
A the angle around the center line, 
Y the original Y coordinate and 
D, the distance from the center.

Thus, going in virtual Z direction (actually D) in the resulting stack, you go from the center to theperiphery.

Category: [Transformations](https://clij.github.io/clij2-docs/reference__transform)

Availability: Available in Fiji by activating the update sites clij and clij2.
This function is part of clijx_-0.30.1.22.jar.

### Usage in ImageJ macro
```
Ext.CLIJx_cylinderTransform(Image input, Image destination, Number number_of_angles, Number delta_angle_in_degrees, Number relative_center_x, Number relative_center_z);
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
int number_of_angles = 10;
float delta_angle_in_degrees = 1.0;
float relative_center_x = 2.0;
float relative_center_z = 3.0;
</pre>

<pre class="highlight">
// Execute operation on GPU
clijx.cylinderTransform(input, destination, number_of_angles, delta_angle_in_degrees, relative_center_x, relative_center_z);
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
number_of_angles = 10;
delta_angle_in_degrees = 1.0;
relative_center_x = 2.0;
relative_center_z = 3.0;
</pre>

<pre class="highlight">
% Execute operation on GPU
clijx.cylinderTransform(input, destination, number_of_angles, delta_angle_in_degrees, relative_center_x, relative_center_z);
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

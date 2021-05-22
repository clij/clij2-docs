## cylinderTransform
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_empty_logo.png"/>

Applies a cylinder transform to an image stack assuming the center line goes in Y direction in the center of the stack.

This transforms an image stack from an XYZ coordinate system to a AYD coordinate system with 
A the angle around the center line, 
Y the original Y coordinate and 
D, the distance from the center.

Thus, going in virtual Z direction (actually D) in the resulting stack, you go from the center to theperiphery.

Category: [Transformations](https://clij.github.io/clij2-docs/reference__transform)

Availability: Available in Fiji by activating the update sites clij and clij2.
This function is part of clij2_-2.3.0.6.jar.

### Usage in ImageJ macro
```
Ext.CLIJ2_cylinderTransform(Image input, Image destination, Number number_of_angles, Number delta_angle_in_degrees, Number relative_center_x, Number relative_center_z);
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
int number_of_angles = 10;
float delta_angle_in_degrees = 1.0;
float relative_center_x = 2.0;
float relative_center_z = 3.0;
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.cylinderTransform(input, destination, number_of_angles, delta_angle_in_degrees, relative_center_x, relative_center_z);
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
number_of_angles = 10;
delta_angle_in_degrees = 1.0;
relative_center_x = 2.0;
relative_center_z = 3.0;
</pre>

<pre class="highlight">
% Execute operation on GPU
clij2.cylinderTransform(input, destination, number_of_angles, delta_angle_in_degrees, relative_center_x, relative_center_z);
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
number_of_angles = 10;
delta_angle_in_degrees = 1.0;
relative_center_x = 2.0;
relative_center_z = 3.0;
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.cylinderTransform(input, destination, number_of_angles, delta_angle_in_degrees, relative_center_x, relative_center_z);
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



[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

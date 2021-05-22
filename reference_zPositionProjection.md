## zPositionProjection
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_empty_logo.png"/>

Project a defined Z-slice of a 3D stack into a 2D image.

Which Z-slice is defined as the z_position image, which represents an altitude map.

Category: [Projections](https://clij.github.io/clij2-docs/reference__project)

Availability: Available in Fiji by activating the update sites clij and clij2.
This function is part of clij2_-2.3.0.6.jar.

### Usage in ImageJ macro
```
Ext.CLIJ2_zPositionProjection(Image source_stack, Image z_position, Image destination);
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
ClearCLBuffer source_stack = clij2.push(source_stackImagePlus);
ClearCLBuffer z_position = clij2.push(z_positionImagePlus);
destination = clij2.create(source_stack);
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.zPositionProjection(source_stack, z_position, destination);
</pre>

<pre class="highlight">
// show result
destinationImagePlus = clij2.pull(destination);
destinationImagePlus.show();

// cleanup memory on GPU
clij2.release(source_stack);
clij2.release(z_position);
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
source_stack = clij2.pushMat(source_stack_matrix);
z_position = clij2.pushMat(z_position_matrix);
destination = clij2.create(source_stack);
</pre>

<pre class="highlight">
% Execute operation on GPU
clij2.zPositionProjection(source_stack, z_position, destination);
</pre>

<pre class="highlight">
% show result
destination = clij2.pullMat(destination)

% cleanup memory on GPU
clij2.release(source_stack);
clij2.release(z_position);
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
source_stack_sequence = getSequence();
source_stack = clij2.pushSequence(source_stack_sequence);
z_position_sequence = getSequence();
z_position = clij2.pushSequence(z_position_sequence);
destination = clij2.create(source_stack);
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.zPositionProjection(source_stack, z_position, destination);
</pre>

<pre class="highlight">
// show result
destination_sequence = clij2.pullSequence(destination)
Icy.addSequence(destination_sequence);
// cleanup memory on GPU
clij2.release(source_stack);
clij2.release(z_position);
clij2.release(destination);
</pre>

</details>



[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

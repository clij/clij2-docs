## zPositionProjection
<img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_empty_logo.png"/>

Project a defined Z-slice of a 3D stack into a 2D image.

The slice is determined using a separate 2D image.

Category: [Projections](https://clij.github.io/clij2-docs/reference__project)

### Usage in ImageJ macro
```
Ext.CLIJx_zPositionProjection(Image source_stack, Image z_position, Image destination);
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
ClearCLBuffer source_stack = clijx.push(source_stackImagePlus);
ClearCLBuffer z_position = clijx.push(z_positionImagePlus);
destination = clijx.create(source_stack);
</pre>

<pre class="highlight">
// Execute operation on GPU
clijx.zPositionProjection(source_stack, z_position, destination);
</pre>

<pre class="highlight">
// show result
destinationImagePlus = clijx.pull(destination);
destinationImagePlus.show();

// cleanup memory on GPU
clijx.release(source_stack);
clijx.release(z_position);
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
source_stack = clijx.pushMat(source_stack_matrix);
z_position = clijx.pushMat(z_position_matrix);
destination = clijx.create(source_stack);
</pre>

<pre class="highlight">
% Execute operation on GPU
clijx.zPositionProjection(source_stack, z_position, destination);
</pre>

<pre class="highlight">
% show result
destination = clijx.pullMat(destination)

% cleanup memory on GPU
clijx.release(source_stack);
clijx.release(z_position);
clijx.release(destination);
</pre>

</details>



[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

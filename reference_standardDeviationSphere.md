## standardDeviationSphere
<img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_empty_logo.png"/>

Computes the local standard deviation of a pixels spherical neighborhood. 

The spheres size is specified by 
its half-width, half-height and half-depth (radius). If 2D images are given, radius_z will be ignored. 

Category: [Filter](https://clij.github.io/clij2-docs/reference__filter)

Availability: Available in Fiji by activating the update sites clij and clij2.
This function is part of clijx_-0.30.2.0.jar.

### Usage in ImageJ macro
```
Ext.CLIJx_standardDeviationSphere(Image source, Image destination, Number radius_x, Number radius_y, Number radius_z);
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
ClearCLBuffer source = clijx.push(sourceImagePlus);
destination = clijx.create(source);
int radius_x = 10;
int radius_y = 20;
int radius_z = 30;
</pre>

<pre class="highlight">
// Execute operation on GPU
clijx.standardDeviationSphere(source, destination, radius_x, radius_y, radius_z);
</pre>

<pre class="highlight">
// show result
destinationImagePlus = clijx.pull(destination);
destinationImagePlus.show();

// cleanup memory on GPU
clijx.release(source);
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
source = clijx.pushMat(source_matrix);
destination = clijx.create(source);
radius_x = 10;
radius_y = 20;
radius_z = 30;
</pre>

<pre class="highlight">
% Execute operation on GPU
clijx.standardDeviationSphere(source, destination, radius_x, radius_y, radius_z);
</pre>

<pre class="highlight">
% show result
destination = clijx.pullMat(destination)

% cleanup memory on GPU
clijx.release(source);
clijx.release(destination);
</pre>

</details>



[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

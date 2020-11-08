## blur3D
<img src="images/mini_clij1_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_empty_logo.png"/>

Computes the Gaussian blurred image of an image given two sigma values in X, Y and Z. 

Thus, the filterkernel can have non-isotropic shape.

The implementation is done separable. In case a sigma equals zero, the direction is not blurred.

DEPRECATED: This method is <b>deprecated</b>. Use gaussianBlur3D instead.

Categories:  Noise, [Filter](https://clij.github.io/clij2-docs/reference__filter)

### Usage in ImageJ macro
```
Ext.CLIJ2_blur3D(Image source, Image destination, Number sigma_x, Number sigma_y, Number sigma_z);
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
ClearCLBuffer source = clij2.push(sourceImagePlus);
destination = clij2.create(source);
float sigma_x = 1.0;
float sigma_y = 2.0;
float sigma_z = 3.0;
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.blur3D(source, destination, sigma_x, sigma_y, sigma_z);
</pre>

<pre class="highlight">
// show result
destinationImagePlus = clij2.pull(destination);
destinationImagePlus.show();

// cleanup memory on GPU
clij2.release(source);
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
source = clij2.pushMat(source_matrix);
destination = clij2.create(source);
sigma_x = 1.0;
sigma_y = 2.0;
sigma_z = 3.0;
</pre>

<pre class="highlight">
% Execute operation on GPU
clij2.blur3D(source, destination, sigma_x, sigma_y, sigma_z);
</pre>

<pre class="highlight">
% show result
destination = clij2.pullMat(destination)

% cleanup memory on GPU
clij2.release(source);
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
source_sequence = getSequence();
source = clij2.pushSequence(source_sequence);
destination = clij2.create(source);
sigma_x = 1.0;
sigma_y = 2.0;
sigma_z = 3.0;
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.blur3D(source, destination, sigma_x, sigma_y, sigma_z);
</pre>

<pre class="highlight">
// show result
destination_sequence = clij2.pullSequence(destination)
Icy.addSequence(destination_sequence);
// cleanup memory on GPU
clij2.release(source);
clij2.release(destination);
</pre>

</details>



[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

## scale3D
<img src="images/mini_clij1_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_cle_logo.png"/>

Scales an image with a given factor.

Category: [Transformations](https://clij.github.io/clij2-docs/reference__transform)

### Usage in ImageJ macro
```
Ext.CLIJ2_scale3D(Image source, Image destination, Number scaling_factor_x, Number scaling_factor_y, Number scaling_factor_z,  Boolean scale_to_center);
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
float scaling_factor_x = 1.0;
float scaling_factor_y = 2.0;
float scaling_factor_z = 3.0;
boolean scale_to_center = true;
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.scale3D(source, destination, scaling_factor_x, scaling_factor_y, scaling_factor_z, scale_to_center);
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
scaling_factor_x = 1.0;
scaling_factor_y = 2.0;
scaling_factor_z = 3.0;
scale_to_center = true;
</pre>

<pre class="highlight">
% Execute operation on GPU
clij2.scale3D(source, destination, scaling_factor_x, scaling_factor_y, scaling_factor_z, scale_to_center);
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
scaling_factor_x = 1.0;
scaling_factor_y = 2.0;
scaling_factor_z = 3.0;
scale_to_center = true;
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.scale3D(source, destination, scaling_factor_x, scaling_factor_y, scaling_factor_z, scale_to_center);
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



<details>

<summary>
clEsperanto Python (experimental)
</summary>
<pre class="highlight">import pyclesperanto_prototype as cle

cle.scale(source, destination, scaling_factor_x, scaling_factor_y, scaling_factor_z, scale_to_center)

</pre>



</details>



[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

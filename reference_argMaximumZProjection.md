## argMaximumZProjection
<img src="images/mini_clij1_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_empty_logo.png"/>

Determines the maximum projection of an image stack along Z.

Furthermore, another 2D image is generated with pixels containing the z-index where the maximum was found (zero based).

Category: [Projections](https://clij.github.io/clij2-docs/reference__project)

### Usage in ImageJ macro
```
Ext.CLIJ2_argMaximumZProjection(Image source, Image destination_max, Image destination_arg_max);
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
destination_max = clij2.create(source);
destination_arg_max = clij2.create(source);
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.argMaximumZProjection(source, destination_max, destination_arg_max);
</pre>

<pre class="highlight">
// show result
destination_maxImagePlus = clij2.pull(destination_max);
destination_maxImagePlus.show();
destination_arg_maxImagePlus = clij2.pull(destination_arg_max);
destination_arg_maxImagePlus.show();

// cleanup memory on GPU
clij2.release(source);
clij2.release(destination_max);
clij2.release(destination_arg_max);
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
destination_max = clij2.create(source);
destination_arg_max = clij2.create(source);
</pre>

<pre class="highlight">
% Execute operation on GPU
clij2.argMaximumZProjection(source, destination_max, destination_arg_max);
</pre>

<pre class="highlight">
% show result
destination_max = clij2.pullMat(destination_max)
destination_arg_max = clij2.pullMat(destination_arg_max)

% cleanup memory on GPU
clij2.release(source);
clij2.release(destination_max);
clij2.release(destination_arg_max);
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
destination_max = clij2.create(source);
destination_arg_max = clij2.create(source);
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.argMaximumZProjection(source, destination_max, destination_arg_max);
</pre>

<pre class="highlight">
// show result
destination_max_sequence = clij2.pullSequence(destination_max)
Icy.addSequence(destination_max_sequence);destination_arg_max_sequence = clij2.pullSequence(destination_arg_max)
Icy.addSequence(destination_arg_max_sequence);
// cleanup memory on GPU
clij2.release(source);
clij2.release(destination_max);
clij2.release(destination_arg_max);
</pre>

</details>



[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

## minimumYProjection
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_cle_logo.png"/>

Determines the minimum intensity projection of an image along Y.

Category: [Projections](https://clij.github.io/clij2-docs/reference__project)

Availability: Available in Fiji by activating the update sites clij and clij2.
This function is part of clij2_-2.2.1.0.jar.

### Usage in ImageJ macro
```
Ext.CLIJ2_minimumYProjection(Image source, Image destination_min);
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
destination_min = clij2.create(source);
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.minimumYProjection(source, destination_min);
</pre>

<pre class="highlight">
// show result
destination_minImagePlus = clij2.pull(destination_min);
destination_minImagePlus.show();

// cleanup memory on GPU
clij2.release(source);
clij2.release(destination_min);
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
destination_min = clij2.create(source);
</pre>

<pre class="highlight">
% Execute operation on GPU
clij2.minimumYProjection(source, destination_min);
</pre>

<pre class="highlight">
% show result
destination_min = clij2.pullMat(destination_min)

% cleanup memory on GPU
clij2.release(source);
clij2.release(destination_min);
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
destination_min = clij2.create(source);
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.minimumYProjection(source, destination_min);
</pre>

<pre class="highlight">
// show result
destination_min_sequence = clij2.pullSequence(destination_min)
Icy.addSequence(destination_min_sequence);
// cleanup memory on GPU
clij2.release(source);
clij2.release(destination_min);
</pre>

</details>



<details>

<summary>
clEsperanto Python (experimental)
</summary>
<pre class="highlight">import pyclesperanto_prototype as cle

cle.minimum_y_projection(source, destination_min)

</pre>



</details>



[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

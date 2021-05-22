## watershed
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_empty_logo.png"/>

Apply a binary watershed to a binary image and introduces black pixels between objects.

Note: This parallel GPU-accelerated approach delivers results of limited quality.See the web for alternatives: https://github.com/clij/clij2/issues/18

Categories: [Filter](https://clij.github.io/clij2-docs/reference__filter), [Binary](https://clij.github.io/clij2-docs/reference__binary)

Availability: Available in Fiji by activating the update sites clij and clij2.
This function is part of clij2_-2.3.0.6.jar.

### Usage in ImageJ macro
```
Ext.CLIJ2_watershed(Image binary_source, Image destination);
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
ClearCLBuffer binary_source = clij2.push(binary_sourceImagePlus);
destination = clij2.create(binary_source);
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.watershed(binary_source, destination);
</pre>

<pre class="highlight">
// show result
destinationImagePlus = clij2.pull(destination);
destinationImagePlus.show();

// cleanup memory on GPU
clij2.release(binary_source);
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
binary_source = clij2.pushMat(binary_source_matrix);
destination = clij2.create(binary_source);
</pre>

<pre class="highlight">
% Execute operation on GPU
clij2.watershed(binary_source, destination);
</pre>

<pre class="highlight">
% show result
destination = clij2.pullMat(destination)

% cleanup memory on GPU
clij2.release(binary_source);
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
binary_source_sequence = getSequence();
binary_source = clij2.pushSequence(binary_source_sequence);
destination = clij2.create(binary_source);
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.watershed(binary_source, destination);
</pre>

<pre class="highlight">
// show result
destination_sequence = clij2.pullSequence(destination)
Icy.addSequence(destination_sequence);
// cleanup memory on GPU
clij2.release(binary_source);
clij2.release(destination);
</pre>

</details>



[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

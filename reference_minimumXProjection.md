## minimumXProjection
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_empty_logo.png"/>

Determines the minimum intensity projection of an image along Y.

### Usage in ImageJ macro
```
Ext.CLIJ2_minimumXProjection(Image source, Image destination_sum);
```




### Usage in Java


<details>

<summary>
clij2.minimumXProjection(source, destination_sum);
</summary>
<pre class="highlight">// init CLIJ and GPU
import net.haesleinhuepf.clij2.CLIJ2;
import net.haesleinhuepf.clij.clearcl.ClearCLBuffer;
CLIJ2 clij2 = CLIJ2.getInstance();

// get input parameters
ClearCLBuffer source = clij2.push(sourceImagePlus);
destination_sum = clij2.create(source);
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.minimumXProjection(source, destination_sum);
</pre>

<pre class="highlight">
//show result
destination_sumImagePlus = clij2.pull(destination_sum);
destination_sumImagePlus.show();

// cleanup memory on GPU
clij2.release(source);
clij2.release(destination_sum);
</pre>

</details>





### Usage in Matlab


<details>

<summary>
clij2.minimumXProjection(source, destination_sum);
</summary>
<pre class="highlight">% init CLIJ and GPU
clij2 = init_clatlab();

% get input parameters
source = clij2.pushMat(source_matrix);
destination_sum = clij2.create(source);
</pre>

<pre class="highlight">
% Execute operation on GPU
clij2.minimumXProjection(source, destination_sum);
</pre>

<pre class="highlight">
% show result
destination_sum = clij2.pullMat(destination_sum)

% cleanup memory on GPU
clij2.release(source);
clij2.release(destination_sum);
</pre>

</details>





### Usage in Icy


<details>

<summary>
clij2.minimumXProjection(source, destination_sum);
</summary>
<pre class="highlight">// init CLIJ and GPU
importClass(net.haesleinhuepf.clicy.CLICY);
importClass(Packages.icy.main.Icy);

clij2 = CLICY.getInstance();

// get input parameters
source_sequence = getSequence();
source = clij2.pushSequence(source_sequence);
destination_sum = clij2.create(source);
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.minimumXProjection(source, destination_sum);
</pre>

<pre class="highlight">
// show result
destination_sum_sequence = clij2.pullSequence(destination_sum)
Icy.addSequence(destination_sum_sequence);
// cleanup memory on GPU
clij2.release(source);
clij2.release(destination_sum);
</pre>

</details>



[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

## meanZProjectionBounded
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/>

Determines the mean projection of an image along Z within a given z range.

### Usage in ImageJ macro
```
Ext.CLIJ2_meanZProjectionBounded(Image source, ByRef Image destination_mean, Number min_z, Number max_z);
```




### Usage in Java


<details>

<summary>
clij2.meanZProjectionBounded(source, destination_mean, min_z, max_z);
</summary>
<pre class="highlight">// init CLIJ and GPU
import net.haesleinhuepf.clij2.CLIJ2;
import net.haesleinhuepf.clij.clearcl.ClearCLBuffer;
CLIJ2 clij2 = CLIJ2.getInstance();

// get input parameters
ClearCLBuffer source = clij2.push(sourceImagePlus);
destination_mean = clij2.create(source);
int min_z = 10;
int max_z = 20;
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.meanZProjectionBounded(source, destination_mean, min_z, max_z);
</pre>

<pre class="highlight">
//show result
destination_meanImagePlus = clij2.pull(destination_mean);
destination_meanImagePlus.show();

// cleanup memory on GPU
clij2.release(source);
clij2.release(destination_mean);
</pre>

</details>





### Usage in Matlab


<details>

<summary>
clij2.meanZProjectionBounded(source, destination_mean, min_z, max_z);
</summary>
<pre class="highlight">% init CLIJ and GPU
clij2 = init_clatlab();

% get input parameters
source = clij2.pushMat(source_matrix);
destination_mean = clij2.create(source);
min_z = 10;
max_z = 20;
</pre>

<pre class="highlight">
% Execute operation on GPU
clij2.meanZProjectionBounded(source, destination_mean, min_z, max_z);
</pre>

<pre class="highlight">
% show result
destination_mean = clij2.pullMat(destination_mean)

% cleanup memory on GPU
clij2.release(source);
clij2.release(destination_mean);
</pre>

</details>





### Usage in Icy


<details>

<summary>
clij2.meanZProjectionBounded(source, destination_mean, min_z, max_z);
</summary>
<pre class="highlight">// init CLIJ and GPU
importClass(net.haesleinhuepf.clicy.CLICY);
importClass(Packages.icy.main.Icy);

clij2 = CLICY.getInstance();

// get input parameters
source_sequence = getSequence();source = clij2.pushSequence(source_sequence);
destination_mean = clij2.create(source);
min_z = 10;
max_z = 20;
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.meanZProjectionBounded(source, destination_mean, min_z, max_z);
</pre>

<pre class="highlight">
// show result
destination_mean_sequence = clij2.pullSequence(destination_mean)
Icy.addSequence(destination_mean_sequence
// cleanup memory on GPU
clij2.release(source);
clij2.release(destination_mean);
</pre>

</details>



[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

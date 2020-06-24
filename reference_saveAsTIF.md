## saveAsTIF
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/>

Pulls an image from the GPU memory and saves it as TIF to disc.

### saveAsTIF often follows after
* <a href="reference_maximumXProjection">maximumXProjection</a> (2)


### Usage in ImageJ macro
```
Ext.CLIJ2_saveAsTIF(Image input, String filename);
```




### Usage in Java


<details>

<summary>
clij2.saveAsTIF(input, filename);
</summary>
<pre class="highlight">// init CLIJ and GPU
import net.haesleinhuepf.clij2.CLIJ2;
import net.haesleinhuepf.clij.clearcl.ClearCLBuffer;
CLIJ2 clij2 = CLIJ2.getInstance();

// get input parameters
ClearCLBuffer input = clij2.push(inputImagePlus);
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.saveAsTIF(input, filename);
</pre>

<pre class="highlight">
//show result

// cleanup memory on GPU
clij2.release(input);
</pre>

</details>





### Usage in Matlab


<details>

<summary>
clij2.saveAsTIF(input, filename);
</summary>
<pre class="highlight">% init CLIJ and GPU
clij2 = init_clatlab();

% get input parameters
input = clij2.pushMat(input_matrix);
</pre>

<pre class="highlight">
% Execute operation on GPU
clij2.saveAsTIF(input, filename);
</pre>

<pre class="highlight">
% show result

% cleanup memory on GPU
clij2.release(input);
</pre>

</details>





### Usage in Icy


<details>

<summary>
clij2.saveAsTIF(input, filename);
</summary>
<pre class="highlight">// init CLIJ and GPU
importClass(net.haesleinhuepf.clicy.CLICY);
importClass(Packages.icy.main.Icy);

clij2 = CLICY.getInstance();

// get input parameters
input_sequence = getSequence();
input = clij2.pushSequence(input_sequence);
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.saveAsTIF(input, filename);
</pre>

<pre class="highlight">
// show result

// cleanup memory on GPU
clij2.release(input);
</pre>

</details>



[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

## meanOfMaskedPixels
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/>

Determines the mean intensity in a masked image. 

Only in pixels which have non-zero values in another binary mask image.

### Usage in ImageJ macro
```
Ext.CLIJ2_meanOfMaskedPixels(Image source, Image mask);
```




### Usage in Java


<details>

<summary>
clij2.meanOfMaskedPixels(source, mask);
</summary>
<pre class="highlight">// init CLIJ and GPU
import net.haesleinhuepf.clij2.CLIJ2;
import net.haesleinhuepf.clij.clearcl.ClearCLBuffer;
CLIJ2 clij2 = CLIJ2.getInstance();

// get input parameters
ClearCLBuffer source = clij2.push(sourceImagePlus);
ClearCLBuffer mask = clij2.push(maskImagePlus);
</pre>

<pre class="highlight">
// Execute operation on GPU
double resultMeanOfMaskedPixels = clij2.meanOfMaskedPixels(source, mask);
</pre>

<pre class="highlight">
//show result
System.out.println(resultMeanOfMaskedPixels);

// cleanup memory on GPU
clij2.release(source);
clij2.release(mask);
</pre>

</details>





### Usage in Matlab


<details>

<summary>
clij2.meanOfMaskedPixels(source, mask);
</summary>
<pre class="highlight">% init CLIJ and GPU
clij2 = init_clatlab();

% get input parameters
source = clij2.pushMat(source_matrix);
mask = clij2.pushMat(mask_matrix);
</pre>

<pre class="highlight">
% Execute operation on GPU
double resultMeanOfMaskedPixels = clij2.meanOfMaskedPixels(source, mask);
</pre>

<pre class="highlight">
% show result
System.out.println(resultMeanOfMaskedPixels);

% cleanup memory on GPU
clij2.release(source);
clij2.release(mask);
</pre>

</details>





### Usage in Icy


<details>

<summary>
clij2.meanOfMaskedPixels(source, mask);
</summary>
<pre class="highlight">// init CLIJ and GPU
importClass(net.haesleinhuepf.clicy.CLICY);
importClass(Packages.icy.main.Icy);

clij2 = CLICY.getInstance();

// get input parameters
source_sequence = getSequence();source = clij2.pushSequence(source_sequence);
mask_sequence = getSequence();mask = clij2.pushSequence(mask_sequence);
</pre>

<pre class="highlight">
// Execute operation on GPU
double resultMeanOfMaskedPixels = clij2.meanOfMaskedPixels(source, mask);
</pre>

<pre class="highlight">
// show result
System.out.println(resultMeanOfMaskedPixels);

// cleanup memory on GPU
clij2.release(source);
clij2.release(mask);
</pre>

</details>



[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

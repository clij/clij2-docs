## standardDeviationOfMaskedPixels
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_empty_logo.png"/>

Determines the standard deviation of all pixels in an image which have non-zero value in a corresponding mask image. 

The value will be stored in a new row of ImageJs
Results table in the column 'Masked_standard_deviation'.

Categories: [Measurements](https://clij.github.io/clij2-docs/reference__measurement), [Binary](https://clij.github.io/clij2-docs/reference__binary)

Availability: Available in Fiji by activating the update sites clij and clij2.
This function is part of clij2_-2.5.0.1.jar.

### Usage in ImageJ macro
```
Ext.CLIJ2_standardDeviationOfMaskedPixels(Image source, Image mask);
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
ClearCLBuffer mask = clij2.push(maskImagePlus);
</pre>

<pre class="highlight">
// Execute operation on GPU
double resultStandardDeviationOfMaskedPixels = clij2.standardDeviationOfMaskedPixels(source, mask);
</pre>

<pre class="highlight">
// show result
System.out.println(resultStandardDeviationOfMaskedPixels);

// cleanup memory on GPU
clij2.release(source);
clij2.release(mask);
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
mask = clij2.pushMat(mask_matrix);
</pre>

<pre class="highlight">
% Execute operation on GPU
double resultStandardDeviationOfMaskedPixels = clij2.standardDeviationOfMaskedPixels(source, mask);
</pre>

<pre class="highlight">
% show result
System.out.println(resultStandardDeviationOfMaskedPixels);

% cleanup memory on GPU
clij2.release(source);
clij2.release(mask);
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
mask_sequence = getSequence();
mask = clij2.pushSequence(mask_sequence);
</pre>

<pre class="highlight">
// Execute operation on GPU
double resultStandardDeviationOfMaskedPixels = clij2.standardDeviationOfMaskedPixels(source, mask);
</pre>

<pre class="highlight">
// show result
System.out.println(resultStandardDeviationOfMaskedPixels);

// cleanup memory on GPU
clij2.release(source);
clij2.release(mask);
</pre>

</details>



[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

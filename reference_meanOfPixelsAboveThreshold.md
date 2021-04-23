## meanOfPixelsAboveThreshold
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_empty_logo.png"/>

Determines the mean intensity in a threshleded image. 

But only in pixels which are above a given threshold.

Category: [Measurements](https://clij.github.io/clij2-docs/reference__measurement)

Availability: Available in Fiji by activating the update sites clij and clij2.
This function is part of clij2_-2.2.1.0.jar.

### Usage in ImageJ macro
```
Ext.CLIJ2_meanOfPixelsAboveThreshold(Image source, Number threshold);
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
float threshold = 1.0;
</pre>

<pre class="highlight">
// Execute operation on GPU
double resultMeanOfPixelsAboveThreshold = clij2.meanOfPixelsAboveThreshold(source, threshold);
</pre>

<pre class="highlight">
// show result
System.out.println(resultMeanOfPixelsAboveThreshold);

// cleanup memory on GPU
clij2.release(source);
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
threshold = 1.0;
</pre>

<pre class="highlight">
% Execute operation on GPU
double resultMeanOfPixelsAboveThreshold = clij2.meanOfPixelsAboveThreshold(source, threshold);
</pre>

<pre class="highlight">
% show result
System.out.println(resultMeanOfPixelsAboveThreshold);

% cleanup memory on GPU
clij2.release(source);
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
threshold = 1.0;
</pre>

<pre class="highlight">
// Execute operation on GPU
double resultMeanOfPixelsAboveThreshold = clij2.meanOfPixelsAboveThreshold(source, threshold);
</pre>

<pre class="highlight">
// show result
System.out.println(resultMeanOfPixelsAboveThreshold);

// cleanup memory on GPU
clij2.release(source);
</pre>

</details>



[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

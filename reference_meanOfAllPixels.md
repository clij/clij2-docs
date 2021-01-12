## meanOfAllPixels
<img src="images/mini_clij1_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_cle_logo.png"/>

Determines the mean average of all pixels in a given image. 

It will be stored in a new row of ImageJs
Results table in the column 'Mean'.### Parameters

source : Image
    The image of which the mean average of all pixels or voxels will be determined.


Category: [Measurements](https://clij.github.io/clij2-docs/reference__measurement)

### Usage in ImageJ macro
```
Ext.CLIJ2_meanOfAllPixels(Image source);
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
</pre>

<pre class="highlight">
// Execute operation on GPU
double resultMeanOfAllPixels = clij2.meanOfAllPixels(source);
</pre>

<pre class="highlight">
// show result
System.out.println(resultMeanOfAllPixels);

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
</pre>

<pre class="highlight">
% Execute operation on GPU
double resultMeanOfAllPixels = clij2.meanOfAllPixels(source);
</pre>

<pre class="highlight">
% show result
System.out.println(resultMeanOfAllPixels);

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
</pre>

<pre class="highlight">
// Execute operation on GPU
double resultMeanOfAllPixels = clij2.meanOfAllPixels(source);
</pre>

<pre class="highlight">
// show result
System.out.println(resultMeanOfAllPixels);

// cleanup memory on GPU
clij2.release(source);
</pre>

</details>



<details>

<summary>
clEsperanto Python (experimental)
</summary>
<pre class="highlight">import pyclesperanto_prototype as cle

cle.mean_of_all_pixels(source)

</pre>



</details>



[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

## maximumOfAllPixels
<img src="images/mini_clij1_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/>

Determines the maximum of all pixels in a given image. It will be stored in a new row of ImageJs
Results table in the column 'Max'.

### Usage in ImageJ macro
```
Ext.CLIJ2_maximumOfAllPixels(Image source);
```




### Usage in Java


<details>

<summary>
clij2.maximumOfAllPixels(source);
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
double resultMaximumOfAllPixels = clij2.maximumOfAllPixels(source);
</pre>

<pre class="highlight">
//show result
System.out.println(resultMaximumOfAllPixels);

// cleanup memory on GPU
clij2.release(source);
</pre>

</details>





### Usage in Matlab


<details>

<summary>
clij2.maximumOfAllPixels(source);
</summary>
<pre class="highlight">% init CLIJ and GPU
clij2 = init_clatlab();

% get input parameters
source = clij2.pushMat(source_matrix);
</pre>

<pre class="highlight">
% Execute operation on GPU
double resultMaximumOfAllPixels = clij2.maximumOfAllPixels(source);
</pre>

<pre class="highlight">
% show result
System.out.println(resultMaximumOfAllPixels);

% cleanup memory on GPU
clij2.release(source);
</pre>

</details>





### Usage in Icy


<details>

<summary>
clij2.maximumOfAllPixels(source);
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
double resultMaximumOfAllPixels = clij2.maximumOfAllPixels(source);
</pre>

<pre class="highlight">
// show result
System.out.println(resultMaximumOfAllPixels);

// cleanup memory on GPU
clij2.release(source);
</pre>

</details>





### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/intensity_per_label.ijm"><img src="images/language_macro.png" height="20"/></a> [intensity_per_label.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/intensity_per_label.ijm)  
<a href="https://github.com/clij/clijpy/blob/master/python/spot_detection.py"><img src="images/language_python.png" height="20"/></a> [spot_detection.py](https://github.com/clij/clijpy/blob/master/python/spot_detection.py)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

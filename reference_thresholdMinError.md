## thresholdMinError
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/>

By Robert Haase based on work by G. Landini and W. Rasband

The automatic thresholder utilizes the MinError threshold method implemented in ImageJ using a histogram determined on 
the GPU to create binary images as similar as possible to ImageJ 'Apply Threshold' method.

### Usage in ImageJ macro
```
Ext.CLIJ2_thresholdMinError(Image input, ByRef Image destination);
```




### Usage in Java


<details>

<summary>
clij2.thresholdMinError(input, destination);
</summary>
<pre class="highlight">// init CLIJ and GPU
import net.haesleinhuepf.clij2.CLIJ2;
import net.haesleinhuepf.clij.clearcl.ClearCLBuffer;
CLIJ2 clij2 = CLIJ2.getInstance();

// get input parameters
ClearCLBuffer input = clij2.push(inputImagePlus);
destination = clij2.create(input);
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.thresholdMinError(input, destination);
</pre>

<pre class="highlight">
//show result
destinationImagePlus = clij2.pull(destination);
destinationImagePlus.show();

// cleanup memory on GPU
clij2.release(input);
clij2.release(destination);
</pre>

</details>





### Usage in Matlab


<details>

<summary>
clij2.thresholdMinError(input, destination);
</summary>
<pre class="highlight">% init CLIJ and GPU
clij2 = init_clatlab();

% get input parameters
input = clij2.pushMat(input_matrix);
destination = clij2.create(input);
</pre>

<pre class="highlight">
% Execute operation on GPU
clij2.thresholdMinError(input, destination);
</pre>

<pre class="highlight">
% show result
destination = clij2.pullMat(destination)

% cleanup memory on GPU
clij2.release(input);
clij2.release(destination);
</pre>

</details>





### Usage in Icy


<details>

<summary>
clij2.thresholdMinError(input, destination);
</summary>
<pre class="highlight">// init CLIJ and GPU
importClass(net.haesleinhuepf.clicy.CLICY);
importClass(Packages.icy.main.Icy);

clij2 = CLICY.getInstance();

// get input parameters
input_sequence = getSequence();input = clij2.pushSequence(input_sequence);
destination = clij2.create(input);
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.thresholdMinError(input, destination);
</pre>

<pre class="highlight">
// show result
destination_sequence = clij2.pullSequence(destination)
Icy.addSequence(destination_sequence
// cleanup memory on GPU
clij2.release(input);
clij2.release(destination);
</pre>

</details>





### License terms
The code for the automatic thresholding methods originates from https://github.com/imagej/imagej1/blob/master/ij/process/AutoThresholder.java  
  
Detailed documentation on the implemented methods can be found online: https://imagej.net/Auto_Threshold

[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

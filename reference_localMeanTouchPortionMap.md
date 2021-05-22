## localMeanTouchPortionMap
<img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_empty_logo.png"/>

Takes a label map, determines which labels touch and how much, relatively taking the whole outline of 
each label into account, and determines for every label with the mean of this value and replaces the 
label index with that value.



Categories: [Graphs](https://clij.github.io/clij2-docs/reference__graph), [Labels](https://clij.github.io/clij2-docs/reference__label), [Measurements](https://clij.github.io/clij2-docs/reference__measurement), Visualisation

Availability: Available in Fiji by activating the update sites clij and clij2.
This function is part of clijx_-0.31.0.6.jar.

### Usage in ImageJ macro
```
Ext.CLIJx_localMeanTouchPortionMap(Image input, Image destination);
```


### Usage in object oriented programming languages



<details>

<summary>
Java
</summary>
<pre class="highlight">// init CLIJ and GPU
import net.haesleinhuepf.clijx.CLIJx;
import net.haesleinhuepf.clij.clearcl.ClearCLBuffer;
CLIJx clijx = CLIJx.getInstance();

// get input parameters
ClearCLBuffer input = clijx.push(inputImagePlus);
destination = clijx.create(input);
</pre>

<pre class="highlight">
// Execute operation on GPU
clijx.localMeanTouchPortionMap(input, destination);
</pre>

<pre class="highlight">
// show result
destinationImagePlus = clijx.pull(destination);
destinationImagePlus.show();

// cleanup memory on GPU
clijx.release(input);
clijx.release(destination);
</pre>

</details>



<details>

<summary>
Matlab
</summary>
<pre class="highlight">% init CLIJ and GPU
clijx = init_clatlabx();

% get input parameters
input = clijx.pushMat(input_matrix);
destination = clijx.create(input);
</pre>

<pre class="highlight">
% Execute operation on GPU
clijx.localMeanTouchPortionMap(input, destination);
</pre>

<pre class="highlight">
% show result
destination = clijx.pullMat(destination)

% cleanup memory on GPU
clijx.release(input);
clijx.release(destination);
</pre>

</details>



[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

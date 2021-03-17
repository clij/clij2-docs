## convertRGBStackToGraySlice
<img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_empty_logo.png"/>

Converts a three channel image (stack with three slices) to a single channel image (2D image) by multiplying with factors 0.299, 0.587, 0.114.

Availability: Available in Fiji by activating the update sites clij and clij2.
This function is part of clijx_-0.30.1.22.jar.

### Usage in ImageJ macro
```
Ext.CLIJx_convertRGBStackToGraySlice(Image stack_source, Image slice_destination);
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
ClearCLBuffer stack_source = clijx.push(stack_sourceImagePlus);
slice_destination = clijx.create(stack_source);
</pre>

<pre class="highlight">
// Execute operation on GPU
clijx.convertRGBStackToGraySlice(stack_source, slice_destination);
</pre>

<pre class="highlight">
// show result
slice_destinationImagePlus = clijx.pull(slice_destination);
slice_destinationImagePlus.show();

// cleanup memory on GPU
clijx.release(stack_source);
clijx.release(slice_destination);
</pre>

</details>



<details>

<summary>
Matlab
</summary>
<pre class="highlight">% init CLIJ and GPU
clijx = init_clatlabx();

% get input parameters
stack_source = clijx.pushMat(stack_source_matrix);
slice_destination = clijx.create(stack_source);
</pre>

<pre class="highlight">
% Execute operation on GPU
clijx.convertRGBStackToGraySlice(stack_source, slice_destination);
</pre>

<pre class="highlight">
% show result
slice_destination = clijx.pullMat(slice_destination)

% cleanup memory on GPU
clijx.release(stack_source);
clijx.release(slice_destination);
</pre>

</details>



[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

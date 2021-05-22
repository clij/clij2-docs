## simpleITKZeroCrossingBasedEdgeDetection
<img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_empty_logo.png"/>

By Robert Haase, based on work by Bradley Lowekamp and the SimpleITK and ITK teams

Apply SimpleITKs ZeroCrossingBasedEdgeDetection to an image.

See also: https://simpleitk.org/doxygen/latest/html/sitkZeroCrossingBasedEdgeDetectionImageFilter_8h.html

Categories: [Binary](https://clij.github.io/clij2-docs/reference__binary), [Segmentation](https://clij.github.io/clij2-docs/reference__segmentation)

Availability: Available in Fiji by activating the update sites clij, clij2 and clijx-assistant-extensions.
This function is part of clijx-assistant-simpleitk_-0.5.0.6.jar.

### Usage in ImageJ macro
```
Ext.CLIJx_simpleITKZeroCrossingBasedEdgeDetection(Image input, Image destination, Number variance, Number maximum_error);
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
float variance = 1.0;
float maximum_error = 2.0;
</pre>

<pre class="highlight">
// Execute operation on GPU
clijx.simpleITKZeroCrossingBasedEdgeDetection(input, destination, variance, maximum_error);
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
variance = 1.0;
maximum_error = 2.0;
</pre>

<pre class="highlight">
% Execute operation on GPU
clijx.simpleITKZeroCrossingBasedEdgeDetection(input, destination, variance, maximum_error);
</pre>

<pre class="highlight">
% show result
destination = clijx.pullMat(destination)

% cleanup memory on GPU
clijx.release(input);
clijx.release(destination);
</pre>

</details>





### License terms
This plugin is licensed BSD3, see:  
https://github.com/clij/clijx-assistant-simpleitk/blob/master/license.txt  
The underlying SimpleITK librariy is Apache 2 licensed:  
https://github.com/SimpleITK/SimpleITK/blob/master/LICENSE

[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

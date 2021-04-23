## colorDeconvolution
<img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_empty_logo.png"/>

By Peter Haub

Computes the color deconvolution of an 8bit RGB stack color image 
 with a given 3x3 matrix of color vectors.
 Note: The input image has to be a stack with three z-slices corresponding to the red, green and blue channel.)

 Additional information see Supplementary Information to: 

 Haub, P., Meckel, T. A Model based Survey of Colour Deconvolution in 
 Diagnostic Brightfield Microscopy: Error Estimation and Spectral Consideration. 
 Sci Rep 5, 12096 (2015). https://doi.org/10.1038/srep12096 


Category: [Filter](https://clij.github.io/clij2-docs/reference__filter)

Availability: Available in Fiji by activating the update sites clij and clij2.
This function is part of clijx_-0.30.2.0.jar.

### Usage in ImageJ macro
```
Ext.CLIJx_colorDeconvolution(Image source, Image color_vectors, Image destination);
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
ClearCLBuffer source = clijx.push(sourceImagePlus);
ClearCLBuffer color_vectors = clijx.push(color_vectorsImagePlus);
destination = clijx.create(source);
</pre>

<pre class="highlight">
// Execute operation on GPU
clijx.colorDeconvolution(source, color_vectors, destination);
</pre>

<pre class="highlight">
// show result
destinationImagePlus = clijx.pull(destination);
destinationImagePlus.show();

// cleanup memory on GPU
clijx.release(source);
clijx.release(color_vectors);
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
source = clijx.pushMat(source_matrix);
color_vectors = clijx.pushMat(color_vectors_matrix);
destination = clijx.create(source);
</pre>

<pre class="highlight">
% Execute operation on GPU
clijx.colorDeconvolution(source, color_vectors, destination);
</pre>

<pre class="highlight">
% show result
destination = clijx.pullMat(destination)

% cleanup memory on GPU
clijx.release(source);
clijx.release(color_vectors);
clijx.release(destination);
</pre>

</details>



[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

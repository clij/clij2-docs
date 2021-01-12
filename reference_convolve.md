## convolve
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_cle_logo.png"/>

Convolve the image with a given kernel image.

It is recommended that the kernel image has an odd size in X, Y and Z.

Category: [Filter](https://clij.github.io/clij2-docs/reference__filter)

### convolve often follows after
* <a href="reference_create3D">create3D</a> (1)


### Usage in ImageJ macro
```
Ext.CLIJ2_convolve(Image source, Image convolution_kernel, Image destination);
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
ClearCLBuffer convolution_kernel = clij2.push(convolution_kernelImagePlus);
destination = clij2.create(source);
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.convolve(source, convolution_kernel, destination);
</pre>

<pre class="highlight">
// show result
destinationImagePlus = clij2.pull(destination);
destinationImagePlus.show();

// cleanup memory on GPU
clij2.release(source);
clij2.release(convolution_kernel);
clij2.release(destination);
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
convolution_kernel = clij2.pushMat(convolution_kernel_matrix);
destination = clij2.create(source);
</pre>

<pre class="highlight">
% Execute operation on GPU
clij2.convolve(source, convolution_kernel, destination);
</pre>

<pre class="highlight">
% show result
destination = clij2.pullMat(destination)

% cleanup memory on GPU
clij2.release(source);
clij2.release(convolution_kernel);
clij2.release(destination);
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
convolution_kernel_sequence = getSequence();
convolution_kernel = clij2.pushSequence(convolution_kernel_sequence);
destination = clij2.create(source);
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.convolve(source, convolution_kernel, destination);
</pre>

<pre class="highlight">
// show result
destination_sequence = clij2.pullSequence(destination)
Icy.addSequence(destination_sequence);
// cleanup memory on GPU
clij2.release(source);
clij2.release(convolution_kernel);
clij2.release(destination);
</pre>

</details>



<details>

<summary>
clEsperanto Python (experimental)
</summary>
<pre class="highlight">import pyclesperanto_prototype as cle

cle.convolve(source, convolution_kernel, destination)

</pre>



</details>





### Example notebooks
<a href="https://clij.github.io/clij2-docs/md/benchmarking"><img src="images/language_macro.png" height="20"/></a> [benchmarking](https://clij.github.io/clij2-docs/md/benchmarking)  




### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/benchmarking.ijm"><img src="images/language_macro.png" height="20"/></a> [benchmarking.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/benchmarking.ijm)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

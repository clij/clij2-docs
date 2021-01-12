## absolute
<img src="images/mini_clij1_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_cle_logo.png"/>

Computes the absolute value of every individual pixel x in a given image.

<pre>f(x) = |x| </pre>

### Parameters

source : Image
    The input image to be processed.
destination : Image
    The output image where results are written into.


Category: [Math](https://clij.github.io/clij2-docs/reference__math)

### absolute often follows after
* <a href="reference_subtractImages">subtractImages</a> (2)
* <a href="reference_addImageAndScalar">addImageAndScalar</a> (1)


### absolute is often followed by
* <a href="reference_mean2DBox">mean2DBox</a> (1)


### Usage in ImageJ macro
```
Ext.CLIJ2_absolute(Image source, Image destination);
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
destination = clij2.create(source);
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.absolute(source, destination);
</pre>

<pre class="highlight">
// show result
destinationImagePlus = clij2.pull(destination);
destinationImagePlus.show();

// cleanup memory on GPU
clij2.release(source);
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
destination = clij2.create(source);
</pre>

<pre class="highlight">
% Execute operation on GPU
clij2.absolute(source, destination);
</pre>

<pre class="highlight">
% show result
destination = clij2.pullMat(destination)

% cleanup memory on GPU
clij2.release(source);
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
destination = clij2.create(source);
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.absolute(source, destination);
</pre>

<pre class="highlight">
// show result
destination_sequence = clij2.pullSequence(destination)
Icy.addSequence(destination_sequence);
// cleanup memory on GPU
clij2.release(source);
clij2.release(destination);
</pre>

</details>



<details>

<summary>
clEsperanto Python (experimental)
</summary>
<pre class="highlight">import pyclesperanto_prototype as cle

cle.absolute(source, destination)

</pre>



</details>



<details>

<summary>
clEsperanto CLIc C++ (experimental)
</summary>
<pre class="highlight">
// Initialise GPU information.
cle::GPU gpu;
cle::CLE cle(gpu);

// Initialise device memory and push from host
cle::Buffer gpuInput = cle.Push&lt;float&gt;(input_img);
cle::Buffer gpuOutput = cle.Create&lt;float&gt;(input_img);

// Call kernel
cle.Absolute(gpuInput, gpuOutput);  

// pull device memory to host
Image&lt;float&gt; output_img = cle.Pull&lt;float&gt;(gpuOutput);    

</pre>



</details>





### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/absolute.ijm"><img src="images/language_macro.png" height="20"/></a> [absolute.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/absolute.ijm)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

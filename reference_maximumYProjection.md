## maximumYProjection
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_cle_logo.png"/>

Determines the maximum intensity projection of an image along X.

Category: [Projections](https://clij.github.io/clij2-docs/reference__project)

### maximumYProjection often follows after
* <a href="reference_invert">invert</a> (2)


### maximumYProjection is often followed by
* <a href="reference_replaceIntensities">replaceIntensities</a> (2)
* <a href="reference_resample">resample</a> (2)


### Usage in ImageJ macro
```
Ext.CLIJ2_maximumYProjection(Image source, Image destination_max);
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
destination_max = clij2.create(source);
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.maximumYProjection(source, destination_max);
</pre>

<pre class="highlight">
// show result
destination_maxImagePlus = clij2.pull(destination_max);
destination_maxImagePlus.show();

// cleanup memory on GPU
clij2.release(source);
clij2.release(destination_max);
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
destination_max = clij2.create(source);
</pre>

<pre class="highlight">
% Execute operation on GPU
clij2.maximumYProjection(source, destination_max);
</pre>

<pre class="highlight">
% show result
destination_max = clij2.pullMat(destination_max)

% cleanup memory on GPU
clij2.release(source);
clij2.release(destination_max);
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
destination_max = clij2.create(source);
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.maximumYProjection(source, destination_max);
</pre>

<pre class="highlight">
// show result
destination_max_sequence = clij2.pullSequence(destination_max)
Icy.addSequence(destination_max_sequence);
// cleanup memory on GPU
clij2.release(source);
clij2.release(destination_max);
</pre>

</details>



<details>

<summary>
clEsperanto Python (experimental)
</summary>
<pre class="highlight">import pyclesperanto_prototype as cle

cle.maximum_y_projection(source, destination_max)

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
std::array&lt;unsigned int, 3&gt; dimensions = {width, height, depth};
dimensions.back() = 1;
cle::Buffer gpuInput = cle.Push&lt;float&gt;(input_img);
cle::Buffer gpuOutput = cle.Create&lt;float&gt;(dimensions.data(), "float");

// Call kernel
cle.MaximumYProjection(gpuInput, gpuOutput);   

// pull device memory to host
Image&lt;float&gt; output_img = cle.Pull&lt;float&gt;(gpuOutput);    

</pre>



</details>





### Example notebooks
<a href="https://clij.github.io/clij2-docs/md/maximumProjection"><img src="images/language_macro.png" height="20"/></a> [maximumProjection](https://clij.github.io/clij2-docs/md/maximumProjection)  




### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/jaccard_matrix.ijm"><img src="images/language_macro.png" height="20"/></a> [jaccard_matrix.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/jaccard_matrix.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/maximumProjection.ijm"><img src="images/language_macro.png" height="20"/></a> [maximumProjection.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/maximumProjection.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/orthogonalMaximumProjections.ijm"><img src="images/language_macro.png" height="20"/></a> [orthogonalMaximumProjections.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/orthogonalMaximumProjections.ijm)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

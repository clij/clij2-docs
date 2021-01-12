## greaterConstant
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_cle_logo.png"/>

Determines if two images A and B greater pixel wise. 

f(a, b) = 1 if a > b; 0 otherwise. 

Category: [Math](https://clij.github.io/clij2-docs/reference__math)

### greaterConstant often follows after
* <a href="reference_pushResultsTableColumn">pushResultsTableColumn</a> (1)
* <a href="reference_maximumXProjection">maximumXProjection</a> (1)


### greaterConstant is often followed by
* <a href="reference_minimum2DBox">minimum2DBox</a> (1)
* <a href="reference_replaceIntensities">replaceIntensities</a> (1)
* <a href="reference_erodeSphere">erodeSphere</a> (1)
* <a href="reference_release">release</a> (3)
* <a href="reference_mask">mask</a> (1)
* <a href="reference_spotsToPointList">spotsToPointList</a> (1)


### Usage in ImageJ macro
```
Ext.CLIJ2_greaterConstant(Image source, Image destination, Number constant);
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
float constant = 1.0;
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.greaterConstant(source, destination, constant);
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
constant = 1.0;
</pre>

<pre class="highlight">
% Execute operation on GPU
clij2.greaterConstant(source, destination, constant);
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
constant = 1.0;
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.greaterConstant(source, destination, constant);
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

cle.greater_constant(source, destination, constant)

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

// Initialise device memory and push from host to device
cle::Buffer gpuInput = cle.Push&lt;float&gt;(input_img);
cle::Buffer gpuOutput = cle.Create&lt;float&gt;(input_img, "float");

// Call kernel
cle.GreaterConstant(gpuInput, gpuOutput, scalar);  

// pull device memory to host
Image&lt;float&gt; output_img = cle.Pull&lt;float&gt;(gpuOutput);    

</pre>



</details>



[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

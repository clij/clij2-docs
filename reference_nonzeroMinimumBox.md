## nonzeroMinimumBox
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_cle_logo.png"/>

Apply a minimum filter (box shape) to the input image. 

The radius is fixed to 1 and pixels with value 0 are ignored.
Note: Pixels with 0 value in the input image will not be overwritten in the output image.
Thus, the result image should be initialized by copying the original image in advance.

### Usage in ImageJ macro
```
Ext.CLIJ2_nonzeroMinimumBox(Image input, Image destination);
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
ClearCLBuffer input = clij2.push(inputImagePlus);
destination = clij2.create(input);
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.nonzeroMinimumBox(input, destination);
</pre>

<pre class="highlight">
// show result
destinationImagePlus = clij2.pull(destination);
destinationImagePlus.show();

// cleanup memory on GPU
clij2.release(input);
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
input = clij2.pushMat(input_matrix);
destination = clij2.create(input);
</pre>

<pre class="highlight">
% Execute operation on GPU
clij2.nonzeroMinimumBox(input, destination);
</pre>

<pre class="highlight">
% show result
destination = clij2.pullMat(destination)

% cleanup memory on GPU
clij2.release(input);
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
input_sequence = getSequence();
input = clij2.pushSequence(input_sequence);
destination = clij2.create(input);
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.nonzeroMinimumBox(input, destination);
</pre>

<pre class="highlight">
// show result
destination_sequence = clij2.pullSequence(destination)
Icy.addSequence(destination_sequence);
// cleanup memory on GPU
clij2.release(input);
clij2.release(destination);
</pre>

</details>



<details>

<summary>
clEsperanto Python (experimental)
</summary>
<pre class="highlight">import pyclesperanto_prototype as cle

cle.nonzero_minimum_box(input, destination)

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
cle::Buffer gpuInput1 = cle.Push&lt;float&gt;(input_img1);


std::array&lt;unsigned int, 3&gt; dimensions = {1, 1, 2}; //TODO: This should also work width flag depth=1, but it doesn't
cle::Buffer gpuFlag = cle.Create&lt;float&gt;(dimensions.data(), "float");

cle::Buffer gpuOutput = cle.Create&lt;float&gt;(gpuInput1, "float");

// Call kernel
cle.NonzeroMinimumBox(gpuInput1, gpuFlag, gpuOutput);

// pull device memory to host
Image&lt;float&gt; output_img = cle.Pull&lt;float&gt;(gpuOutput);    

</pre>



</details>



[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

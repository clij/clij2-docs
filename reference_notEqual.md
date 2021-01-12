## notEqual
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_cle_logo.png"/>

Determines if two images A and B equal pixel wise.

f(a, b) = 1 if a != b; 0 otherwise.

### Parameters

source1 : Image
    The first image to be compared with.
source2 : Image
    The second image to be compared with the first.
destination : Image
    The resulting binary image where pixels will be 1 only if source1 and source2 are not equal in the given pixel.


Category: [Math](https://clij.github.io/clij2-docs/reference__math)

### Usage in ImageJ macro
```
Ext.CLIJ2_notEqual(Image source1, Image source2, Image destination);
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
ClearCLBuffer source1 = clij2.push(source1ImagePlus);
ClearCLBuffer source2 = clij2.push(source2ImagePlus);
destination = clij2.create(source1);
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.notEqual(source1, source2, destination);
</pre>

<pre class="highlight">
// show result
destinationImagePlus = clij2.pull(destination);
destinationImagePlus.show();

// cleanup memory on GPU
clij2.release(source1);
clij2.release(source2);
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
source1 = clij2.pushMat(source1_matrix);
source2 = clij2.pushMat(source2_matrix);
destination = clij2.create(source1);
</pre>

<pre class="highlight">
% Execute operation on GPU
clij2.notEqual(source1, source2, destination);
</pre>

<pre class="highlight">
% show result
destination = clij2.pullMat(destination)

% cleanup memory on GPU
clij2.release(source1);
clij2.release(source2);
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
source1_sequence = getSequence();
source1 = clij2.pushSequence(source1_sequence);
source2_sequence = getSequence();
source2 = clij2.pushSequence(source2_sequence);
destination = clij2.create(source1);
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.notEqual(source1, source2, destination);
</pre>

<pre class="highlight">
// show result
destination_sequence = clij2.pullSequence(destination)
Icy.addSequence(destination_sequence);
// cleanup memory on GPU
clij2.release(source1);
clij2.release(source2);
clij2.release(destination);
</pre>

</details>



<details>

<summary>
clEsperanto Python (experimental)
</summary>
<pre class="highlight">import pyclesperanto_prototype as cle

cle.not_equal(source1, source2, destination)

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
cle::Buffer gpuInput2 = cle.Push&lt;float&gt;(input_img2);

cle.Set(gpuInput2, 5);

cle::Buffer gpuOutput = cle.Create&lt;float&gt;(gpuInput1, "float");

// Call kernel
cle.NotEqual(gpuInput1, gpuInput2, gpuOutput);

// pull device memory to host
Image&lt;float&gt; output_img = cle.Pull&lt;float&gt;(gpuOutput);    

</pre>



</details>



[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

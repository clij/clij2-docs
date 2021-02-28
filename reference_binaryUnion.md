## binaryUnion
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_empty_logo.png"/>

Computes a binary image (containing pixel values 0 and 1) from two images X and Y by connecting pairs of
pixels x and y with the binary union operator |.

All pixel values except 0 in the input images are interpreted as 1.<pre>f(x, y) = x | y</pre>

### Parameters

operand1 : Image
    The first binary input image to be processed.
operand2 : Image
    The second binary input image to be processed.
destination : Image
    The output image where results are written into.


Categories: [Math](https://clij.github.io/clij2-docs/reference__math), [Binary](https://clij.github.io/clij2-docs/reference__binary)

Availability: Available in Fiji by activating the update sites clij and clij2.
This function is part of clij2_-2.2.0.19.jar.

### Usage in ImageJ macro
```
Ext.CLIJ2_binaryUnion(Image operand1, Image operand2, Image destination);
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
ClearCLBuffer operand1 = clij2.push(operand1ImagePlus);
ClearCLBuffer operand2 = clij2.push(operand2ImagePlus);
destination = clij2.create(operand1);
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.binaryUnion(operand1, operand2, destination);
</pre>

<pre class="highlight">
// show result
destinationImagePlus = clij2.pull(destination);
destinationImagePlus.show();

// cleanup memory on GPU
clij2.release(operand1);
clij2.release(operand2);
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
operand1 = clij2.pushMat(operand1_matrix);
operand2 = clij2.pushMat(operand2_matrix);
destination = clij2.create(operand1);
</pre>

<pre class="highlight">
% Execute operation on GPU
clij2.binaryUnion(operand1, operand2, destination);
</pre>

<pre class="highlight">
% show result
destination = clij2.pullMat(destination)

% cleanup memory on GPU
clij2.release(operand1);
clij2.release(operand2);
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
operand1_sequence = getSequence();
operand1 = clij2.pushSequence(operand1_sequence);
operand2_sequence = getSequence();
operand2 = clij2.pushSequence(operand2_sequence);
destination = clij2.create(operand1);
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.binaryUnion(operand1, operand2, destination);
</pre>

<pre class="highlight">
// show result
destination_sequence = clij2.pullSequence(destination)
Icy.addSequence(destination_sequence);
// cleanup memory on GPU
clij2.release(operand1);
clij2.release(operand2);
clij2.release(destination);
</pre>

</details>



[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

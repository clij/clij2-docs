## similar
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_empty_logo.png"/>

Determines the absolute difference between two images and sets all pixels to 1 where it is below or equal a given tolerance, and 0 otherwise.

Category: [Math](https://clij.github.io/clij2-docs/reference__math)

Availability: Available in Fiji by activating the update sites clij and clij2.
This function is part of clij2_-2.5.0.1.jar.

### Usage in ImageJ macro
```
Ext.CLIJ2_similar(Image input_image1, Image input_image2, Image binary_destination, Number tolerance);
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
ClearCLBuffer input_image1 = clij2.push(input_image1ImagePlus);
ClearCLBuffer input_image2 = clij2.push(input_image2ImagePlus);
binary_destination = clij2.create(input_image1);
float tolerance = 1.0;
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.similar(input_image1, input_image2, binary_destination, tolerance);
</pre>

<pre class="highlight">
// show result
binary_destinationImagePlus = clij2.pull(binary_destination);
binary_destinationImagePlus.show();

// cleanup memory on GPU
clij2.release(input_image1);
clij2.release(input_image2);
clij2.release(binary_destination);
</pre>

</details>



<details>

<summary>
Matlab
</summary>
<pre class="highlight">% init CLIJ and GPU
clij2 = init_clatlab();

% get input parameters
input_image1 = clij2.pushMat(input_image1_matrix);
input_image2 = clij2.pushMat(input_image2_matrix);
binary_destination = clij2.create(input_image1);
tolerance = 1.0;
</pre>

<pre class="highlight">
% Execute operation on GPU
clij2.similar(input_image1, input_image2, binary_destination, tolerance);
</pre>

<pre class="highlight">
% show result
binary_destination = clij2.pullMat(binary_destination)

% cleanup memory on GPU
clij2.release(input_image1);
clij2.release(input_image2);
clij2.release(binary_destination);
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
input_image1_sequence = getSequence();
input_image1 = clij2.pushSequence(input_image1_sequence);
input_image2_sequence = getSequence();
input_image2 = clij2.pushSequence(input_image2_sequence);
binary_destination = clij2.create(input_image1);
tolerance = 1.0;
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.similar(input_image1, input_image2, binary_destination, tolerance);
</pre>

<pre class="highlight">
// show result
binary_destination_sequence = clij2.pullSequence(binary_destination)
Icy.addSequence(binary_destination_sequence);
// cleanup memory on GPU
clij2.release(input_image1);
clij2.release(input_image2);
clij2.release(binary_destination);
</pre>

</details>



[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

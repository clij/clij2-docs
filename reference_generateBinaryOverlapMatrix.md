## generateBinaryOverlapMatrix
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_cle_logo.png"/>

Takes two labelmaps with n and m labels and generates a (n+1)*(m+1) matrix where all pixels are set to 0 exept those where labels overlap between the label maps. 

For example, if labels 3 in labelmap1 and 4 in labelmap2 are touching then the pixel (3,4) in the matrix will be set to 1.

Categories: [Graphs](https://clij.github.io/clij2-docs/reference__graph), [Labels](https://clij.github.io/clij2-docs/reference__label), [Measurements](https://clij.github.io/clij2-docs/reference__measurement), [Binary](https://clij.github.io/clij2-docs/reference__binary)

Availability: Available in Fiji by activating the update sites clij and clij2.
This function is part of clij2_-2.2.0.19.jar.

### Usage in ImageJ macro
```
Ext.CLIJ2_generateBinaryOverlapMatrix(Image label_map1, Image label_map2, Image binary_overlap_matrix_destination);
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
ClearCLBuffer label_map1 = clij2.push(label_map1ImagePlus);
ClearCLBuffer label_map2 = clij2.push(label_map2ImagePlus);
binary_overlap_matrix_destination = clij2.create(label_map1);
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.generateBinaryOverlapMatrix(label_map1, label_map2, binary_overlap_matrix_destination);
</pre>

<pre class="highlight">
// show result
binary_overlap_matrix_destinationImagePlus = clij2.pull(binary_overlap_matrix_destination);
binary_overlap_matrix_destinationImagePlus.show();

// cleanup memory on GPU
clij2.release(label_map1);
clij2.release(label_map2);
clij2.release(binary_overlap_matrix_destination);
</pre>

</details>



<details>

<summary>
Matlab
</summary>
<pre class="highlight">% init CLIJ and GPU
clij2 = init_clatlab();

% get input parameters
label_map1 = clij2.pushMat(label_map1_matrix);
label_map2 = clij2.pushMat(label_map2_matrix);
binary_overlap_matrix_destination = clij2.create(label_map1);
</pre>

<pre class="highlight">
% Execute operation on GPU
clij2.generateBinaryOverlapMatrix(label_map1, label_map2, binary_overlap_matrix_destination);
</pre>

<pre class="highlight">
% show result
binary_overlap_matrix_destination = clij2.pullMat(binary_overlap_matrix_destination)

% cleanup memory on GPU
clij2.release(label_map1);
clij2.release(label_map2);
clij2.release(binary_overlap_matrix_destination);
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
label_map1_sequence = getSequence();
label_map1 = clij2.pushSequence(label_map1_sequence);
label_map2_sequence = getSequence();
label_map2 = clij2.pushSequence(label_map2_sequence);
binary_overlap_matrix_destination = clij2.create(label_map1);
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.generateBinaryOverlapMatrix(label_map1, label_map2, binary_overlap_matrix_destination);
</pre>

<pre class="highlight">
// show result
binary_overlap_matrix_destination_sequence = clij2.pullSequence(binary_overlap_matrix_destination)
Icy.addSequence(binary_overlap_matrix_destination_sequence);
// cleanup memory on GPU
clij2.release(label_map1);
clij2.release(label_map2);
clij2.release(binary_overlap_matrix_destination);
</pre>

</details>



<details>

<summary>
clEsperanto Python (experimental)
</summary>
<pre class="highlight">import pyclesperanto_prototype as cle

cle.generate_binary_overlap_matrix(label_map1, label_map2, binary_overlap_matrix_destination)

</pre>



</details>



[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

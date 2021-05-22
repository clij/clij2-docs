## print
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/>

Visualises an image on standard out (console).

Availability: Available in Fiji by activating the update sites clij and clij2.
This function is part of clij2_-2.3.0.6.jar.

### print often follows after
* <a href="reference_histogram">histogram</a> (2)
* <a href="reference_generateBinaryOverlapMatrix">generateBinaryOverlapMatrix</a> (1)
* <a href="reference_binaryFillHoles">binaryFillHoles</a> (1)
* <a href="reference_pushArray">pushArray</a> (2)
* <a href="reference_nClosestDistances">nClosestDistances</a> (1)
* <a href="reference_multiplyImageAndScalar">multiplyImageAndScalar</a> (2)
* <a href="reference_gradientX">gradientX</a> (2)
* <a href="reference_multiplyImages">multiplyImages</a> (3)
* <a href="reference_paste2D">paste2D</a> (2)


### Usage in ImageJ macro
```
Ext.CLIJ2_print(Image input);
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
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.print(input);
</pre>

<pre class="highlight">
// show result

// cleanup memory on GPU
clij2.release(input);
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
</pre>

<pre class="highlight">
% Execute operation on GPU
clij2.print(input);
</pre>

<pre class="highlight">
% show result

% cleanup memory on GPU
clij2.release(input);
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
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.print(input);
</pre>

<pre class="highlight">
// show result

// cleanup memory on GPU
clij2.release(input);
</pre>

</details>





### Example notebooks
<a href="https://clij.github.io/clij2-docs/md/count_overlap_between_channels"><img src="images/language_macro.png" height="20"/></a> [count_overlap_between_channels](https://clij.github.io/clij2-docs/md/count_overlap_between_channels)  
<a href="https://clij.github.io/clij2-docs/md/matrix_multiply"><img src="images/language_macro.png" height="20"/></a> [matrix_multiply](https://clij.github.io/clij2-docs/md/matrix_multiply)  
<a href="https://clij.github.io/clij2-docs/md/multiply_vectors_matrices"><img src="images/language_macro.png" height="20"/></a> [multiply_vectors_matrices](https://clij.github.io/clij2-docs/md/multiply_vectors_matrices)  




### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/count_overlap_between_channels.ijm"><img src="images/language_macro.png" height="20"/></a> [count_overlap_between_channels.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/count_overlap_between_channels.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/debugging_pixels.ijm"><img src="images/language_macro.png" height="20"/></a> [debugging_pixels.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/debugging_pixels.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/filter_label_maps.ijm"><img src="images/language_macro.png" height="20"/></a> [filter_label_maps.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/filter_label_maps.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/matrix_multiply.ijm"><img src="images/language_macro.png" height="20"/></a> [matrix_multiply.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/matrix_multiply.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/multiply_vectors_matrices.ijm"><img src="images/language_macro.png" height="20"/></a> [multiply_vectors_matrices.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/multiply_vectors_matrices.ijm)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

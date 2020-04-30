## print
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_empty_logo.png"/>

Visualises an image on standard out (console).

### print often follows after
* <a href="reference_multiplyImageAndScalar">multiplyImageAndScalar</a> (2)
* <a href="reference_multiplyImages">multiplyImages</a> (4)


### Usage in ImageJ macro
```
Ext.CLIJ2_print(Image input);
```




### Usage in Java


<details>

<summary>
clij2.print(input);
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
//show result

// cleanup memory on GPU
clij2.release(input);
</pre>

</details>





### Usage in Matlab


<details>

<summary>
clij2.print(input);
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





### Usage in Icy


<details>

<summary>
clij2.print(input);
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
<a href="https://clij.github.io/clij2-docs/md/matrix_multiply"><img src="images/language_macro.png" height="20"/></a> [matrix_multiply](https://clij.github.io/clij2-docs/md/matrix_multiply)  
<a href="https://clij.github.io/clij2-docs/md/multiply_vectors_matrices"><img src="images/language_macro.png" height="20"/></a> [multiply_vectors_matrices](https://clij.github.io/clij2-docs/md/multiply_vectors_matrices)  




### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/matrix_multiply.ijm"><img src="images/language_macro.png" height="20"/></a> [matrix_multiply.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/matrix_multiply.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/multiply_vectors_matrices.ijm"><img src="images/language_macro.png" height="20"/></a> [multiply_vectors_matrices.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/multiply_vectors_matrices.ijm)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

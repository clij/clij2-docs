## multiplyMatrix
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_cle_logo.png"/>

Multiplies two matrices with each other.

Category: [Math](https://clij.github.io/clij2-docs/reference__math)

Availability: Available in Fiji by activating the update sites clij and clij2.
This function is part of clij2_-2.2.1.0.jar.

### multiplyMatrix often follows after
* <a href="reference_pushArray">pushArray</a> (1)
* <a href="reference_transposeXY">transposeXY</a> (1)


### multiplyMatrix is often followed by
* <a href="reference_multiplyImageAndScalar">multiplyImageAndScalar</a> (1)


### Usage in ImageJ macro
```
Ext.CLIJ2_multiplyMatrix(Image matrix1, Image matrix2, Image matrix_destination);
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
ClearCLBuffer matrix1 = clij2.push(matrix1ImagePlus);
ClearCLBuffer matrix2 = clij2.push(matrix2ImagePlus);
matrix_destination = clij2.create(matrix1);
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.multiplyMatrix(matrix1, matrix2, matrix_destination);
</pre>

<pre class="highlight">
// show result
matrix_destinationImagePlus = clij2.pull(matrix_destination);
matrix_destinationImagePlus.show();

// cleanup memory on GPU
clij2.release(matrix1);
clij2.release(matrix2);
clij2.release(matrix_destination);
</pre>

</details>



<details>

<summary>
Matlab
</summary>
<pre class="highlight">% init CLIJ and GPU
clij2 = init_clatlab();

% get input parameters
matrix1 = clij2.pushMat(matrix1_matrix);
matrix2 = clij2.pushMat(matrix2_matrix);
matrix_destination = clij2.create(matrix1);
</pre>

<pre class="highlight">
% Execute operation on GPU
clij2.multiplyMatrix(matrix1, matrix2, matrix_destination);
</pre>

<pre class="highlight">
% show result
matrix_destination = clij2.pullMat(matrix_destination)

% cleanup memory on GPU
clij2.release(matrix1);
clij2.release(matrix2);
clij2.release(matrix_destination);
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
matrix1_sequence = getSequence();
matrix1 = clij2.pushSequence(matrix1_sequence);
matrix2_sequence = getSequence();
matrix2 = clij2.pushSequence(matrix2_sequence);
matrix_destination = clij2.create(matrix1);
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.multiplyMatrix(matrix1, matrix2, matrix_destination);
</pre>

<pre class="highlight">
// show result
matrix_destination_sequence = clij2.pullSequence(matrix_destination)
Icy.addSequence(matrix_destination_sequence);
// cleanup memory on GPU
clij2.release(matrix1);
clij2.release(matrix2);
clij2.release(matrix_destination);
</pre>

</details>



<details>

<summary>
clEsperanto Python (experimental)
</summary>
<pre class="highlight">import pyclesperanto_prototype as cle

cle.multiply_matrix(matrix1, matrix2, matrix_destination)

</pre>



</details>





### Example notebooks
<a href="https://clij.github.io/clij2-docs/md/matrix_multiply"><img src="images/language_macro.png" height="20"/></a> [matrix_multiply](https://clij.github.io/clij2-docs/md/matrix_multiply)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/basics/multiply_matrices.ipynb"><img src="images/language_python.png" height="20"/></a> [multiply_matrices.ipynb](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/basics/multiply_matrices.ipynb)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/benchmarks/matrix_multiplication.ipynb"><img src="images/language_python.png" height="20"/></a> [matrix_multiplication.ipynb](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/benchmarks/matrix_multiplication.ipynb)  




### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/matrix_multiply.ijm"><img src="images/language_macro.png" height="20"/></a> [matrix_multiply.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/matrix_multiply.ijm)  
<a href="https://github.com/clij/clatlab/blob/master/src/main/matlab/matrix_multiply.m"><img src="images/language_matlab.png" height="20"/></a> [matrix_multiply.m](https://github.com/clij/clatlab/blob/master/src/main/matlab/matrix_multiply.m)  
<a href="https://github.com/clij/clatlab/blob/master/src/main/matlab/matrix_multiply_benchmarking.m"><img src="images/language_matlab.png" height="20"/></a> [matrix_multiply_benchmarking.m](https://github.com/clij/clatlab/blob/master/src/main/matlab/matrix_multiply_benchmarking.m)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

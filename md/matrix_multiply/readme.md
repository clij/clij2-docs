

# Matrix Multiplication
Authors: Robert Haase, Daniela Vorkel, April 2020

[Source](https://github.com/clij/clij2-docs/tree/master/src/main/macro/matrix_multiply.ijm)


This macro shows how to perform a matrix multiplication
in the GPU.


<pre class="highlight">

// initialize GPU
run("CLIJ2 Macro Extensions", "cl_device=[GeForce RTX 2060 SUPER]");
Ext.<a href="https://clij.github.io/clij2-docs/reference_clear">CLIJ2_clear</a>();

run("Close All");
</pre>

## Define two arrays (vectors) and push them to the GPU 

<pre class="highlight">
array1 = newArray(1, 2, 3, 4, 5);
array2 = newArray(6, 7, 8, 9, 10);

// push arrays to GPU
Ext.<a href="https://clij.github.io/clij2-docs/reference_pushArray">CLIJ2_pushArray</a>(vector1, array1, 5, 1, 1);
Ext.<a href="https://clij.github.io/clij2-docs/reference_pushArray">CLIJ2_pushArray</a>(vector2, array2, 5, 1, 1);

</pre>

## In order to multiplicate matrices, the input matrices must be of size (n * m) and (m * n) 
Therefore, we transpose one of our vectors: 

<pre class="highlight">
// transpose the first input vector and show it
Ext.<a href="https://clij.github.io/clij2-docs/reference_transposeXY">CLIJ2_transposeXY</a>(vector1, vector1transposed);
print("Vector 1 (transposed):");
Ext.<a href="https://clij.github.io/clij2-docs/reference_print">CLIJ2_print</a>(vector1transposed);

// show second input vector
print("Vector 2:");
Ext.<a href="https://clij.github.io/clij2-docs/reference_print">CLIJ2_print</a>(vector2);
</pre>
<pre>
> Vector 1 (transposed):
> 1.0
> 2.0
> 3.0
> 4.0
> 5.0
> Vector 2:
> 6.0 7.0 8.0 9.0 10.0
</pre>

## Matrix multiplication

<pre class="highlight">
Ext.<a href="https://clij.github.io/clij2-docs/reference_multiplyMatrix">CLIJ2_multiplyMatrix</a>(vector1transposed, vector2, matrix);
Ext.<a href="https://clij.github.io/clij2-docs/reference_print">CLIJ2_print</a>(matrix);
</pre>
<pre>
> 6.0 7.0 8.0 9.0 10.0
> 12.0 14.0 16.0 18.0 20.0
> 18.0 21.0 24.0 27.0 30.0
> 24.0 28.0 32.0 36.0 40.0
> 30.0 35.0 40.0 45.0 50.0
</pre>

You can also express a matrix as an image:

<pre class="highlight">
Ext.<a href="https://clij.github.io/clij2-docs/reference_pull">CLIJ2_pull</a>(matrix);
zoom(100);
</pre>
<a href="image_1588706975067.png"><img src="image_1588706975067.png" width="224" alt="CLIJ2_multiplyMatrix_result43-1"/></a>

## Element by element multiplication of two matrices

<pre class="highlight">
// generate another matrix of the same size with random values
Ext.<a href="https://clij.github.io/clij2-docs/reference_getDimensions">CLIJ2_getDimensions</a>(matrix, width, height, depth);
bitDepth_float = 32;// 32-bit float type
Ext.<a href="https://clij.github.io/clij2-docs/reference_create2D">CLIJ2_create2D</a>(another_matrix, width, height, bitDepth_float); 

// random values between 0 and 1; seed is 5
Ext.<a href="https://clij.github.io/clij2-docs/reference_setRandom">CLIJ2_setRandom</a>(another_matrix, 0, 1, 5); 

// element by element multiplication
Ext.<a href="https://clij.github.io/clij2-docs/reference_multiplyImages">CLIJ2_multiplyImages</a>(matrix, another_matrix, matrix_element_wise_multiplied);
Ext.<a href="https://clij.github.io/clij2-docs/reference_print">CLIJ2_print</a>(matrix_element_wise_multiplied);
</pre>
<pre>
> 4.383119 1.2362144 0.7060671 5.506363 4.8890452
> 11.339695 6.46572 13.220956 8.074771 8.551192
> 12.558822 15.804102 6.666415 9.3351755 22.798822
> 20.138004 6.1388454 14.7976 33.134903 29.261187
> 26.581673 11.132466 8.880062 14.615762 44.193928
</pre>

## Element by element multiplication of a matrix with a scalar

<pre class="highlight">
Ext.<a href="https://clij.github.io/clij2-docs/reference_multiplyImageAndScalar">CLIJ2_multiplyImageAndScalar</a>(matrix, elements_times_2, 2);
Ext.<a href="https://clij.github.io/clij2-docs/reference_print">CLIJ2_print</a>(elements_times_2);
</pre>
<pre>
> 12.0 14.0 16.0 18.0 20.0
> 24.0 28.0 32.0 36.0 40.0
> 36.0 42.0 48.0 54.0 60.0
> 48.0 56.0 64.0 72.0 80.0
> 60.0 70.0 80.0 90.0 100.0
</pre>

At the end of the macro, clean up:

<pre class="highlight">
Ext.<a href="https://clij.github.io/clij2-docs/reference_clear">CLIJ2_clear</a>();
</pre>

This is just a useful function to obtain a nice visualization in the notebook.

<pre class="highlight">
function zoom(factor) {
	getDimensions(width, height, channels, slices, frames);
	before = getTitle();	
	run("Scale...", "x=" + factor + " y=" + factor + " width=" + (width * factor) + " height=" + (height* factor) + " interpolation=None average create");
	selectWindow(before);
	close();
}

</pre>





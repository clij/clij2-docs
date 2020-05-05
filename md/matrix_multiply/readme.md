

# Matrix Multiplication
Authors: Robert Haase, Daniela Vorkel, April 2020

[Source](https://github.com/clij/clij2-docs/tree/master/src/main/macro/matrix_multiply.ijm)


This macro shows how to perform a matrix multiplication
in the GPU.


```java

// initialize GPU
run("CLIJ2 Macro Extensions", "cl_device=[GeForce RTX 2060 SUPER]");
Ext.CLIJ2_clear();

run("Close All");
```

## Define two arrays (vectors) and push them to the GPU 

```java
array1 = newArray(1, 2, 3, 4, 5);
array2 = newArray(6, 7, 8, 9, 10);

// push arrays to GPU
Ext.CLIJ2_pushArray(vector1, array1, 5, 1, 1);
Ext.CLIJ2_pushArray(vector2, array2, 5, 1, 1);

```

## In order to multiplicate matrices, the input matrices must be of size (n * m) and (m * n) 
Therefore, we transpose one of our vectors: 

```java
// transpose the first input vector and show it
Ext.CLIJ2_transposeXY(vector1, vector1transposed);
print("Vector 1 (transposed):");
Ext.CLIJ2_print(vector1transposed);

// show second input vector
print("Vector 2:");
Ext.CLIJ2_print(vector2);
```
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

```java
Ext.CLIJ2_multiplyMatrix(vector1transposed, vector2, matrix);
Ext.CLIJ2_print(matrix);
```
<pre>
> 6.0 7.0 8.0 9.0 10.0
> 12.0 14.0 16.0 18.0 20.0
> 18.0 21.0 24.0 27.0 30.0
> 24.0 28.0 32.0 36.0 40.0
> 30.0 35.0 40.0 45.0 50.0
</pre>

You can also express a matrix as an image:

```java
Ext.CLIJ2_pull(matrix);
zoom(100);
```
<a href="image_1588706975067.png"><img src="image_1588706975067.png" width="250" alt="CLIJ2_multiplyMatrix_result43-1"/></a>

## Element by element multiplication of two matrices

```java
// generate another matrix of the same size with random values
Ext.CLIJ2_getDimensions(matrix, width, height, depth);
bitDepth_float = 32;// 32-bit float type
Ext.CLIJ2_create2D(another_matrix, width, height, bitDepth_float); 

// random values between 0 and 1; seed is 5
Ext.CLIJ2_setRandom(another_matrix, 0, 1, 5); 

// element by element multiplication
Ext.CLIJ2_multiplyImages(matrix, another_matrix, matrix_element_wise_multiplied);
Ext.CLIJ2_print(matrix_element_wise_multiplied);
```
<pre>
> 4.383119 1.2362144 0.7060671 5.506363 4.8890452
> 11.339695 6.46572 13.220956 8.074771 8.551192
> 12.558822 15.804102 6.666415 9.3351755 22.798822
> 20.138004 6.1388454 14.7976 33.134903 29.261187
> 26.581673 11.132466 8.880062 14.615762 44.193928
</pre>

## Element by element multiplication of a matrix with a scalar

```java
Ext.CLIJ2_multiplyImageAndScalar(matrix, elements_times_2, 2);
Ext.CLIJ2_print(elements_times_2);
```
<pre>
> 12.0 14.0 16.0 18.0 20.0
> 24.0 28.0 32.0 36.0 40.0
> 36.0 42.0 48.0 54.0 60.0
> 48.0 56.0 64.0 72.0 80.0
> 60.0 70.0 80.0 90.0 100.0
</pre>

At the end of the macro, clean up:

```java
Ext.CLIJ2_clear();
```

This is just a useful function to obtain a nice visualization in the notebook.

```java
function zoom(factor) {
	getDimensions(width, height, channels, slices, frames);
	before = getTitle();	
	run("Scale...", "x=" + factor + " y=" + factor + " width=" + (width * factor) + " height=" + (height* factor) + " interpolation=None average create");
	selectWindow(before);
	close();
}

```



```
```

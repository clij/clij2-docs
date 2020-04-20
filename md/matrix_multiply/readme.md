

# CLIJ2 Tutorial: Matrix Multiplication

This macro shows to do matrix multiplication
on the GPU.

Author: Robert Haase
         April 2020

```java

// Initialize GPU
run("CLIJ2 Macro Extensions", "cl_device=[GeForce RTX 2060 SUPER]");
Ext.CLIJ2_clear();

run("Close All");

```

## Define two arrays (vectors) and push them to the GPU 

```java
array1 = newArray(1, 2, 3, 4, 5);
array2 = newArray(6, 7, 8, 9, 10);

// push arrays to GPU
Ext.[CLIJ2_pushArray](https://clij.github.io/clij2-docs/reference_pushArray)(vector1, array1, 5, 1, 1);
Ext.[CLIJ2_pushArray](https://clij.github.io/clij2-docs/reference_pushArray)(vector2, array2, 5, 1, 1);

```

## In order to do matrix multiplication, the input matrice must be of size n*m and m*n. 
Therefore, we transpose one of our vectors 

```java
// transpose first input vector and show it
Ext.[CLIJ2_transposeXY](https://clij.github.io/clij2-docs/reference_transposeXY)(vector1, vector1transposed);
Ext.CLIJ2_pull(vector1transposed);
zoom(100);

// show second input vector
Ext.CLIJ2_pull(vector2);
zoom(100);

```
<a href="image_1587393055708.png"><img src="image_1587393055708.png" width="250" alt="CLIJ2_transposeXY_result245-1"/></a>
<a href="image_1587393055718.png"><img src="image_1587393055718.png" width="250" alt="CLIJ2_pushArray_result244-1"/></a>

## Matrix multiplication

```java
Ext.[CLIJ2_multiplyMatrix](https://clij.github.io/clij2-docs/reference_multiplyMatrix)(vector1transposed, vector2, matrix);
Ext.CLIJ2_pull(matrix);
zoom(100);

```
<a href="image_1587393055826.png"><img src="image_1587393055826.png" width="250" alt="CLIJ2_multiplyMatrix_result246-1"/></a>

## Element wise multiplication of the matrix with another matrix

```java

// generate another matrix of the same size with random values
Ext.[CLIJ2_getDimensions](https://clij.github.io/clij2-docs/reference_getDimensions)(matrix, width, height, depth);
bitDepth_float = 32;// 32-bit float type
Ext.CLIJ2_create2D(another_matrix, width, height, bitDepth_float); 

// random values between 0 and 1; seed is 5
Ext.[CLIJ2_setRandom](https://clij.github.io/clij2-docs/reference_setRandom)(another_matrix, 0, 1, 5); 

// element wise multiplication
Ext.[CLIJ2_multiplyImages](https://clij.github.io/clij2-docs/reference_multiplyImages)(matrix, another_matrix, matrix_element_wise_multiplied);
Ext.CLIJ2_pull(matrix_element_wise_multiplied);
zoom(100);

```
<a href="image_1587393055936.png"><img src="image_1587393055936.png" width="250" alt="CLIJ2_multiplyImages_result248-1"/></a>

## Element wise multiplication of the matrix with a scalar

```java
Ext.[CLIJ2_multiplyImageAndScalar](https://clij.github.io/clij2-docs/reference_multiplyImageAndScalar)(matrix, elements_times_2, 2);
Ext.CLIJ2_pull(elements_times_2);
zoom(100);


```
<a href="image_1587393056035.png"><img src="image_1587393056035.png" width="250" alt="CLIJ2_multiplyImageAndScalar_result249-1"/></a>

Clean up by the end

```java
Ext.CLIJ2_clear();

```

This is just a utility function to make the visualisation in the notebook nice.

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

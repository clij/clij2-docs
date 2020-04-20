/* 
# CLIJ2 Tutorial: Matrix Multiplication

This macro shows to do matrix multiplication
on the GPU.

Author: Robert Haase
         April 2020
*/

// Initialize GPU
run("CLIJ2 Macro Extensions", "cl_device=[GeForce RTX 2060 SUPER]");
Ext.CLIJ2_clear();

run("Close All");

/*
## Define two arrays (vectors) and push them to the GPU 
 */
array1 = newArray(1, 2, 3, 4, 5);
array2 = newArray(6, 7, 8, 9, 10);

// push arrays to GPU
Ext.CLIJ2_pushArray(vector1, array1, 5, 1, 1);
Ext.CLIJ2_pushArray(vector2, array2, 5, 1, 1);

/*
## In order to do matrix multiplication, the input matrice must be of size n*m and m*n. 
Therefore, we transpose one of our vectors 
*/
// transpose first input vector and show it
Ext.CLIJ2_transposeXY(vector1, vector1transposed);
Ext.CLIJ2_pull(vector1transposed);
zoom(100);

// show second input vector
Ext.CLIJ2_pull(vector2);
zoom(100);

/* 
## Matrix multiplication
*/
Ext.CLIJ2_multiplyMatrix(vector1transposed, vector2, matrix);
Ext.CLIJ2_pull(matrix);
zoom(100);

/* 
## Element wise multiplication of the matrix with another matrix
*/

// generate another matrix of the same size with random values
Ext.CLIJ2_getDimensions(matrix, width, height, depth);
bitDepth_float = 32;// 32-bit float type
Ext.CLIJ2_create2D(another_matrix, width, height, bitDepth_float); 

// random values between 0 and 1; seed is 5
Ext.CLIJ2_setRandom(another_matrix, 0, 1, 5); 

// element wise multiplication
Ext.CLIJ2_multiplyImages(matrix, another_matrix, matrix_element_wise_multiplied);
Ext.CLIJ2_pull(matrix_element_wise_multiplied);
zoom(100);

/* 
## Element wise multiplication of the matrix with a scalar
*/
Ext.CLIJ2_multiplyImageAndScalar(matrix, elements_times_2, 2);
Ext.CLIJ2_pull(elements_times_2);
zoom(100);


/*
Clean up by the end
*/
Ext.CLIJ2_clear();

/*
This is just a utility function to make the visualisation in the notebook nice.
*/
function zoom(factor) {
	getDimensions(width, height, channels, slices, frames);
	before = getTitle();	
	run("Scale...", "x=" + factor + " y=" + factor + " width=" + (width * factor) + " height=" + (height* factor) + " interpolation=None average create");
	selectWindow(before);
	close();
}


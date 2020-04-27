## multiplyMatrix
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/>

Multiplies two matrices with each other.

### multiplyMatrix often follows after
* <a href="reference_pushArray">pushArray</a> (2)
* <a href="reference_transposeXY">transposeXY</a> (2)


### multiplyMatrix is often followed by
* <a href="reference_multiplyImageAndScalar">multiplyImageAndScalar</a> (2)


### Usage in ImageJ macro
```
Ext.CLIJ2_multiplyMatrix(Image matrix1, Image matrix2, ByRef Image matrix_destination);
```


### Usage in Matlab
```
// init CLIJ and GPU
clij2 = init_clatlab();

% get input parameters
matrix1 = clij2.pushMat(matrix1);
matrix2 = clij2.pushMat(matrix2);
matrix_destination = clij2.create(matrix1);
```

```
% Execute operation on GPU
clij2.multiplyMatrix(clij, matrix1, matrix2, matrix_destination);
```

```
% show result
matrix_destination = clij2.pullMat(matrix_destination)

% cleanup memory on GPU
clij2.release(matrix1);
clij2.release(matrix2);
clij2.release(matrix_destination);
```


### Usage in Java
```
// init CLIJ and GPU
import net.haesleinhuepf.clij2.CLIJ2;
import net.haesleinhuepf.clij.clearcl.ClearCLBuffer;
CLIJ2 clij2 = CLIJ2.getInstance();

// get input parameters
ClearCLBuffer matrix1 = clij2.push(matrix1ImagePlus);
ClearCLBuffer matrix2 = clij2.push(matrix2ImagePlus);
matrix_destination = clij2.create(matrix1);
```

```
// Execute operation on GPU
clij2.multiplyMatrix(clij, matrix1, matrix2, matrix_destination);
```

```
//show result
matrix_destinationImagePlus = clij2.pull(matrix_destination);
matrix_destinationImagePlus.show();

// cleanup memory on GPU
clij2.release(matrix1);
clij2.release(matrix2);
clij2.release(matrix_destination);
```




### Example notebooks
<a href="https://clij.github.io/clij2-docs/md/matrix_multiply"><img src="images/language_macro.png" height="20"/></a> [matrix_multiply](https://clij.github.io/clij2-docs/md/matrix_multiply)  




### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/matrix_multiply.ijm"><img src="images/language_macro.png" height="20"/></a> [matrix_multiply.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/matrix_multiply.ijm)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

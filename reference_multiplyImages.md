## multiplyImages
<img src="images/mini_clij1_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/>

Multiplies all pairs of pixel values x and y from two image X and Y.

<pre>f(x, y) = x * y</pre>

### multiplyImages often follows after
* <a href="reference_create2D">create2D</a> (2)


### multiplyImages is often followed by
* <a href="reference_print">print</a> (4)
* <a href="reference_touchMatrixToMesh">touchMatrixToMesh</a> (2)


### Usage in ImageJ macro
```
Ext.CLIJ2_multiplyImages(Image factor1, Image factor2, Image destination);
```


### Usage in Matlab
```
// init CLIJ and GPU
clij2 = init_clatlab();

% get input parameters
factor1 = clij2.pushMat(factor1);
factor2 = clij2.pushMat(factor2);
destination = clij2.create(factor1);
```

```
% Execute operation on GPU
clij2.multiplyImages(clij, factor1, factor2, destination);
```

```
% show result
destination = clij2.pullMat(destination)

% cleanup memory on GPU
clij2.release(factor1);
clij2.release(factor2);
clij2.release(destination);
```


### Usage in Java
```
// init CLIJ and GPU
import net.haesleinhuepf.clij2.CLIJ2;
import net.haesleinhuepf.clij.clearcl.ClearCLBuffer;
CLIJ2 clij2 = CLIJ2.getInstance();

// get input parameters
ClearCLBuffer factor1 = clij2.push(factor1ImagePlus);
ClearCLBuffer factor2 = clij2.push(factor2ImagePlus);
destination = clij2.create(factor1);
```

```
// Execute operation on GPU
clij2.multiplyImages(clij, factor1, factor2, destination);
```

```
//show result
destinationImagePlus = clij2.pull(destination);
destinationImagePlus.show();

// cleanup memory on GPU
clij2.release(factor1);
clij2.release(factor2);
clij2.release(destination);
```




### Example notebooks
<a href="https://clij.github.io/clij2-docs/md/matrix_multiply"><img src="images/language_macro.png" height="20"/></a> [matrix_multiply](https://clij.github.io/clij2-docs/md/matrix_multiply)  
<a href="https://clij.github.io/clij2-docs/md/multiply_vectors_matrices"><img src="images/language_macro.png" height="20"/></a> [multiply_vectors_matrices](https://clij.github.io/clij2-docs/md/multiply_vectors_matrices)  
<a href="https://clij.github.io/clij2-docs/md/tribolium_morphometry"><img src="images/language_macro.png" height="20"/></a> [tribolium_morphometry](https://clij.github.io/clij2-docs/md/tribolium_morphometry)  




### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/matrix_multiply.ijm"><img src="images/language_macro.png" height="20"/></a> [matrix_multiply.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/matrix_multiply.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/multiply_vectors_matrices.ijm"><img src="images/language_macro.png" height="20"/></a> [multiply_vectors_matrices.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/multiply_vectors_matrices.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/tribolium_morphometry.ijm"><img src="images/language_macro.png" height="20"/></a> [tribolium_morphometry.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/tribolium_morphometry.ijm)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

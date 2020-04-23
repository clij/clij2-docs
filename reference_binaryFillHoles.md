## binaryFillHoles
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/>

Fills holes (pixels with value 0 surrounded by pixels with value 1) in a binary image.

### Usage in ImageJ macro
```
Ext.CLIJ2_binaryFillHoles(Image source, ByRef Image destination);
```


### Usage in Java
```
// init CLIJ and GPU
import net.haesleinhuepf.clij2.CLIJ2;
import net.haesleinhuepf.clij.clearcl.ClearCLBuffer;
CLIJ2 clij2 = CLIJ2.getInstance();

// get input parameters
ClearCLBuffer source = clij2.push(sourceImagePlus);
destination = clij.create(source);
```

```
// Execute operation on GPU
clij2.binaryFillHoles(clij, source, destination);
```

```
//show result
destinationImagePlus = clij2.pull(destination);
destinationImagePlus.show();

// cleanup memory on GPU
clij2.release(source);
clij2.release(destination);
```




### Example notebooks
<a href="https://clij.github.io/clij2-docs/md/binary_processing"><img src="images/language_macro.png" height="20"/></a> [binary_processing](https://clij.github.io/clij2-docs/md/binary_processing)  




### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/benchmarkFillHoles.ijm"><img src="images/language_macro.png" height="20"/></a> [benchmarkFillHoles.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/benchmarkFillHoles.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/binary_processing.ijm"><img src="images/language_macro.png" height="20"/></a> [binary_processing.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/binary_processing.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/fillHoles.ijm"><img src="images/language_macro.png" height="20"/></a> [fillHoles.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/fillHoles.ijm)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

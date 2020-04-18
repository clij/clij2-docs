## topHatSphere
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/>

Applies a top-hat filter for background subtraction to the input image.

### Usage in ImageJ macro
```
Ext.CLIJ2_topHatSphere(Image input, ByRef Image destination, Number radiusX, Number radiusY, Number radiusZ);
```


### Usage in Java
```
// init CLIJ and GPU
import net.haesleinhuepf.clij2.CLIJ2;
import net.haesleinhuepf.clij.clearcl.ClearCLBuffer;
CLIJ2 clij2 = CLIJ2.getInstance();

// get input parameters
ClearCLBuffer input = clij2.push(inputImagePlus);
destination = clij.create(input);
int radiusX = 10;
int radiusY = 20;
int radiusZ = 30;
```

```
// Execute operation on GPU
clij2.topHatSphere(clij, input, destination, radiusX, radiusY, radiusZ);
```

```
//show result
destinationImagePlus = clij2.pull(destination);
destinationImagePlus.show();

// cleanup memory on GPU
clij2.release(input);
clij2.release(destination);
```




### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/benchmark_xt.ijm"><img src="images/language_macro.png" height="20"/></a> [benchmark_xt.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/benchmark_xt.ijm)  


[Back to CLIJ documentation](https://clij.github.io/)

[Imprint](https://clij.github.io/imprint)

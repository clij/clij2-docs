## subtractImageFromScalar
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/>

Subtracts one image X from a scalar s pixel wise.

<pre>f(x, s) = s - x</pre>

### subtractImageFromScalar is often followed by
* <a href="reference_thresholdOtsu">thresholdOtsu</a> (2)


### Usage in ImageJ macro
```
Ext.CLIJ2_subtractImageFromScalar(Image input, ByRef Image destination, Number scalar);
```


### Usage in Matlab
```
// init CLIJ and GPU
clij2 = init_clatlab();

% get input parameters
input = clij2.pushMat(input);
destination = clij2.create(input);
scalar = 1.0;
```

```
% Execute operation on GPU
clij2.subtractImageFromScalar(clij, input, destination, scalar);
```

```
% show result
destination = clij2.pullMat(destination)

% cleanup memory on GPU
clij2.release(input);
clij2.release(destination);
```


### Usage in Java
```
// init CLIJ and GPU
import net.haesleinhuepf.clij2.CLIJ2;
import net.haesleinhuepf.clij.clearcl.ClearCLBuffer;
CLIJ2 clij2 = CLIJ2.getInstance();

// get input parameters
ClearCLBuffer input = clij2.push(inputImagePlus);
destination = clij2.create(input);
float scalar = 1.0;
```

```
// Execute operation on GPU
clij2.subtractImageFromScalar(clij, input, destination, scalar);
```

```
//show result
destinationImagePlus = clij2.pull(destination);
destinationImagePlus.show();

// cleanup memory on GPU
clij2.release(input);
clij2.release(destination);
```




### Example notebooks
<a href="https://clij.github.io/clij2-docs/md/binary_processing"><img src="images/language_macro.png" height="20"/></a> [binary_processing](https://clij.github.io/clij2-docs/md/binary_processing)  




### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/binary_processing.ijm"><img src="images/language_macro.png" height="20"/></a> [binary_processing.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/binary_processing.ijm)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

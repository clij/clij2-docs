## binarySubtract
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/>

Subtracts one binary image from another.

### Usage in ImageJ macro
```
Ext.CLIJ2_binarySubtract(Image minuend, Image subtrahend, ByRef Image destination);
```


### Usage in Matlab
```
// init CLIJ and GPU
clij2 = init_clatlab();

% get input parameters
minuend = clij2.pushMat(minuend);
subtrahend = clij2.pushMat(subtrahend);
destination = clij2.create(minuend);
```

```
% Execute operation on GPU
clij2.binarySubtract(clij, minuend, subtrahend, destination);
```

```
% show result
destination = clij2.pullMat(destination)

% cleanup memory on GPU
clij2.release(minuend);
clij2.release(subtrahend);
clij2.release(destination);
```


### Usage in Java
```
// init CLIJ and GPU
import net.haesleinhuepf.clij2.CLIJ2;
import net.haesleinhuepf.clij.clearcl.ClearCLBuffer;
CLIJ2 clij2 = CLIJ2.getInstance();

// get input parameters
ClearCLBuffer minuend = clij2.push(minuendImagePlus);
ClearCLBuffer subtrahend = clij2.push(subtrahendImagePlus);
destination = clij2.create(minuend);
```

```
// Execute operation on GPU
clij2.binarySubtract(clij, minuend, subtrahend, destination);
```

```
//show result
destinationImagePlus = clij2.pull(destination);
destinationImagePlus.show();

// cleanup memory on GPU
clij2.release(minuend);
clij2.release(subtrahend);
clij2.release(destination);
```


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

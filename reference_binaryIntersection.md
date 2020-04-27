## binaryIntersection
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/>

Computes a binary image (containing pixel values 0 and 1) from two images X and Y by connecting pairs of
pixels x and y with the binary intersection operator &.
All pixel values except 0 in the input images are interpreted as 1.

<pre>f(x, y) = x & y</pre>

### Usage in ImageJ macro
```
Ext.CLIJ2_binaryIntersection(Image operand1, Image operand2, ByRef Image destination);
```


### Usage in Matlab
```
// init CLIJ and GPU
clij2 = init_clatlab();

% get input parameters
operand1 = clij2.pushMat(operand1);
operand2 = clij2.pushMat(operand2);
destination = clij2.create(operand1);
```

```
% Execute operation on GPU
clij2.binaryIntersection(clij, operand1, operand2, destination);
```

```
% show result
destination = clij2.pullMat(destination)

% cleanup memory on GPU
clij2.release(operand1);
clij2.release(operand2);
clij2.release(destination);
```


### Usage in Java
```
// init CLIJ and GPU
import net.haesleinhuepf.clij2.CLIJ2;
import net.haesleinhuepf.clij.clearcl.ClearCLBuffer;
CLIJ2 clij2 = CLIJ2.getInstance();

// get input parameters
ClearCLBuffer operand1 = clij2.push(operand1ImagePlus);
ClearCLBuffer operand2 = clij2.push(operand2ImagePlus);
destination = clij2.create(operand1);
```

```
// Execute operation on GPU
clij2.binaryIntersection(clij, operand1, operand2, destination);
```

```
//show result
destinationImagePlus = clij2.pull(destination);
destinationImagePlus.show();

// cleanup memory on GPU
clij2.release(operand1);
clij2.release(operand2);
clij2.release(destination);
```


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

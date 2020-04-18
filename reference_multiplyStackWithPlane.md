## multiplyStackWithPlane
<img src="images/mini_clij1_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/>

Multiplies all pairs of pixel values x and y from an image stack X and a 2D image Y. x and y are at 
the same spatial position within a plane.

<pre>f(x, y) = x * y</pre>

### Usage in ImageJ macro
```
Ext.CLIJ2_multiplyStackWithPlane(Image sourceStack, Image sourcePlane, Image destination);
```


### Usage in Java
```
// init CLIJ and GPU
import net.haesleinhuepf.clij2.CLIJ2;
import net.haesleinhuepf.clij.clearcl.ClearCLBuffer;
CLIJ2 clij2 = CLIJ2.getInstance();

// get input parameters
ClearCLBuffer sourceStack = clij2.push(sourceStackImagePlus);
ClearCLBuffer sourcePlane = clij2.push(sourcePlaneImagePlus);
destination = clij.create(sourceStack);
```

```
// Execute operation on GPU
clij2.multiplyStackWithPlane(clij, sourceStack, sourcePlane, destination);
```

```
//show result
destinationImagePlus = clij2.pull(destination);
destinationImagePlus.show();

// cleanup memory on GPU
clij2.release(sourceStack);
clij2.release(sourcePlane);
clij2.release(destination);
```


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

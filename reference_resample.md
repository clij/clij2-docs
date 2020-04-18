## resample
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/>

Resamples an image with given size factors using an affine transform.

### resample is often followed by
* <a href="reference_maximumZProjection">maximumZProjection</a> (2)


### Usage in ImageJ macro
```
Ext.CLIJ2_resample(Image source, ByRef Image destination, Number factorX, Number factorY, Number factorZ, Boolean linearInterpolation);
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
float factorX = 1.0;
float factorY = 2.0;
float factorZ = 3.0;
boolean linearInterpolation = true;
```

```
// Execute operation on GPU
clij2.resample(clij, source, destination, factorX, factorY, factorZ, linearInterpolation);
```

```
//show result
destinationImagePlus = clij2.pull(destination);
destinationImagePlus.show();

// cleanup memory on GPU
clij2.release(source);
clij2.release(destination);
```




### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/orthogonalMaximumProjections.ijm"><img src="images/language_macro.png" height="20"/></a> [orthogonalMaximumProjections.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/orthogonalMaximumProjections.ijm)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

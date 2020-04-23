## gaussianBlur3D
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/>

Computes the Gaussian blurred image of an image given two sigma values in X, Y and Z. 

Thus, the filterkernel can have non-isotropic shape.

The implementation is done separable. In case a sigma equals zero, the direction is not blurred.

### gaussianBlur3D is often followed by
* <a href="reference_subtractImages">subtractImages</a> (2)
* <a href="reference_threshold">threshold</a> (2)
* <a href="reference_detectMaximaBox">detectMaximaBox</a> (2)


### Usage in ImageJ macro
```
Ext.CLIJ2_gaussianBlur3D(Image source, ByRef Image destination, Number sigmaX, Number sigmaY, Number sigmaZ);
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
float sigmaX = 1.0;
float sigmaY = 2.0;
float sigmaZ = 3.0;
```

```
// Execute operation on GPU
clij2.gaussianBlur3D(clij, source, destination, sigmaX, sigmaY, sigmaZ);
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
<a href="https://clij.github.io/clij2-docs/md/blur"><img src="images/language_macro.png" height="20"/></a> [blur](https://clij.github.io/clij2-docs/md/blur)  
<a href="https://clij.github.io/clij2-docs/md/tribolium_morphometry"><img src="images/language_macro.png" height="20"/></a> [tribolium_morphometry](https://clij.github.io/clij2-docs/md/tribolium_morphometry)  




### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/backgroundSubtraction.ijm"><img src="images/language_macro.png" height="20"/></a> [backgroundSubtraction.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/backgroundSubtraction.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/blur.ijm"><img src="images/language_macro.png" height="20"/></a> [blur.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/blur.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/meshTouchingNeighbors.ijm"><img src="images/language_macro.png" height="20"/></a> [meshTouchingNeighbors.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/meshTouchingNeighbors.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/tribolium_morphometry.ijm"><img src="images/language_macro.png" height="20"/></a> [tribolium_morphometry.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/tribolium_morphometry.ijm)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

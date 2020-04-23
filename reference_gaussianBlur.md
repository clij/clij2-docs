## gaussianBlur
<img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/>

Computes the Gaussian blurred image of an image given two sigma values in X and Y. 

Thus, the filterkernel can have non-isotropic shape.

The implementation is done separable. In case a sigma equals zero, the direction is not blurred.

### Usage in ImageJ macro
```
Ext.CLIJ2_gaussianBlur(Image source, ByRef Image destination, Number sigmaX, Number sigmaY);
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
```

```
// Execute operation on GPU
clij2.gaussianBlur(clij, source, destination, sigmaX, sigmaY);
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
<a href="https://clij.github.io/clij2-docs/md/basics"><img src="images/language_macro.png" height="20"/></a> [basics](https://clij.github.io/clij2-docs/md/basics)  
<a href="https://clij.github.io/clij2-docs/md/blur"><img src="images/language_macro.png" height="20"/></a> [blur](https://clij.github.io/clij2-docs/md/blur)  
<a href="https://clij.github.io/clij2-docs/md/tribolium_morphometry"><img src="images/language_macro.png" height="20"/></a> [tribolium_morphometry](https://clij.github.io/clij2-docs/md/tribolium_morphometry)  




### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/backgroundSubtraction.ijm"><img src="images/language_macro.png" height="20"/></a> [backgroundSubtraction.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/backgroundSubtraction.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/basics.ijm"><img src="images/language_macro.png" height="20"/></a> [basics.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/basics.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/blur.ijm"><img src="images/language_macro.png" height="20"/></a> [blur.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/blur.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/mean_squared_error.ijm"><img src="images/language_macro.png" height="20"/></a> [mean_squared_error.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/mean_squared_error.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/meshTouchingNeighbors.ijm"><img src="images/language_macro.png" height="20"/></a> [meshTouchingNeighbors.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/meshTouchingNeighbors.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/spot_distance_measurement.ijm"><img src="images/language_macro.png" height="20"/></a> [spot_distance_measurement.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/spot_distance_measurement.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/tribolium_morphometry.ijm"><img src="images/language_macro.png" height="20"/></a> [tribolium_morphometry.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/tribolium_morphometry.ijm)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

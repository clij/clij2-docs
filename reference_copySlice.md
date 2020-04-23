## copySlice
<img src="images/mini_clij1_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/>

This method has two purposes: 
It copies a 2D image to a given slice z position in a 3D image stack or 
It copies a given slice at position z in an image stack to a 2D image.

The first case is only available via ImageJ macro. If you are using it, it is recommended that the 
target 3D image already pre-exists in GPU memory before calling this method. Otherwise, CLIJ create 
the image stack with z planes.

### copySlice often follows after
* <a href="reference_affineTransform2D">affineTransform2D</a> (3)
* <a href="reference_maximumZProjection">maximumZProjection</a> (2)
* <a href="reference_rotate2D">rotate2D</a> (3)
* <a href="reference_scale2D">scale2D</a> (2)
* <a href="reference_translate2D">translate2D</a> (2)
* <a href="reference_applyVectorField2D">applyVectorField2D</a> (2)


### copySlice is often followed by
* <a href="reference_affineTransform2D">affineTransform2D</a> (3)
* <a href="reference_crop3D">crop3D</a> (2)


### Usage in ImageJ macro
```
Ext.CLIJ2_copySlice(Image source, Image destination, Number sliceIndex);
```


### Usage in Java
```
// init CLIJ and GPU
import net.haesleinhuepf.clij2.CLIJ2;
import net.haesleinhuepf.clij.clearcl.ClearCLBuffer;
CLIJ2 clij2 = CLIJ2.getInstance();

// get input parameters
ClearCLBuffer source = clij2.push(sourceImagePlus);
destination = clij.create(new long[]{source.getWidth(), source.getHeight()}, source.getNativeType());
int sliceIndex = 10;
```

```
// Execute operation on GPU
clij2.copySlice(clij, source, destination, sliceIndex);
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
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/allocateBigImages.ijm"><img src="images/language_macro.png" height="20"/></a> [allocateBigImages.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/allocateBigImages.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/applyVectorField.ijm"><img src="images/language_macro.png" height="20"/></a> [applyVectorField.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/applyVectorField.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/motionCorrection.ijm"><img src="images/language_macro.png" height="20"/></a> [motionCorrection.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/motionCorrection.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/motionCorrection_compare_stackreg.ijm"><img src="images/language_macro.png" height="20"/></a> [motionCorrection_compare_stackreg.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/motionCorrection_compare_stackreg.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/rotateFree.ijm"><img src="images/language_macro.png" height="20"/></a> [rotateFree.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/rotateFree.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/rotateOverwriteOriginal.ijm"><img src="images/language_macro.png" height="20"/></a> [rotateOverwriteOriginal.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/rotateOverwriteOriginal.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/rotating_sphere.ijm"><img src="images/language_macro.png" height="20"/></a> [rotating_sphere.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/rotating_sphere.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/scaleFree.ijm"><img src="images/language_macro.png" height="20"/></a> [scaleFree.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/scaleFree.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/translate.ijm"><img src="images/language_macro.png" height="20"/></a> [translate.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/translate.ijm)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

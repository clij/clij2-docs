## affineTransform2D
<img src="images/mini_clij1_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/>

Applies an affine transform to a 2D image. Individual transforms must be separated by spaces.

Supported transforms:
* center: translate the coordinate origin to the center of the image
* -center: translate the coordinate origin back to the initial origin
* rotate=[angle]: rotate in X/Y plane (around Z-axis) by the given angle in degrees
* scale=[factor]: isotropic scaling according to given zoom factor
* scaleX=[factor]: scaling along X-axis according to given zoom factor
* scaleY=[factor]: scaling along Y-axis according to given zoom factor
* shearXY=[factor]: shearing along X-axis in XY plane according to given factor
* translateX=[distance]: translate along X-axis by distance given in pixels
* translateY=[distance]: translate along X-axis by distance given in pixels

Example transform:
transform = "center scale=2 rotate=45 -center";

### affineTransform2D often follows after
* <a href="reference_copySlice">copySlice</a> (3)


### affineTransform2D is often followed by
* <a href="reference_copySlice">copySlice</a> (3)
* <a href="reference_applyVectorField2D">applyVectorField2D</a> (7)


### Usage in ImageJ macro
```
Ext.CLIJ2_affineTransform2D(Image source, Image destination, String transform);
```




### Example notebooks
<a href="https://clij.github.io/clij2-docs/md/applyVectorFieldMD"><img src="images/language_macro.png" height="20"/></a> [applyVectorFieldMD](https://clij.github.io/clij2-docs/md/applyVectorFieldMD)  
<a href="https://clij.github.io/clij2-docs/md/rotate_comparison"><img src="images/language_macro.png" height="20"/></a> [rotate_comparison](https://clij.github.io/clij2-docs/md/rotate_comparison)  




### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/affineTransform.ijm"><img src="images/language_macro.png" height="20"/></a> [affineTransform.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/affineTransform.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/applyVectorField.ijm"><img src="images/language_macro.png" height="20"/></a> [applyVectorField.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/applyVectorField.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/applyVectorFieldMD.ijm"><img src="images/language_macro.png" height="20"/></a> [applyVectorFieldMD.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/applyVectorFieldMD.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/motionCorrection.ijm"><img src="images/language_macro.png" height="20"/></a> [motionCorrection.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/motionCorrection.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/motionCorrection_compare_stackreg.ijm"><img src="images/language_macro.png" height="20"/></a> [motionCorrection_compare_stackreg.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/motionCorrection_compare_stackreg.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/rotate_comparison_IJ_CLIJ.ijm"><img src="images/language_macro.png" height="20"/></a> [rotate_comparison_IJ_CLIJ.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/rotate_comparison_IJ_CLIJ.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/warpCat.ijm"><img src="images/language_macro.png" height="20"/></a> [warpCat.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/warpCat.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/warpCat_RGB.ijm"><img src="images/language_macro.png" height="20"/></a> [warpCat_RGB.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/warpCat_RGB.ijm)  
<a href="https://github.com/clij/clatlab/blob/master/src/main/matlab/affineTransform.m"><img src="images/language_matlab.png" height="20"/></a> [affineTransform.m](https://github.com/clij/clatlab/blob/master/src/main/matlab/affineTransform.m)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

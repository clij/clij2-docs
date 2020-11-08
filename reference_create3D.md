## create3D
<img src="images/mini_clij1_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_cle_logo.png"/>

Allocated memory for a new 3D image in the GPU memory. 

BitDepth must be 8 (unsigned byte), 16 (unsigned short) or 32 (float).

### create3D often follows after
* <a href="reference_getDimensions">getDimensions</a> (17)


### create3D is often followed by
* <a href="reference_release">release</a> (1)
* <a href="reference_addImageAndScalar">addImageAndScalar</a> (1)
* <a href="reference_maximumOfTouchingNeighbors">maximumOfTouchingNeighbors</a> (1)


### Usage in ImageJ macro
```
Ext.CLIJ2_create3D(Image destination, Number width, Number height, Number depth, Number bitDepth);
```




### Example notebooks
<a href="https://clij.github.io/clij2-docs/md/tribolium_morphometry"><img src="images/language_macro.png" height="20"/></a> [tribolium_morphometry](https://clij.github.io/clij2-docs/md/tribolium_morphometry)  




### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/addImages3D.ijm"><img src="images/language_macro.png" height="20"/></a> [addImages3D.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/addImages3D.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/allocateBigImages.ijm"><img src="images/language_macro.png" height="20"/></a> [allocateBigImages.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/allocateBigImages.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/division_visualisation.ijm"><img src="images/language_macro.png" height="20"/></a> [division_visualisation.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/division_visualisation.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/process_5D_stack.ijm"><img src="images/language_macro.png" height="20"/></a> [process_5D_stack.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/process_5D_stack.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/rotateFree.ijm"><img src="images/language_macro.png" height="20"/></a> [rotateFree.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/rotateFree.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/rotateOverwriteOriginal.ijm"><img src="images/language_macro.png" height="20"/></a> [rotateOverwriteOriginal.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/rotateOverwriteOriginal.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/rotating_sphere.ijm"><img src="images/language_macro.png" height="20"/></a> [rotating_sphere.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/rotating_sphere.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/scaleFree.ijm"><img src="images/language_macro.png" height="20"/></a> [scaleFree.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/scaleFree.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/translate.ijm"><img src="images/language_macro.png" height="20"/></a> [translate.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/translate.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/tribolium_morphometry.ijm"><img src="images/language_macro.png" height="20"/></a> [tribolium_morphometry.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/tribolium_morphometry.ijm)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

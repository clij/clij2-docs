## crop2D
<img src="images/mini_clij1_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/>

Crops a given rectangle out of a given image. 

Note: If the destination image pre-exists already, it will be overwritten and keep it's dimensions.

### crop2D often follows after
* <a href="reference_getDimensions">getDimensions</a> (3)
* <a href="reference_paste2D">paste2D</a> (2)
* <a href="reference_generateDistanceMatrix">generateDistanceMatrix</a> (2)


### crop2D is often followed by
* <a href="reference_nClosestDistances">nClosestDistances</a> (2)
* <a href="reference_flip2D">flip2D</a> (2)


### Usage in ImageJ macro
```
Ext.CLIJ2_crop2D(Image source, Image destination, Number startX, Number startY, Number width, Number height);
```




### Example notebooks
<a href="https://clij.github.io/clij2-docs/md/crop_and_paste"><img src="images/language_macro.png" height="20"/></a> [crop_and_paste](https://clij.github.io/clij2-docs/md/crop_and_paste)  




### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/allocateBig2DImages.ijm"><img src="images/language_macro.png" height="20"/></a> [allocateBig2DImages.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/allocateBig2DImages.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/crop.ijm"><img src="images/language_macro.png" height="20"/></a> [crop.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/crop.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/crop_and_paste.ijm"><img src="images/language_macro.png" height="20"/></a> [crop_and_paste.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/crop_and_paste.ijm)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

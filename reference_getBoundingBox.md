## getBoundingBox
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_empty_logo.png"/>

Determines the bounding box of all non-zero pixels in a binary image. 

If called from macro, the positions will be stored in the variables 'boundingBoxX', 'boundingBoxY', 'boundingBoxZ', 'boundingBoxWidth', 'boundingBoxHeight' and 'boundingBoxDepth'.In case of 2D images Z and depth will be zero.

### getBoundingBox often follows after
* <a href="reference_thresholdHuang">thresholdHuang</a> (2)


### Usage in ImageJ macro
```
Ext.CLIJ2_getBoundingBox(Image source, ByRef Number boundingBoxX, ByRef Number boundingBoxY, ByRef Number boundingBoxZ, ByRef Number boundingBoxWidth, ByRef Number boundingBoxHeight, ByRef Number boundingBoxDepth);
```




### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/boundingBoxes.ijm"><img src="images/language_macro.png" height="20"/></a> [boundingBoxes.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/boundingBoxes.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/center_of_mass.ijm"><img src="images/language_macro.png" height="20"/></a> [center_of_mass.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/center_of_mass.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/getBoundingBox.ijm"><img src="images/language_macro.png" height="20"/></a> [getBoundingBox.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/getBoundingBox.ijm)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

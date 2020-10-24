## crop3D
<img src="images/mini_clij1_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_cle_logo.png"/>

Crops a given sub-stack out of a given image stack. 

Note: If the destination image pre-exists already, it will be overwritten and keep it's dimensions.

Category: [Transformations](https://clij.github.io/clij2-docs/reference__transform)

### crop3D often follows after
* <a href="reference_copySlice">copySlice</a> (2)


### crop3D is often followed by
* <a href="reference_minimum3DSphere">minimum3DSphere</a> (2)


### Usage in ImageJ macro
```
Ext.CLIJ2_crop3D(Image source, Image destination, Number startX, Number startY, Number startZ, Number width, Number height, Number depth);
```




### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/allocateBigImages.ijm"><img src="images/language_macro.png" height="20"/></a> [allocateBigImages.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/allocateBigImages.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/oddEven.ijm"><img src="images/language_macro.png" height="20"/></a> [oddEven.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/oddEven.ijm)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

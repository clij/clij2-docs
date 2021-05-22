## convertUInt8
<img src="images/mini_clij1_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_empty_logo.png"/>

Convert the input image to a unsigned integer image with 8 bits per pixel.

Pixel values are copied as they are. Use multiplyImageWithScalar in order to scalepixel values when reducing bit-depth to prevent cutting-off intensity ranges.
The target image should not exist with a different type before this 
method is called.

Availability: Available in Fiji by activating the update sites clij and clij2.
This function is part of clij2_-2.3.0.6.jar.

### convertUInt8 often follows after
* <a href="reference_convertFloat">convertFloat</a> (1)


### Usage in ImageJ macro
```
Ext.CLIJ2_convertUInt8(Image source, Image destination);
```




### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/convert.ijm"><img src="images/language_macro.png" height="20"/></a> [convert.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/convert.ijm)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

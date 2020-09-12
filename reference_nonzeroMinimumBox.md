## nonzeroMinimumBox
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/>

Apply a minimum filter (box shape) to the input image. 

The radius is fixed to 1 and pixels with value 0 are ignored.
Note: Pixels with 0 value in the input image will not be overwritten in the output image.
Thus, the result image should be initialized by copying the original image in advance.

### Usage in ImageJ macro
```
Ext.CLIJ2_nonzeroMinimumBox(Image input, Image destination);
```


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

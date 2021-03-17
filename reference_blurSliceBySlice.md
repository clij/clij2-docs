## blurSliceBySlice
<img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_empty_logo.png"/>

Computes the Gaussian blurred image of an image given two sigma values in X and Y. Thus, the filterkernel can have non-isotropic shape.

The Gaussian blur is applied slice by slice in 2D.

DEPRECATED: This method is <b>deprecated</b>. Use gaussianBlur3D instead.

Availability: Available in Fiji by activating the update sites clij and clij2.
This function is part of clijx_-0.30.1.22.jar.

### Usage in ImageJ macro
```
Ext.CLIJx_blurSliceBySlice(Image source, Image destination, Number sigmaX, Number sigmaY);
```


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

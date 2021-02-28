## blur2D
<img src="images/mini_clij1_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_empty_logo.png"/>

Computes the Gaussian blurred image of an image given two sigma values in X and Y. 

Thus, the filterkernel can have non-isotropic shape.

The implementation is done separable. In case a sigma equals zero, the direction is not blurred.

DEPRECATED: This method is <b>deprecated</b>. Use gaussianBlur2D instead.

Categories:  Noise, [Filter](https://clij.github.io/clij2-docs/reference__filter)

Availability: Available in Fiji by activating the update sites clij and clij2.
This function is part of clij2_-2.2.0.19.jar.

### blur2D is often followed by
* <a href="reference_detectMaximaBox">detectMaximaBox</a> (1)


### Usage in ImageJ macro
```
Ext.CLIJ2_blur2D(Image source, Image destination, Number sigma_x, Number sigma_y);
```




### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/mesh_closest_points.ijm"><img src="images/language_macro.png" height="20"/></a> [mesh_closest_points.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/mesh_closest_points.ijm)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

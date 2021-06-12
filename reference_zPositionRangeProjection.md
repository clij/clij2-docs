## zPositionRangeProjection
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_empty_logo.png"/>

Project multiple Z-slices of a 3D stack into a new 3D stack.

Which Z-slice is defined as the z_position image, which represents an altitude map. The two additional numbers define the range relative to the given z-position.

Category: [Projections](https://clij.github.io/clij2-docs/reference__project)

Availability: Available in Fiji by activating the update sites clij and clij2.
This function is part of clij2_-2.5.0.1.jar.

### Usage in ImageJ macro
```
Ext.CLIJ2_zPositionRangeProjection(Image source_stack, Image z_position, Image destination, Number start_z, Number end_z);
```


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

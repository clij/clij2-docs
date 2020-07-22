## sphereTransform
<img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_clijx_logo.png"/>

Turns an image stack in XYZ cartesian coordinate system to an AID polar coordinate system.

A corresponds to azimut,I to inclination and D to the distance from the center.Thus, going in virtual Z direction (actually D) in the resulting stack, you go from the center to theperiphery.

### Usage in ImageJ macro
```
Ext.CLIJx_sphereTransform(Image input, Image destination, Number number_of_angles, Number delta_angle_in_degrees, Number relative_center_x, Number relative_center_y, Number relative_center_z);
```


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

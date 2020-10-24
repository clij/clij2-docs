## labelSurface
<img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_empty_logo.png"/>

Takes a label map and excludes all labels which are not on the surface.

For each label, a ray from a given center towards the label. If the ray crosses another label, the labelin question is not at the surface and thus, removed.

Categories: [Measurements](https://clij.github.io/clij2-docs/reference__measurement), [Labels](https://clij.github.io/clij2-docs/reference__label)

### Usage in ImageJ macro
```
Ext.CLIJx_labelSurface(Image input_labels, Image destination_labels, Number relative_center_x, Number relative_center_y, Number relative_center_z);
```


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

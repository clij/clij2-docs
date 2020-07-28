## parametricWatershed
<img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_clijx_logo.png"/>

Apply a binary watershed to a binary image and introduce black pixels between objects.

To have control about where objects are cut, the sigma parameters allow to control a Gaussian blur filter applied to the internally used distance map.

### Usage in ImageJ macro
```
Ext.CLIJx_parametricWatershed(Image binary_source, Image destination, Number sigma_x, Number sigma_y, Number sigma_z);
```


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

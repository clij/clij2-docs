## bilateral
<img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_empty_logo.png"/>

By Robert Haase, based on work by Loic A. Royer

Applies a bilateral filter using a box neighborhood with sigma weights for space and intensity to the input image.

Deprecated: Use SimpleITK bilateral() instead.

Categories: [Filter](https://clij.github.io/clij2-docs/reference__filter), Noise

Availability: Available in Fiji by activating the update sites clij and clij2.
This function is part of clijx_-0.32.0.1.jar.

### Usage in ImageJ macro
```
Ext.CLIJx_bilateral(Image input, Image destination, Number radiusX, Number radiusY, Number radiusZ, Number sigma_intensity, Number sigma_space);
```


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

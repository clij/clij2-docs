## detectAndLabelMaxima
<img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_empty_logo.png"/>

Determines maximum regions in a Gaussian blurred version of the original image.

The regions do not not necessarily have to be single pixels. 
It is also possible to invert the image before determining the maxima.

Categories: [Detection](https://clij.github.io/clij2-docs/reference__detection), [Labels](https://clij.github.io/clij2-docs/reference__label)

### Usage in ImageJ macro
```
Ext.CLIJx_detectAndLabelMaxima(Image input, Image destination, Number sigma_x, Numer sigma_y, Number sigma_z, Boolean invert);
```


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

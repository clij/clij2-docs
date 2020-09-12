## detectMaxima3DBox
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_empty_logo.png"/>

Detects local maxima in a given square/cubic neighborhood. 

Pixels in the resulting image are set to 1 if there is no other pixel in a given radius which has a 
higher intensity, and to 0 otherwise.

Categories: [Detection](https://clij.github.io/clij2-docs/reference__detection), [Binary](https://clij.github.io/clij2-docs/reference__binary)

### Usage in ImageJ macro
```
Ext.CLIJ2_detectMaxima3DBox(Image source, Image destination, Number radiusX, Number radiusY, Number radiusZ);
```


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

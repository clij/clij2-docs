## detectMaxima2DBox
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_empty_logo.png"/>

Detects local maxima in a given square/cubic neighborhood. 

Pixels in the resulting image are set to 1 if there is no other pixel in a given radius which has a 
higher intensity, and to 0 otherwise.

### detectMaxima2DBox often follows after
* <a href="reference_gaussianBlur2D">gaussianBlur2D</a> (6)


### detectMaxima2DBox is often followed by
* <a href="reference_release">release</a> (3)
* <a href="reference_labelSpots">labelSpots</a> (2)
* <a href="reference_mask">mask</a> (3)


### Usage in ImageJ macro
```
Ext.CLIJ2_detectMaxima2DBox(Image source, Image destination, Number radiusX, Number radiusY);
```


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

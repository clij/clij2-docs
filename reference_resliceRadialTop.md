## resliceRadialTop
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/>

Computes a radial projection of an image stack and reslices it from top. 

Starting point for the line is the given point in any 
X/Y-plane of a given input image stack. Furthermore, radius of the resulting projection must be given and scaling factors in X and Y in case pixels are not isotropic.This operation is similar to ImageJs 'Radial Reslice' method combined with 'Reslice from top' but offers less flexibility.

Category: [Transformations](https://clij.github.io/clij2-docs/reference__transform)

### Usage in ImageJ macro
```
Ext.CLIJ2_resliceRadialTop(Image source, Image destination, Number numberOfAngles, Number angleStepSize, Number startAngleDegrees, Number centerX, Number centerY, Number scaleFactorX, Number scaleFactorY);
```


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

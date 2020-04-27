## topHatOctagonSliceBySlice
<img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_clijx_logo.png"/>

Applies a minimum filter with kernel size 3x3 n times to an image iteratively. 

Odd iterations are done with box neighborhood, even iterations with a diamond. Thus, with n > 2, the filter shape is an octagon. The given number of iterations - 2 makes the filter result very similar to minimum sphere.

### Usage in ImageJ macro
```
Ext.CLIJx_topHatOctagonSliceBySlice(Image input, ByRef Image destination, Number iterations);
```


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

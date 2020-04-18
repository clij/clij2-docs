## drawBox
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/>

Draws a box at a given start point with given size. 
All pixels other than in the box are untouched. Consider using `set(buffer, 0);` in advance.

### drawBox is often followed by
* <a href="reference_copy">copy</a> (2)


### Usage in ImageJ macro
```
Ext.CLIJ2_drawBox(ByRef Image destination, Number x, Number y, Number z, Number width, Number height, Number depth, Number value);
```




### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/virtual_ablation.ijm"><img src="images/language_macro.png" height="20"/></a> [virtual_ablation.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/virtual_ablation.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/rotating_sphere.ijm"><img src="images/language_macro.png" height="20"/></a> [rotating_sphere.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/rotating_sphere.ijm)  
<a href="https://github.com/clij/clatlab/blob/master/src/main/matlab/drawBinaryRectangle.m"><img src="images/language_matlab.png" height="20"/></a> [drawBinaryRectangle.m](https://github.com/clij/clatlab/blob/master/src/main/matlab/drawBinaryRectangle.m)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

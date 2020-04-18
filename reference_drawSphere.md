## drawSphere
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/>

Draws a sphere around a given point with given radii in x, y and z (if 3D). 

 All pixels other than in the sphere are untouched. Consider using `set(buffer, 0);` in advance.

### Usage in ImageJ macro
```
Ext.CLIJ2_drawSphere(ByRef Image destination, Number x, Number y, Number z, Number radius_x, Number radius_y, Number radius_z, Number value);
```




### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/jython/jaccardIndex.py"><img src="images/language_jython.png" height="20"/></a> [jaccardIndex.py](https://github.com/clij/clij2-docs/blob/master/src/main/jython/jaccardIndex.py)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

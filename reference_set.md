## set
<img src="images/mini_clij1_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/>

Sets all pixel values x of a given image X to a constant value v.

<pre>f(x) = v</pre>

### Usage in ImageJ macro
```
Ext.CLIJ2_set(Image source, Number value);
```


### Usage in Java
```
// init CLIJ and GPU
import net.haesleinhuepf.clij2.CLIJ2;
import net.haesleinhuepf.clij.clearcl.ClearCLBuffer;
CLIJ2 clij2 = CLIJ2.getInstance();

// get input parameters
ClearCLBuffer source = clij2.push(sourceImagePlus);
float value = 1.0;
```

```
// Execute operation on GPU
clij2.set(clij, source, value);
```

```
//show result

// cleanup memory on GPU
clij2.release(source);
```




### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/drawLine.ijm"><img src="images/language_macro.png" height="20"/></a> [drawLine.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/drawLine.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/virtual_ablation.ijm"><img src="images/language_macro.png" height="20"/></a> [virtual_ablation.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/virtual_ablation.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/grid.ijm"><img src="images/language_macro.png" height="20"/></a> [grid.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/grid.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/intensity_per_label.ijm"><img src="images/language_macro.png" height="20"/></a> [intensity_per_label.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/intensity_per_label.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/interactive_webcam_acquisition_analysis.ijm"><img src="images/language_macro.png" height="20"/></a> [interactive_webcam_acquisition_analysis.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/interactive_webcam_acquisition_analysis.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/meshTouchingNeighbors.ijm"><img src="images/language_macro.png" height="20"/></a> [meshTouchingNeighbors.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/meshTouchingNeighbors.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/mesh_closest_points.ijm"><img src="images/language_macro.png" height="20"/></a> [mesh_closest_points.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/mesh_closest_points.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/rotating_sphere.ijm"><img src="images/language_macro.png" height="20"/></a> [rotating_sphere.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/rotating_sphere.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/jython/countNeighbors3D.py"><img src="images/language_jython.png" height="20"/></a> [countNeighbors3D.py](https://github.com/clij/clij2-docs/blob/master/src/main/jython/countNeighbors3D.py)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/jython/interactiveCylinderProjection.py"><img src="images/language_jython.png" height="20"/></a> [interactiveCylinderProjection.py](https://github.com/clij/clij2-docs/blob/master/src/main/jython/interactiveCylinderProjection.py)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/jython/interactiveSphereProjection.py"><img src="images/language_jython.png" height="20"/></a> [interactiveSphereProjection.py](https://github.com/clij/clij2-docs/blob/master/src/main/jython/interactiveSphereProjection.py)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/jython/jaccardIndex.py"><img src="images/language_jython.png" height="20"/></a> [jaccardIndex.py](https://github.com/clij/clij2-docs/blob/master/src/main/jython/jaccardIndex.py)  
<a href="https://github.com/clij/clatlab/blob/master/src/main/matlab/drawBinaryRectangle.m"><img src="images/language_matlab.png" height="20"/></a> [drawBinaryRectangle.m](https://github.com/clij/clatlab/blob/master/src/main/matlab/drawBinaryRectangle.m)  
<a href="https://github.com/clij/clatlab/blob/master/src/main/matlab/paste.m"><img src="images/language_matlab.png" height="20"/></a> [paste.m](https://github.com/clij/clatlab/blob/master/src/main/matlab/paste.m)  


[Back to CLIJ documentation](https://clij.github.io/)

[Imprint](https://clij.github.io/imprint)

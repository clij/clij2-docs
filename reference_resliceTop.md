## resliceTop
<img src="images/mini_clij1_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/>

Flippes Y and Z axis of an image stack. This operation is similar to ImageJs 'Reslice [/]' method but
offers less flexibility such as interpolation.

### resliceTop often follows after
* <a href="reference_resample">resample</a> (2)


### resliceTop is often followed by
* <a href="reference_resliceRadial">resliceRadial</a> (2)


### Usage in ImageJ macro
```
Ext.CLIJ2_resliceTop(Image source, Image destination);
```


### Usage in Java
```
// init CLIJ and GPU
import net.haesleinhuepf.clij2.CLIJ2;
import net.haesleinhuepf.clij.clearcl.ClearCLBuffer;
CLIJ2 clij2 = CLIJ2.getInstance();

// get input parameters
ClearCLBuffer source = clij2.push(sourceImagePlus);
destination = clij.create(new long[]{source.getWidth(), source.getDepth(), source.getHeight()}, source.getNativeType());
```

```
// Execute operation on GPU
clij2.resliceTop(clij, source, destination);
```

```
//show result
destinationImagePlus = clij2.pull(destination);
destinationImagePlus.show();

// cleanup memory on GPU
clij2.release(source);
clij2.release(destination);
```




### Example notebooks
<a href="https://clij.github.io/clij2-docs/md/drosophila_max_cylinder_projection"><img src="images/language_macro.png" height="20"/></a> [drosophila_max_cylinder_projection](https://clij.github.io/clij2-docs/md/drosophila_max_cylinder_projection)  




### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/drosophila_max_cylinder_projection.ijm"><img src="images/language_macro.png" height="20"/></a> [drosophila_max_cylinder_projection.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/drosophila_max_cylinder_projection.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/jython/interactiveCylinderProjection.py"><img src="images/language_jython.png" height="20"/></a> [interactiveCylinderProjection.py](https://github.com/clij/clij2-docs/blob/master/src/main/jython/interactiveCylinderProjection.py)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/jython/interactiveSphereProjection.py"><img src="images/language_jython.png" height="20"/></a> [interactiveSphereProjection.py](https://github.com/clij/clij2-docs/blob/master/src/main/jython/interactiveSphereProjection.py)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

## getSize
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/>

Reads out the size of an image [stack] and writes it to the results table in the columns 'Width', 'Height' and 'Depth'.

DEPRECATED: Thie method is <b>deprecated</b>. Use getDimensions instead.

### Usage in ImageJ macro
```
Ext.CLIJ2_getSize(Image source);
```


### Usage in Java
```
// init CLIJ and GPU
import net.haesleinhuepf.clij2.CLIJ2;
import net.haesleinhuepf.clij.clearcl.ClearCLBuffer;
CLIJ2 clij2 = CLIJ2.getInstance();

// get input parameters
ClearCLBuffer source = clij2.push(sourceImagePlus);
```

```
// Execute operation on GPU
long[] resultGetSize = clij2.getSize(clij, source);
```

```
//show result
System.out.println(resultGetSize);

// cleanup memory on GPU
clij2.release(source);
```




### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/allocateBig2DImages.ijm"><img src="images/language_macro.png" height="20"/></a> [allocateBig2DImages.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/allocateBig2DImages.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/customOperation.ijm"><img src="images/language_macro.png" height="20"/></a> [customOperation.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/customOperation.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/getsize.ijm"><img src="images/language_macro.png" height="20"/></a> [getsize.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/getsize.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/meshTouchingNeighbors.ijm"><img src="images/language_macro.png" height="20"/></a> [meshTouchingNeighbors.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/meshTouchingNeighbors.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/mesh_closest_points.ijm"><img src="images/language_macro.png" height="20"/></a> [mesh_closest_points.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/mesh_closest_points.ijm)  
<a href="https://github.com/clij/clijpy/blob/master/python/spot_detection.py"><img src="images/language_python.png" height="20"/></a> [spot_detection.py](https://github.com/clij/clijpy/blob/master/python/spot_detection.py)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

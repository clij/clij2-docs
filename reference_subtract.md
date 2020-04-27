## subtract
<img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/>

Subtracts one image X from another image Y pixel wise.

<pre>f(x, y) = x - y</pre>

### Usage in ImageJ macro
```
Ext.CLIJ2_subtract(Image subtrahend, Image minuend, Image destination);
```


### Usage in Matlab
```
// init CLIJ and GPU
clij2 = init_clatlab();

% get input parameters
subtrahend = clij2.pushMat(subtrahend);
minuend = clij2.pushMat(minuend);
destination = clij2.create(subtrahend);
```

```
% Execute operation on GPU
clij2.subtract(clij, subtrahend, minuend, destination);
```

```
% show result
destination = clij2.pullMat(destination)

% cleanup memory on GPU
clij2.release(subtrahend);
clij2.release(minuend);
clij2.release(destination);
```


### Usage in Java
```
// init CLIJ and GPU
import net.haesleinhuepf.clij2.CLIJ2;
import net.haesleinhuepf.clij.clearcl.ClearCLBuffer;
CLIJ2 clij2 = CLIJ2.getInstance();

// get input parameters
ClearCLBuffer subtrahend = clij2.push(subtrahendImagePlus);
ClearCLBuffer minuend = clij2.push(minuendImagePlus);
destination = clij2.create(subtrahend);
```

```
// Execute operation on GPU
clij2.subtract(clij, subtrahend, minuend, destination);
```

```
//show result
destinationImagePlus = clij2.pull(destination);
destinationImagePlus.show();

// cleanup memory on GPU
clij2.release(subtrahend);
clij2.release(minuend);
clij2.release(destination);
```




### Example notebooks
<a href="https://clij.github.io/clij2-docs/md/binary_processing"><img src="images/language_macro.png" height="20"/></a> [binary_processing](https://clij.github.io/clij2-docs/md/binary_processing)  




### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/backgroundSubtraction.ijm"><img src="images/language_macro.png" height="20"/></a> [backgroundSubtraction.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/backgroundSubtraction.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/binary_processing.ijm"><img src="images/language_macro.png" height="20"/></a> [binary_processing.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/binary_processing.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/topHat.ijm"><img src="images/language_macro.png" height="20"/></a> [topHat.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/topHat.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/workflow.ijm"><img src="images/language_macro.png" height="20"/></a> [workflow.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/workflow.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/jython/interactiveCylinderProjection.py"><img src="images/language_jython.png" height="20"/></a> [interactiveCylinderProjection.py](https://github.com/clij/clij2-docs/blob/master/src/main/jython/interactiveCylinderProjection.py)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/jython/interactiveSphereProjection.py"><img src="images/language_jython.png" height="20"/></a> [interactiveSphereProjection.py](https://github.com/clij/clij2-docs/blob/master/src/main/jython/interactiveSphereProjection.py)  
<a href="https://github.com/clij/clijpy/blob/master/python/spot_detection.py"><img src="images/language_python.png" height="20"/></a> [spot_detection.py](https://github.com/clij/clijpy/blob/master/python/spot_detection.py)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

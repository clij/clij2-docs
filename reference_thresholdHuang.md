## thresholdHuang
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/>

By Robert Haase based on work by G. Landini and W. Rasband

The automatic thresholder utilizes the Huang threshold method implemented in ImageJ using a histogram determined on 
the GPU to create binary images as similar as possible to ImageJ 'Apply Threshold' method.

### thresholdHuang is often followed by
* <a href="reference_getBoundingBox">getBoundingBox</a> (2)


### Usage in ImageJ macro
```
Ext.CLIJ2_thresholdHuang(Image input, ByRef Image destination);
```


### Usage in Matlab
```
// init CLIJ and GPU
clij2 = init_clatlab();

% get input parameters
input = clij2.pushMat(input);
destination = clij2.create(input);
```

```
% Execute operation on GPU
clij2.thresholdHuang(clij, input, destination);
```

```
% show result
destination = clij2.pullMat(destination)

% cleanup memory on GPU
clij2.release(input);
clij2.release(destination);
```


### Usage in Java
```
// init CLIJ and GPU
import net.haesleinhuepf.clij2.CLIJ2;
import net.haesleinhuepf.clij.clearcl.ClearCLBuffer;
CLIJ2 clij2 = CLIJ2.getInstance();

// get input parameters
ClearCLBuffer input = clij2.push(inputImagePlus);
destination = clij2.create(input);
```

```
// Execute operation on GPU
clij2.thresholdHuang(clij, input, destination);
```

```
//show result
destinationImagePlus = clij2.pull(destination);
destinationImagePlus.show();

// cleanup memory on GPU
clij2.release(input);
clij2.release(destination);
```




### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/getBoundingBox.ijm"><img src="images/language_macro.png" height="20"/></a> [getBoundingBox.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/getBoundingBox.ijm)  




### License terms
The code for the automatic thresholding methods originates from https://github.com/imagej/imagej1/blob/master/ij/process/AutoThresholder.java  
  
Detailed documentation on the implemented methods can be found online: https://imagej.net/Auto_Threshold

[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

## subtractBackground
<img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/>

Applies Gaussian blur to the input image and subtracts the result from the original image.

### Usage in ImageJ macro
```
Ext.CLIJx_subtractBackground(Image input, ByRef Image destination, Number sigmaX, Number sigmaY);
```


### Usage in Java
```
// init CLIJ and GPU
import net.haesleinhuepf.clijx.CLIJx;
import net.haesleinhuepf.clij.clearcl.ClearCLBuffer;
CLIJx clijx = CLIJx.getInstance();

// get input parameters
ClearCLBuffer input = clijx.push(inputImagePlus);
destination = clij.create(input);
float sigmaX = 1.0;
float sigmaY = 2.0;
```

```
// Execute operation on GPU
clijx.subtractBackground(clij, input, destination, sigmaX, sigmaY);
```

```
//show result
destinationImagePlus = clijx.pull(destination);
destinationImagePlus.show();

// cleanup memory on GPU
clijx.release(input);
clijx.release(destination);
```




### Example scripts
<a href="https://github.com/clij/clijpy/blob/master/python/spot_detection.py"><img src="images/language_python.png" height="20"/></a> [spot_detection.py](https://github.com/clij/clijpy/blob/master/python/spot_detection.py)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

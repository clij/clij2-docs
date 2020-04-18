## deformableRegistration2D
<img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_clijx_logo.png"/>

Applies particle image velocimetry to two images and registers them afterwards by warping input image 2 with a smoothed vector field.

### Usage in ImageJ macro
```
Ext.CLIJx_deformableRegistration2D(Image input1, Image input2, ByRef Image destination, Number maxDeltaX, Number maxDeltaY);
```


### Usage in Java
```
// init CLIJ and GPU
import net.haesleinhuepf.clijx.CLIJx;
import net.haesleinhuepf.clij.clearcl.ClearCLBuffer;
CLIJx clijx = CLIJx.getInstance();

// get input parameters
ClearCLBuffer input1 = clijx.push(input1ImagePlus);
ClearCLBuffer input2 = clijx.push(input2ImagePlus);
destination = clij.create(input1);
int maxDeltaX = 10;
int maxDeltaY = 20;
```

```
// Execute operation on GPU
clijx.deformableRegistration2D(clij, input1, input2, destination, maxDeltaX, maxDeltaY);
```

```
//show result
destinationImagePlus = clijx.pull(destination);
destinationImagePlus.show();

// cleanup memory on GPU
clijx.release(input1);
clijx.release(input2);
clijx.release(destination);
```


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

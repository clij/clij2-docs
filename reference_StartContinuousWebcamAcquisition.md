## startContinuousWebcamAcquisition
<img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_clijx_logo.png"/>

Starts acquistion of images from a webcam.

### Usage in ImageJ macro
```
Ext.CLIJx_startContinuousWebcamAcquisition(Number cameraDeviceIndex, Number imageWidth, Number imageHeight);
```


### Usage in Java
```
// init CLIJ and GPU
import net.haesleinhuepf.clijx.CLIJx;
import net.haesleinhuepf.clij.clearcl.ClearCLBuffer;
CLIJx clijx = CLIJx.getInstance();

// get input parameters
int cameraDeviceIndex = 10;
int imageWidth = 20;
int imageHeight = 30;
```

```
// Execute operation on GPU
clijx.startContinuousWebcamAcquisition(clij, cameraDeviceIndex, imageWidth, imageHeight);
```

```
//show result

// cleanup memory on GPU
```


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

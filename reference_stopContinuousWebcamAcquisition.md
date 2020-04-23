## stopContinuousWebcamAcquisition
<img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_clijx_logo.png"/>

Stops continous acquistion from a webcam.

### Usage in ImageJ macro
```
Ext.CLIJx_stopContinuousWebcamAcquisition(Number cameraDeviceIndex);
```


### Usage in Java
```
// init CLIJ and GPU
import net.haesleinhuepf.clijx.CLIJx;
import net.haesleinhuepf.clij.clearcl.ClearCLBuffer;
CLIJx clijx = CLIJx.getInstance();

// get input parameters
int cameraDeviceIndex = 10;
```

```
// Execute operation on GPU
clijx.stopContinuousWebcamAcquisition(clij, cameraDeviceIndex);
```

```
//show result

// cleanup memory on GPU
```


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

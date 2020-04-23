## captureWebcamImage
<img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_clijx_logo.png"/>

Acquires an image (in fact an RGB image stack with three slices) of given size using a webcam. 

It uses the webcam-capture library by Bartosz Firyn.https://github.com/sarxos/webcam-capture

### Usage in ImageJ macro
```
Ext.CLIJx_captureWebcamImage(ByRef Image destination, Number cameraDeviceIndex, Number imageWidth, Number imageHeight);
```


### Usage in Java
```
// init CLIJ and GPU
import net.haesleinhuepf.clijx.CLIJx;
import net.haesleinhuepf.clij.clearcl.ClearCLBuffer;
CLIJx clijx = CLIJx.getInstance();

// get input parameters
destination = clij.create();
int cameraDeviceIndex = 10;
int imageWidth = 20;
int imageHeight = 30;
```

```
// Execute operation on GPU
clijx.captureWebcamImage(clij, destination, cameraDeviceIndex, imageWidth, imageHeight);
```

```
//show result
destinationImagePlus = clijx.pull(destination);
destinationImagePlus.show();

// cleanup memory on GPU
clijx.release(destination);
```


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

## captureWebcamImage
<img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_clijx_logo.png"/>

Acquires an image (in fact an RGB image stack with three slices) of given size using a webcam. It uses the webcam-capture library by Bartosz Firyn.https://github.com/sarxos/webcam-capture

### Usage in ImageJ macro
```
Ext.CLIJx_captureWebcamImage(ByRef Image destination, Number cameraDeviceIndex, Number imageWidth, Number imageHeight);
```


### Usage in Java
```
// init CLIJ and GPU
import net.haesleinhuepf.clij2.CLIJ2;
import net.haesleinhuepf.clij.clearcl.ClearCLBuffer;
CLIJ2 clij2 = CLIJ2.getInstance();

// get input parameters
destination = clij.create();
int cameraDeviceIndex = 10;
int imageWidth = 20;
int imageHeight = 30;
```

```
// Execute operation on GPU
clij2.captureWebcamImage(clij, destination, cameraDeviceIndex, imageWidth, imageHeight);
```

```
//show result
destinationImagePlus = clij2.pull(destination);
destinationImagePlus.show();

// cleanup memory on GPU
clij2.release(destination);
```




### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/interactive_webcam_acquisition.ijm"><img src="images/language_macro.png" height="20"/></a> [interactive_webcam_acquisition.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/interactive_webcam_acquisition.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/interactive_webcam_acquisition_analysis.ijm"><img src="images/language_macro.png" height="20"/></a> [interactive_webcam_acquisition_analysis.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/interactive_webcam_acquisition_analysis.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/interactive_webcam_acquisition_analysis_area.ijm"><img src="images/language_macro.png" height="20"/></a> [interactive_webcam_acquisition_analysis_area.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/interactive_webcam_acquisition_analysis_area.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/interactive_webcam_acquisition_move_rect.ijm"><img src="images/language_macro.png" height="20"/></a> [interactive_webcam_acquisition_move_rect.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/interactive_webcam_acquisition_move_rect.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/interactive_webcam_acquisition_stripe_analysis.ijm"><img src="images/language_macro.png" height="20"/></a> [interactive_webcam_acquisition_stripe_analysis.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/interactive_webcam_acquisition_stripe_analysis.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/webcamCapture.ijm"><img src="images/language_macro.png" height="20"/></a> [webcamCapture.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/webcamCapture.ijm)  


[Back to CLIJ documentation](https://clij.github.io/)

[Imprint](https://clij.github.io/imprint)

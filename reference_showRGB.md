## showRGB
<img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_clijx_logo.png"/>

Visualises three 2D images as one RGB image

### Usage in ImageJ macro
```
Ext.CLIJx_showRGB(Image red, Image green, Image blue, String title);
```


### Usage in Java
```
// init CLIJ and GPU
import net.haesleinhuepf.clijx.CLIJx;
import net.haesleinhuepf.clij.clearcl.ClearCLBuffer;
CLIJx clijx = CLIJx.getInstance();

// get input parameters
ClearCLBuffer red = clijx.push(redImagePlus);
ClearCLBuffer green = clijx.push(greenImagePlus);
ClearCLBuffer blue = clijx.push(blueImagePlus);
```

```
// Execute operation on GPU
clijx.showRGB(clij, red, green, blue, title);
```

```
//show result

// cleanup memory on GPU
clijx.release(red);
clijx.release(green);
clijx.release(blue);
```




### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/interactive_webcam_acquisition.ijm"><img src="images/language_macro.png" height="20"/></a> [interactive_webcam_acquisition.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/interactive_webcam_acquisition.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/interactive_webcam_acquisition_analysis.ijm"><img src="images/language_macro.png" height="20"/></a> [interactive_webcam_acquisition_analysis.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/interactive_webcam_acquisition_analysis.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/interactive_webcam_acquisition_analysis_area.ijm"><img src="images/language_macro.png" height="20"/></a> [interactive_webcam_acquisition_analysis_area.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/interactive_webcam_acquisition_analysis_area.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/interactive_webcam_acquisition_move_rect.ijm"><img src="images/language_macro.png" height="20"/></a> [interactive_webcam_acquisition_move_rect.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/interactive_webcam_acquisition_move_rect.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/interactive_webcam_acquisition_stripe_analysis.ijm"><img src="images/language_macro.png" height="20"/></a> [interactive_webcam_acquisition_stripe_analysis.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/interactive_webcam_acquisition_stripe_analysis.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/showRGB.ijm"><img src="images/language_macro.png" height="20"/></a> [showRGB.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/showRGB.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/showRGB_x.ijm"><img src="images/language_macro.png" height="20"/></a> [showRGB_x.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/showRGB_x.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/jython/jaccardIndex.py"><img src="images/language_jython.png" height="20"/></a> [jaccardIndex.py](https://github.com/clij/clij2-docs/blob/master/src/main/jython/jaccardIndex.py)  


[Back to CLIJ documentation](https://clij.github.io/)

[Imprint](https://clij.github.io/imprint)

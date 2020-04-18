## showGlasbeyOnGrey
<img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_clijx_logo.png"/>

Visualises two 2D images as one RGB image. 

The first channel is shown in grey, the second with glasbey LUT.

### Usage in ImageJ macro
```
Ext.CLIJx_showGlasbeyOnGrey(Image red, Image labelling, String title);
```


### Usage in Java
```
// init CLIJ and GPU
import net.haesleinhuepf.clijx.CLIJx;
import net.haesleinhuepf.clij.clearcl.ClearCLBuffer;
CLIJx clijx = CLIJx.getInstance();

// get input parameters
ClearCLBuffer red = clijx.push(redImagePlus);
ClearCLBuffer labelling = clijx.push(labellingImagePlus);
```

```
// Execute operation on GPU
clijx.showGlasbeyOnGrey(clij, red, labelling, title);
```

```
//show result

// cleanup memory on GPU
clijx.release(red);
clijx.release(labelling);
```


[Back to CLIJ documentation](https://clij.github.io/)

[Imprint](https://clij.github.io/imprint)

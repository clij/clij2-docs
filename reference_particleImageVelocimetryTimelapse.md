## particleImageVelocimetryTimelapse
<img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_clijx_logo.png"/>

Run particle image velocimetry on a 2D+t timelapse.

### Usage in ImageJ macro
```
Ext.CLIJx_particleImageVelocimetryTimelapse(Image source, Image destinationDeltaX, Image destinationDeltaY, Image destinationDeltaZ, Number maxDeltaX, Number maxDeltaY, Number maxDeltaZ, Boolean correctLocalShift);
```


### Usage in Java
```
// init CLIJ and GPU
import net.haesleinhuepf.clijx.CLIJx;
import net.haesleinhuepf.clij.clearcl.ClearCLBuffer;
CLIJx clijx = CLIJx.getInstance();

// get input parameters
ClearCLBuffer source = clijx.push(sourceImagePlus);
destinationDeltaX = clij.create(source);
destinationDeltaY = clij.create(source);
destinationDeltaZ = clij.create(source);
int maxDeltaX = 10;
int maxDeltaY = 20;
int maxDeltaZ = 30;
boolean correctLocalShift = true;
```

```
// Execute operation on GPU
clijx.particleImageVelocimetryTimelapse(clij, source, destinationDeltaX, destinationDeltaY, destinationDeltaZ, maxDeltaX, maxDeltaY, maxDeltaZ, correctLocalShift);
```

```
//show result
destinationDeltaXImagePlus = clijx.pull(destinationDeltaX);
destinationDeltaXImagePlus.show();
destinationDeltaYImagePlus = clijx.pull(destinationDeltaY);
destinationDeltaYImagePlus.show();
destinationDeltaZImagePlus = clijx.pull(destinationDeltaZ);
destinationDeltaZImagePlus.show();

// cleanup memory on GPU
clijx.release(source);
clijx.release(destinationDeltaX);
clijx.release(destinationDeltaY);
clijx.release(destinationDeltaZ);
```


[Back to CLIJ documentation](https://clij.github.io/)

[Imprint](https://clij.github.io/imprint)

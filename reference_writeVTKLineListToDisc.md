## writeVTKLineListToDisc
<img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_clijx_logo.png"/>

Takes a point list image representing n points (n*2 for 2D points, n*3 for 3D points) and a corresponding touch matrix , sized (n+1)*(n+1), and exports them in VTK format.

### Usage in ImageJ macro
```
Ext.CLIJx_writeVTKLineListToDisc(Image pointlist, Image touch_matrix, String filename);
```


### Usage in Java
```
// init CLIJ and GPU
import net.haesleinhuepf.clijx.CLIJx;
import net.haesleinhuepf.clij.clearcl.ClearCLBuffer;
CLIJx clijx = CLIJx.getInstance();

// get input parameters
ClearCLBuffer pointlist = clijx.push(pointlistImagePlus);
ClearCLBuffer touch_matrix = clijx.push(touch_matrixImagePlus);
```

```
// Execute operation on GPU
clijx.writeVTKLineListToDisc(clij, pointlist, touch_matrix, filename);
```

```
//show result

// cleanup memory on GPU
clijx.release(pointlist);
clijx.release(touch_matrix);
```


[Back to CLIJ documentation](https://clij.github.io/)

[Imprint](https://clij.github.io/imprint)

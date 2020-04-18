## writeXYZPointListToDisc
<img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_clijx_logo.png"/>

Takes a point list image representing n points (n*2 for 2D points, n*3 for 3D points) and exports them in XYZ format.

### Usage in ImageJ macro
```
Ext.CLIJx_writeXYZPointListToDisc(Image pointlist, String filename);
```


### Usage in Java
```
// init CLIJ and GPU
import net.haesleinhuepf.clijx.CLIJx;
import net.haesleinhuepf.clij.clearcl.ClearCLBuffer;
CLIJx clijx = CLIJx.getInstance();

// get input parameters
ClearCLBuffer pointlist = clijx.push(pointlistImagePlus);
```

```
// Execute operation on GPU
clijx.writeXYZPointListToDisc(clij, pointlist, filename);
```

```
//show result

// cleanup memory on GPU
clijx.release(pointlist);
```


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

## stackToTiles
<img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_clijx_logo.png"/>

Stack to tiles.

### Usage in ImageJ macro
```
Ext.CLIJx_stackToTiles(Image source, ByRef Image destination, Number tiles_x, Number tiles_y);
```


### Usage in Java
```
// init CLIJ and GPU
import net.haesleinhuepf.clijx.CLIJx;
import net.haesleinhuepf.clij.clearcl.ClearCLBuffer;
CLIJx clijx = CLIJx.getInstance();

// get input parameters
ClearCLBuffer source = clijx.push(sourceImagePlus);
destination = clij.create(source);
int tiles_x = 10;
int tiles_y = 20;
```

```
// Execute operation on GPU
clijx.stackToTiles(clij, source, destination, tiles_x, tiles_y);
```

```
//show result
destinationImagePlus = clijx.pull(destination);
destinationImagePlus.show();

// cleanup memory on GPU
clijx.release(source);
clijx.release(destination);
```


[Back to CLIJ documentation](https://clij.github.io/)

[Imprint](https://clij.github.io/imprint)

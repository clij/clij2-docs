## organiseWindows
<img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_clijx_logo.png"/>

Organises windows on screen.

### Usage in ImageJ macro
```
Ext.CLIJx_organiseWindows(Number startX, Number startY, Number tilesX, Number tilesY, Number tileWidth, Number tileHeight);
```


### Usage in Java
```
// init CLIJ and GPU
import net.haesleinhuepf.clijx.CLIJx;
import net.haesleinhuepf.clij.clearcl.ClearCLBuffer;
CLIJx clijx = CLIJx.getInstance();

// get input parameters
int startX = 10;
int startY = 20;
int tilesX = 30;
int tilesY = 40;
int tileWidth = 50;
int tileHeight = 60;
```

```
// Execute operation on GPU
clijx.organiseWindows(clij, startX, startY, tilesX, tilesY, tileWidth, tileHeight);
```

```
//show result

// cleanup memory on GPU
```


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

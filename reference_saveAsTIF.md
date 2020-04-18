## saveAsTIF
<img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_clijx_logo.png"/>

Pulls an image from the GPU memory and saves it as TIF to disc.

### Usage in ImageJ macro
```
Ext.CLIJx_saveAsTIF(Image input, String filename);
```


### Usage in Java
```
// init CLIJ and GPU
import net.haesleinhuepf.clijx.CLIJx;
import net.haesleinhuepf.clij.clearcl.ClearCLBuffer;
CLIJx clijx = CLIJx.getInstance();

// get input parameters
ClearCLBuffer input = clijx.push(inputImagePlus);
```

```
// Execute operation on GPU
clijx.saveAsTIF(clij, input, filename);
```

```
//show result

// cleanup memory on GPU
clijx.release(input);
```


[Back to CLIJ documentation](https://clij.github.io/)

[Imprint](https://clij.github.io/imprint)

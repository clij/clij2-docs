## showGrey
<img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_clijx_logo.png"/>

Visualises a single 2D image.

### Usage in ImageJ macro
```
Ext.CLIJx_showGrey(Image input, String title);
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
ImagePlus resultShowGrey = clijx.showGrey(clij, input, title);
```

```
//show result
System.out.println(resultShowGrey);

// cleanup memory on GPU
clijx.release(input);
```


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

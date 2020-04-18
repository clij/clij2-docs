## translationTimelapseRegistration
<img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_clijx_logo.png"/>

Applies 2D translation registration to every pair of t, t+1 slices of a 2D+t image stack.

### Usage in ImageJ macro
```
Ext.CLIJx_translationTimelapseRegistration(Image input, ByRef Image output);
```


### Usage in Java
```
// init CLIJ and GPU
import net.haesleinhuepf.clijx.CLIJx;
import net.haesleinhuepf.clij.clearcl.ClearCLBuffer;
CLIJx clijx = CLIJx.getInstance();

// get input parameters
ClearCLBuffer input = clijx.push(inputImagePlus);
output = clij.create(input);
```

```
// Execute operation on GPU
clijx.translationTimelapseRegistration(clij, input, output);
```

```
//show result
outputImagePlus = clijx.pull(output);
outputImagePlus.show();

// cleanup memory on GPU
clijx.release(input);
clijx.release(output);
```


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

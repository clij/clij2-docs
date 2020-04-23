## watershed
<img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_clijx_logo.png"/>

Apply a binary watershed to a binary image and introduces black pixels between objects.

### Usage in ImageJ macro
```
Ext.CLIJx_watershed(Image binary_source, ByRef Image destination);
```


### Usage in Java
```
// init CLIJ and GPU
import net.haesleinhuepf.clijx.CLIJx;
import net.haesleinhuepf.clij.clearcl.ClearCLBuffer;
CLIJx clijx = CLIJx.getInstance();

// get input parameters
ClearCLBuffer binary_source = clijx.push(binary_sourceImagePlus);
destination = clij.create(binary_source);
```

```
// Execute operation on GPU
clijx.watershed(clij, binary_source, destination);
```

```
//show result
destinationImagePlus = clijx.pull(destination);
destinationImagePlus.show();

// cleanup memory on GPU
clijx.release(binary_source);
clijx.release(destination);
```


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

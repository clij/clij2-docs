## absoluteInplace
<img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_clijx_logo.png"/>

Computes the absolute value of every individual pixel x in a given image.

<pre>f(x) = |x| </pre>

### Usage in ImageJ macro
```
Ext.CLIJx_absoluteInplace(Image source_destination);
```


### Usage in Java
```
// init CLIJ and GPU
import net.haesleinhuepf.clijx.CLIJx;
import net.haesleinhuepf.clij.clearcl.ClearCLBuffer;
CLIJx clijx = CLIJx.getInstance();

// get input parameters
source_destination = clij.create();
```

```
// Execute operation on GPU
clijx.absoluteInplace(clij, source_destination);
```

```
//show result
source_destinationImagePlus = clijx.pull(source_destination);
source_destinationImagePlus.show();

// cleanup memory on GPU
clijx.release(source_destination);
```


[Back to CLIJ documentation](https://clij.github.io/)

[Imprint](https://clij.github.io/imprint)

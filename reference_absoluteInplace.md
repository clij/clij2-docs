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
import net.haesleinhuepf.clij2.CLIJ2;
import net.haesleinhuepf.clij.clearcl.ClearCLBuffer;
CLIJ2 clij2 = CLIJ2.getInstance();

// get input parameters
source_destination = clij.create();
```

```
// Execute operation on GPU
clij2.absoluteInplace(clij, source_destination);
```

```
//show result
source_destinationImagePlus = clij2.pull(source_destination);
source_destinationImagePlus.show();

// cleanup memory on GPU
clij2.release(source_destination);
```


[Back to CLIJ documentation](https://clij.github.io/)

[Imprint](https://clij.github.io/imprint)

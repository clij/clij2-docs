## meanZProjectionBounded
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/>

Determines the mean projection of an image along Z within a given z range.

### Usage in ImageJ macro
```
Ext.CLIJ2_meanZProjectionBounded(Image source, ByRef Image destination_mean, Number min_z, Number max_z);
```


### Usage in Java
```
// init CLIJ and GPU
import net.haesleinhuepf.clij2.CLIJ2;
import net.haesleinhuepf.clij.clearcl.ClearCLBuffer;
CLIJ2 clij2 = CLIJ2.getInstance();

// get input parameters
ClearCLBuffer source = clij2.push(sourceImagePlus);
destination_mean = clij.create(source);
int min_z = 10;
int max_z = 20;
```

```
// Execute operation on GPU
clij2.meanZProjectionBounded(clij, source, destination_mean, min_z, max_z);
```

```
//show result
destination_meanImagePlus = clij2.pull(destination_mean);
destination_meanImagePlus.show();

// cleanup memory on GPU
clij2.release(source);
clij2.release(destination_mean);
```


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

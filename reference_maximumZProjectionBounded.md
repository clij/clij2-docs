## maximumZProjectionBounded
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/>

Determines the maximum projection of an image along Z within a given z range.

### Usage in ImageJ macro
```
Ext.CLIJ2_maximumZProjectionBounded(Image source, ByRef Image destination_max, Number min_z, Number max_z);
```


### Usage in Java
```
// init CLIJ and GPU
import net.haesleinhuepf.clij2.CLIJ2;
import net.haesleinhuepf.clij.clearcl.ClearCLBuffer;
CLIJ2 clij2 = CLIJ2.getInstance();

// get input parameters
ClearCLBuffer source = clij2.push(sourceImagePlus);
destination_max = clij.create(source);
int min_z = 10;
int max_z = 20;
```

```
// Execute operation on GPU
clij2.maximumZProjectionBounded(clij, source, destination_max, min_z, max_z);
```

```
//show result
destination_maxImagePlus = clij2.pull(destination_max);
destination_maxImagePlus.show();

// cleanup memory on GPU
clij2.release(source);
clij2.release(destination_max);
```




### Example notebooks
<a href="https://clij.github.io/clij2-docs/md/maximumProjection"><img src="images/language_macro.png" height="20"/></a> [maximumProjection](https://clij.github.io/clij2-docs/md/maximumProjection)  




### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/maximumProjection.ijm"><img src="images/language_macro.png" height="20"/></a> [maximumProjection.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/maximumProjection.ijm)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

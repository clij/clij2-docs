## maximumXYZProjection
![Image](images/mini_clij1_logo.png)

Determines the maximum projection of an image along a given dimension. Furthermore, the X and Y
 dimesions of the resulting image must be specified by the user according to its definition:
X = 0
Y = 1
Z = 2


### Usage in ImageJ macro
```
Ext.CLIJ_maximumXYZProjection(Image source, Image destination_max, Number dimensionX, Number dimensionY, Number projectedDimension);
```


### Usage in Java
```
// init CLIJ and GPU
import net.haesleinhuepf.clijx.CLIJx;
import net.haesleinhuepf.clij.clearcl.ClearCLBuffer;
CLIJx clijx = CLIJx.getInstance();

// get input parameters
ClearCLBuffer source = clijx.push(sourceImagePlus);
destination_max = clij.create(new long[]{source.getWidth(), source.getHeight()}, source.getNativeType());
int dimensionX = 10;
int dimensionY = 20;
int projectedDimension = 30;
```

```
// Execute operation on GPU
clijx.maximumXYZProjection(clij, source, destination_max, dimensionX, dimensionY, projectedDimension);
```

```
//show result
destination_maxImagePlus = clijx.pull(destination_max);
destination_maxImagePlus.show();

// cleanup memory on GPU
clijx.release(source);
clijx.release(destination_max);
```


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

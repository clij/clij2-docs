## minimumZProjectionBounded
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/>

Determines the minimum projection of an image along Z within a given z range.

### Usage in ImageJ macro
```
Ext.CLIJ2_minimumZProjectionBounded(Image source, ByRef Image destination_min, Number min_z, Number max_z);
```


### Usage in Matlab
```
// init CLIJ and GPU
clij2 = init_clatlab();

% get input parameters
source = clij2.pushMat(source);
destination_min = clij2.create(source);
min_z = 10;
max_z = 20;
```

```
% Execute operation on GPU
clij2.minimumZProjectionBounded(clij, source, destination_min, min_z, max_z);
```

```
% show result
destination_min = clij2.pullMat(destination_min)

% cleanup memory on GPU
clij2.release(source);
clij2.release(destination_min);
```


### Usage in Java
```
// init CLIJ and GPU
import net.haesleinhuepf.clij2.CLIJ2;
import net.haesleinhuepf.clij.clearcl.ClearCLBuffer;
CLIJ2 clij2 = CLIJ2.getInstance();

// get input parameters
ClearCLBuffer source = clij2.push(sourceImagePlus);
destination_min = clij2.create(source);
int min_z = 10;
int max_z = 20;
```

```
// Execute operation on GPU
clij2.minimumZProjectionBounded(clij, source, destination_min, min_z, max_z);
```

```
//show result
destination_minImagePlus = clij2.pull(destination_min);
destination_minImagePlus.show();

// cleanup memory on GPU
clij2.release(source);
clij2.release(destination_min);
```


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

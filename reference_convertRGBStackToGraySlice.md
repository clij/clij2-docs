## convertRGBStackToGraySlice
<img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_clijx_logo.png"/>

Converts a three channel image (stack with three slices) to a single channel image (2D image) by multiplying with factors 0.299, 0.587, 0.114.

### Usage in ImageJ macro
```
Ext.CLIJx_convertRGBStackToGraySlice(Image stack_source, ByRef Image slice_destination);
```


### Usage in Java
```
// init CLIJ and GPU
import net.haesleinhuepf.clijx.CLIJx;
import net.haesleinhuepf.clij.clearcl.ClearCLBuffer;
CLIJx clijx = CLIJx.getInstance();

// get input parameters
ClearCLBuffer stack_source = clijx.push(stack_sourceImagePlus);
slice_destination = clij.create(stack_source);
```

```
// Execute operation on GPU
clijx.convertRGBStackToGraySlice(clij, stack_source, slice_destination);
```

```
//show result
slice_destinationImagePlus = clijx.pull(slice_destination);
slice_destinationImagePlus.show();

// cleanup memory on GPU
clijx.release(stack_source);
clijx.release(slice_destination);
```


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

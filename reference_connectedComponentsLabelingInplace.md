## connectedComponentsLabelingInplace
<img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_clijx_logo.png"/>

Performs connected components analysis to a binary image and generates a label map.

### Usage in ImageJ macro
```
Ext.CLIJx_connectedComponentsLabelingInplace(Image binary_source_labeling_destination);
```


### Usage in Java
```
// init CLIJ and GPU
import net.haesleinhuepf.clijx.CLIJx;
import net.haesleinhuepf.clij.clearcl.ClearCLBuffer;
CLIJx clijx = CLIJx.getInstance();

// get input parameters
binary_source_labeling_destination = clij.create();
```

```
// Execute operation on GPU
clijx.connectedComponentsLabelingInplace(clij, binary_source_labeling_destination);
```

```
//show result
binary_source_labeling_destinationImagePlus = clijx.pull(binary_source_labeling_destination);
binary_source_labeling_destinationImagePlus.show();

// cleanup memory on GPU
clijx.release(binary_source_labeling_destination);
```


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

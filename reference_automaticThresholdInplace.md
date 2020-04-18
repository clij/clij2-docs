## automaticThresholdInplace
<img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_clijx_logo.png"/>

The automatic thresholder utilizes the threshold methods from ImageJ on a histogram determined on 
the GPU to create binary images as similar as possible to ImageJ 'Apply Threshold' method. Enter one 
of these methods in the method text field:
[Default, Huang, Intermodes, IsoData, IJ_IsoData, Li, MaxEntropy, Mean, MinError, Minimum, Moments, Otsu, Percentile, RenyiEntropy, Shanbhag, Triangle, Yen]

### Usage in ImageJ macro
```
Ext.CLIJx_automaticThresholdInplace(Image input_and_destination, String method);
```


### Usage in Java
```
// init CLIJ and GPU
import net.haesleinhuepf.clijx.CLIJx;
import net.haesleinhuepf.clij.clearcl.ClearCLBuffer;
CLIJx clijx = CLIJx.getInstance();

// get input parameters
input_and_destination = clij.create();
```

```
// Execute operation on GPU
clijx.automaticThresholdInplace(clij, input_and_destination, method);
```

```
//show result
input_and_destinationImagePlus = clijx.pull(input_and_destination);
input_and_destinationImagePlus.show();

// cleanup memory on GPU
clijx.release(input_and_destination);
```


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

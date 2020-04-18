## pullLabelsToROIManager
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/>

Pulls all labels in a label map as ROIs to the ROI manager.

### Usage in ImageJ macro
```
Ext.CLIJ2_pullLabelsToROIManager(Image labelmap_input);
```


### Usage in Java
```
// init CLIJ and GPU
import net.haesleinhuepf.clij2.CLIJ2;
import net.haesleinhuepf.clij.clearcl.ClearCLBuffer;
CLIJ2 clij2 = CLIJ2.getInstance();

// get input parameters
ClearCLBuffer labelmap_input = clij2.push(labelmap_inputImagePlus);
```

```
// Execute operation on GPU
clij2.pullLabelsToROIManager(clij, labelmap_input);
```

```
//show result

// cleanup memory on GPU
clij2.release(labelmap_input);
```




### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/pullLabelsToROIManager.ijm"><img src="images/language_macro.png" height="20"/></a> [pullLabelsToROIManager.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/pullLabelsToROIManager.ijm)  


[Back to CLIJ documentation](https://clij.github.io/)

[Imprint](https://clij.github.io/imprint)

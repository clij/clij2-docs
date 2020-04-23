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




### Example notebooks
<a href="https://clij.github.io/clij2-docs/md/working_with_rois"><img src="images/language_macro.png" height="20"/></a> [working_with_rois](https://clij.github.io/clij2-docs/md/working_with_rois)  




### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/working_with_rois.ijm"><img src="images/language_macro.png" height="20"/></a> [working_with_rois.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/working_with_rois.ijm)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

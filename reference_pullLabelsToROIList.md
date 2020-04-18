## pullLabelsToROIList
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_empty_logo.png"/>

Pulls all labels in a label map as ROIs to a list. 

From ImageJ macro this list is written to the log 
window. From ImageJ macro conside using pullLabelsToROIManager.

### Usage in ImageJ macro
```
Ext.CLIJ2_pullLabelsToROIList(Image labelmap_input);
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
ArrayList resultPullLabelsToROIList = clij2.pullLabelsToROIList(clij, labelmap_input);
```

```
//show result
System.out.println(resultPullLabelsToROIList);

// cleanup memory on GPU
clij2.release(labelmap_input);
```


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

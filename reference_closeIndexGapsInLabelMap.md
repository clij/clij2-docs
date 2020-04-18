## closeIndexGapsInLabelMap
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/>

Analyses a label map and if there are gaps in the indexing (e.g. label 5 is not present) all 
subsequent labels will be relabelled. 

Thus, afterwards number of labels and maximum label index are equal.


### Usage in ImageJ macro
```
Ext.CLIJ2_closeIndexGapsInLabelMap(Image labeling_input, ByRef Image labeling_destination);
```


### Usage in Java
```
// init CLIJ and GPU
import net.haesleinhuepf.clij2.CLIJ2;
import net.haesleinhuepf.clij.clearcl.ClearCLBuffer;
CLIJ2 clij2 = CLIJ2.getInstance();

// get input parameters
ClearCLBuffer labeling_input = clij2.push(labeling_inputImagePlus);
labeling_destination = clij.create(labeling_input);
```

```
// Execute operation on GPU
clij2.closeIndexGapsInLabelMap(clij, labeling_input, labeling_destination);
```

```
//show result
labeling_destinationImagePlus = clij2.pull(labeling_destination);
labeling_destinationImagePlus.show();

// cleanup memory on GPU
clij2.release(labeling_input);
clij2.release(labeling_destination);
```


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

## excludeLabelsOnEdges
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/>

Removes all labels from a label map which touch the edges of the image (in X, Y and Z if the image is 3D). 

Remaining label elements are renumbered afterwards.

### excludeLabelsOnEdges often follows after
* <a href="reference_connectedComponentsLabelingBox">connectedComponentsLabelingBox</a> (2)


### Usage in ImageJ macro
```
Ext.CLIJ2_excludeLabelsOnEdges(Image label_map_input, ByRef Image label_map_destination);
```


### Usage in Matlab
```
// init CLIJ and GPU
clij2 = init_clatlab();

% get input parameters
label_map_input = clij2.pushMat(label_map_input);
label_map_destination = clij2.create(label_map_input);
```

```
% Execute operation on GPU
clij2.excludeLabelsOnEdges(clij, label_map_input, label_map_destination);
```

```
% show result
label_map_destination = clij2.pullMat(label_map_destination)

% cleanup memory on GPU
clij2.release(label_map_input);
clij2.release(label_map_destination);
```


### Usage in Java
```
// init CLIJ and GPU
import net.haesleinhuepf.clij2.CLIJ2;
import net.haesleinhuepf.clij.clearcl.ClearCLBuffer;
CLIJ2 clij2 = CLIJ2.getInstance();

// get input parameters
ClearCLBuffer label_map_input = clij2.push(label_map_inputImagePlus);
label_map_destination = clij2.create(label_map_input);
```

```
// Execute operation on GPU
clij2.excludeLabelsOnEdges(clij, label_map_input, label_map_destination);
```

```
//show result
label_map_destinationImagePlus = clij2.pull(label_map_destination);
label_map_destinationImagePlus.show();

// cleanup memory on GPU
clij2.release(label_map_input);
clij2.release(label_map_destination);
```




### Example notebooks
<a href="https://clij.github.io/clij2-docs/md/labeling"><img src="images/language_macro.png" height="20"/></a> [labeling](https://clij.github.io/clij2-docs/md/labeling)  




### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/excludeLabelsOnEdges.ijm"><img src="images/language_macro.png" height="20"/></a> [excludeLabelsOnEdges.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/excludeLabelsOnEdges.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/labeling.ijm"><img src="images/language_macro.png" height="20"/></a> [labeling.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/labeling.ijm)  
<a href="https://github.com/clij/clijpy/blob/master/python/benchmark_clijx_pull.ipynb"><img src="images/language_python.png" height="20"/></a> [benchmark_clijx_pull.ipynb](https://github.com/clij/clijpy/blob/master/python/benchmark_clijx_pull.ipynb)  
<a href="https://github.com/clij/clijpy/blob/master/python/clijpy_demo.ipynb"><img src="images/language_python.png" height="20"/></a> [clijpy_demo.ipynb](https://github.com/clij/clijpy/blob/master/python/clijpy_demo.ipynb)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

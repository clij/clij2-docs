## labelToMask
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/>

Masks a single label in a label map. 

Sets all pixels in the target image to 1, where the given label index was present in the label map. Other pixels are set to 0.

### Usage in ImageJ macro
```
Ext.CLIJ2_labelToMask(Image label_map_source, ByRef Image mask_destination, Number label_index);
```


### Usage in Matlab
```
// init CLIJ and GPU
clij2 = init_clatlab();

% get input parameters
label_map_source = clij2.pushMat(label_map_source);
mask_destination = clij2.create(label_map_source);
label_index = 1.0;
```

```
% Execute operation on GPU
clij2.labelToMask(clij, label_map_source, mask_destination, label_index);
```

```
% show result
mask_destination = clij2.pullMat(mask_destination)

% cleanup memory on GPU
clij2.release(label_map_source);
clij2.release(mask_destination);
```


### Usage in Java
```
// init CLIJ and GPU
import net.haesleinhuepf.clij2.CLIJ2;
import net.haesleinhuepf.clij.clearcl.ClearCLBuffer;
CLIJ2 clij2 = CLIJ2.getInstance();

// get input parameters
ClearCLBuffer label_map_source = clij2.push(label_map_sourceImagePlus);
mask_destination = clij2.create(label_map_source);
float label_index = 1.0;
```

```
// Execute operation on GPU
clij2.labelToMask(clij, label_map_source, mask_destination, label_index);
```

```
//show result
mask_destinationImagePlus = clij2.pull(mask_destination);
mask_destinationImagePlus.show();

// cleanup memory on GPU
clij2.release(label_map_source);
clij2.release(mask_destination);
```




### Example notebooks
<a href="https://clij.github.io/clij2-docs/md/working_with_rois"><img src="images/language_macro.png" height="20"/></a> [working_with_rois](https://clij.github.io/clij2-docs/md/working_with_rois)  




### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/boundingBoxes.ijm"><img src="images/language_macro.png" height="20"/></a> [boundingBoxes.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/boundingBoxes.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/center_of_mass.ijm"><img src="images/language_macro.png" height="20"/></a> [center_of_mass.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/center_of_mass.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/working_with_rois.ijm"><img src="images/language_macro.png" height="20"/></a> [working_with_rois.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/working_with_rois.ijm)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

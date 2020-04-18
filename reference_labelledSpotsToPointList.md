## labelledSpotsToPointList
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/>

Generates a coordinate list of points in a labelled spot image. 

Transforms a labelmap of spots (single pixels with values 1, 2, ..., n for n spots) as resulting 
from connected components analysis in an image where every column contains d 
pixels (with d = dimensionality of the original image) with the coordinates of the maxima/minima.

### labelledSpotsToPointList often follows after
* <a href="reference_connectedComponentsLabeling">connectedComponentsLabeling</a> (2)


### labelledSpotsToPointList is often followed by
* <a href="reference_touchMatrixToMesh">touchMatrixToMesh</a> (2)


### Usage in ImageJ macro
```
Ext.CLIJ2_labelledSpotsToPointList(Image input_labelled_spots, ByRef Image destination_pointlist);
```


### Usage in Java
```
// init CLIJ and GPU
import net.haesleinhuepf.clij2.CLIJ2;
import net.haesleinhuepf.clij.clearcl.ClearCLBuffer;
CLIJ2 clij2 = CLIJ2.getInstance();

// get input parameters
ClearCLBuffer input_labelled_spots = clij2.push(input_labelled_spotsImagePlus);
destination_pointlist = clij.create(input_labelled_spots);
```

```
// Execute operation on GPU
clij2.labelledSpotsToPointList(clij, input_labelled_spots, destination_pointlist);
```

```
//show result
destination_pointlistImagePlus = clij2.pull(destination_pointlist);
destination_pointlistImagePlus.show();

// cleanup memory on GPU
clij2.release(input_labelled_spots);
clij2.release(destination_pointlist);
```




### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/rotating_sphere.ijm"><img src="images/language_macro.png" height="20"/></a> [rotating_sphere.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/rotating_sphere.ijm)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

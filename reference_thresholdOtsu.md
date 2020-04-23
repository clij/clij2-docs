## thresholdOtsu
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/>

By Robert Haase based on work by G. Landini and W. Rasband

The automatic thresholder utilizes the Otsu threshold method implemented in ImageJ using a histogram determined on 
the GPU to create binary images as similar as possible to ImageJ 'Apply Threshold' method.

### thresholdOtsu often follows after
* <a href="reference_subtractImageFromScalar">subtractImageFromScalar</a> (2)
* <a href="reference_mean2DBox">mean2DBox</a> (2)


### thresholdOtsu is often followed by
* <a href="reference_connectedComponentsLabelingBox">connectedComponentsLabelingBox</a> (2)
* <a href="reference_voronoiOctagon">voronoiOctagon</a> (2)
* <a href="reference_connectedComponentsLabeling">connectedComponentsLabeling</a> (2)
* <a href="reference_binaryXOr">binaryXOr</a> (2)
* <a href="reference_binaryEdgeDetection">binaryEdgeDetection</a> (2)


### Usage in ImageJ macro
```
Ext.CLIJ2_thresholdOtsu(Image input, ByRef Image destination);
```


### Usage in Java
```
// init CLIJ and GPU
import net.haesleinhuepf.clij2.CLIJ2;
import net.haesleinhuepf.clij.clearcl.ClearCLBuffer;
CLIJ2 clij2 = CLIJ2.getInstance();

// get input parameters
ClearCLBuffer input = clij2.push(inputImagePlus);
destination = clij.create(input);
```

```
// Execute operation on GPU
clij2.thresholdOtsu(clij, input, destination);
```

```
//show result
destinationImagePlus = clij2.pull(destination);
destinationImagePlus.show();

// cleanup memory on GPU
clij2.release(input);
clij2.release(destination);
```




### Example notebooks
<a href="https://clij.github.io/clij2-docs/md/binary_processing"><img src="images/language_macro.png" height="20"/></a> [binary_processing](https://clij.github.io/clij2-docs/md/binary_processing)  
<a href="https://clij.github.io/clij2-docs/md/mean_of_touching_neighbors"><img src="images/language_macro.png" height="20"/></a> [mean_of_touching_neighbors](https://clij.github.io/clij2-docs/md/mean_of_touching_neighbors)  
<a href="https://clij.github.io/clij2-docs/md/measure_statistics"><img src="images/language_macro.png" height="20"/></a> [measure_statistics](https://clij.github.io/clij2-docs/md/measure_statistics)  
<a href="https://clij.github.io/clij2-docs/md/voronoi"><img src="images/language_macro.png" height="20"/></a> [voronoi](https://clij.github.io/clij2-docs/md/voronoi)  
<a href="https://clij.github.io/clij2-docs/md/working_with_rois"><img src="images/language_macro.png" height="20"/></a> [working_with_rois](https://clij.github.io/clij2-docs/md/working_with_rois)  




### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/autoThreshold.ijm"><img src="images/language_macro.png" height="20"/></a> [autoThreshold.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/autoThreshold.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/benchmarkVoronoi.ijm"><img src="images/language_macro.png" height="20"/></a> [benchmarkVoronoi.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/benchmarkVoronoi.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/binary_processing.ijm"><img src="images/language_macro.png" height="20"/></a> [binary_processing.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/binary_processing.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/create_object_outlines.ijm"><img src="images/language_macro.png" height="20"/></a> [create_object_outlines.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/create_object_outlines.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/distanceMap.ijm"><img src="images/language_macro.png" height="20"/></a> [distanceMap.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/distanceMap.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/mean_of_touching_neighbors.ijm"><img src="images/language_macro.png" height="20"/></a> [mean_of_touching_neighbors.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/mean_of_touching_neighbors.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/measure_statistics.ijm"><img src="images/language_macro.png" height="20"/></a> [measure_statistics.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/measure_statistics.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/voronoi.ijm"><img src="images/language_macro.png" height="20"/></a> [voronoi.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/voronoi.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/working_with_rois.ijm"><img src="images/language_macro.png" height="20"/></a> [working_with_rois.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/working_with_rois.ijm)  




### License terms
The code for the automatic thresholding methods originates from https://github.com/imagej/imagej1/blob/master/ij/process/AutoThresholder.java  
  
Detailed documentation on the implemented methods can be found online: https://imagej.net/Auto_Threshold

[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

## spotsToPointList
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/>

Transforms a spots image as resulting from maximum/minimum detection in an image where every column contains d 
pixels (with d = dimensionality of the original image) with the coordinates of the maxima/minima.

### spotsToPointList often followes after
* <a href="reference_translate2D">translate2D</a> (2)
* <a href="reference_detectMaximaBox">detectMaximaBox</a> (3)


### spotsToPointList is often followed by
* <a href="reference_image2DToResultsTable">image2DToResultsTable</a> (3)
* <a href="reference_generateDistanceMatrix">generateDistanceMatrix</a> (3)


### Usage in ImageJ macro
```
Ext.CLIJ2_spotsToPointList(Image input_spots, ByRef Image destination_pointlist);
```


### Usage in Java
```
// init CLIJ and GPU
import net.haesleinhuepf.clij2.CLIJ2;
import net.haesleinhuepf.clij.clearcl.ClearCLBuffer;
CLIJ2 clij2 = CLIJ2.getInstance();

// get input parameters
ClearCLBuffer input_spots = clij2.push(input_spotsImagePlus);
destination_pointlist = clij.create(input_spots);
```

```
// Execute operation on GPU
clij2.spotsToPointList(clij, input_spots, destination_pointlist);
```

```
//show result
destination_pointlistImagePlus = clij2.pull(destination_pointlist);
destination_pointlistImagePlus.show();

// cleanup memory on GPU
clij2.release(input_spots);
clij2.release(destination_pointlist);
```




### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/meshTouchingNeighbors.ijm"><img src="images/language_macro.png" height="20"/></a> [meshTouchingNeighbors.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/meshTouchingNeighbors.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/mesh_closest_points.ijm"><img src="images/language_macro.png" height="20"/></a> [mesh_closest_points.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/mesh_closest_points.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/spot_distance_measurement.ijm"><img src="images/language_macro.png" height="20"/></a> [spot_distance_measurement.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/spot_distance_measurement.ijm)  
<a href="https://github.com/clij/clijpy/blob/master/python/spot_detection.py"><img src="images/language_python.png" height="20"/></a> [spot_detection.py](https://github.com/clij/clijpy/blob/master/python/spot_detection.py)  
<a href="https://github.com/clij/clatlab/blob/master/src/main/matlab/meshClosestPoints.m"><img src="images/language_matlab.png" height="20"/></a> [meshClosestPoints.m](https://github.com/clij/clatlab/blob/master/src/main/matlab/meshClosestPoints.m)  
<a href="https://github.com/clij/clatlab/blob/master/src/main/matlab/spotDetection3D.m"><img src="images/language_matlab.png" height="20"/></a> [spotDetection3D.m](https://github.com/clij/clatlab/blob/master/src/main/matlab/spotDetection3D.m)  


[Back to CLIJ documentation](https://clij.github.io/)

[Imprint](https://clij.github.io/imprint)

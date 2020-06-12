## nClosestPoints
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/>

Determine the n point indices with shortest distance for all points in a distance matrix. 

This corresponds to the n row indices with minimum values for each column of the distance matrix.

### nClosestPoints often follows after
* <a href="reference_generateDistanceMatrix">generateDistanceMatrix</a> (2)


### nClosestPoints is often followed by
* <a href="reference_image2DToResultsTable">image2DToResultsTable</a> (2)


### Usage in ImageJ macro
```
Ext.CLIJ2_nClosestPoints(Image distance_matrix, Image indexlist_destination, Number nClosestPointsTofind);
```




### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/mesh_closest_points.ijm"><img src="images/language_macro.png" height="20"/></a> [mesh_closest_points.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/mesh_closest_points.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/jython/mesh_closest_points.py"><img src="images/language_jython.png" height="20"/></a> [mesh_closest_points.py](https://github.com/clij/clij2-docs/blob/master/src/main/jython/mesh_closest_points.py)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

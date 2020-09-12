## pullBinary
<img src="images/mini_clij1_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/>

Copies a binary image specified by its name from GPU memory back to ImageJ and shows it. This binary image will have 0 and 255 pixel intensities as needed for ImageJ to interpret it as binary.

Category: [Binary](https://clij.github.io/clij2-docs/reference__binary)

### Usage in ImageJ macro
```
Ext.CLIJ2_pullBinary(String image);
```




### Example notebooks
<a href="https://clij.github.io/clij2-docs/md/binary_processing"><img src="images/language_macro.png" height="20"/></a> [binary_processing](https://clij.github.io/clij2-docs/md/binary_processing)  
<a href="https://clij.github.io/clij2-docs/md/compare_workflows"><img src="images/language_macro.png" height="20"/></a> [compare_workflows](https://clij.github.io/clij2-docs/md/compare_workflows)  
<a href="https://clij.github.io/clij2-docs/md/labelmap_voronoi"><img src="images/language_macro.png" height="20"/></a> [labelmap_voronoi](https://clij.github.io/clij2-docs/md/labelmap_voronoi)  
<a href="https://clij.github.io/clij2-docs/md/mean_of_touching_neighbors"><img src="images/language_macro.png" height="20"/></a> [mean_of_touching_neighbors](https://clij.github.io/clij2-docs/md/mean_of_touching_neighbors)  
<a href="https://clij.github.io/clij2-docs/md/measure_overlap"><img src="images/language_macro.png" height="20"/></a> [measure_overlap](https://clij.github.io/clij2-docs/md/measure_overlap)  
<a href="https://clij.github.io/clij2-docs/md/voronoi"><img src="images/language_macro.png" height="20"/></a> [voronoi](https://clij.github.io/clij2-docs/md/voronoi)  




### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/autoThreshold.ijm"><img src="images/language_macro.png" height="20"/></a> [autoThreshold.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/autoThreshold.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/benchmarkFillHoles.ijm"><img src="images/language_macro.png" height="20"/></a> [benchmarkFillHoles.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/benchmarkFillHoles.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/benchmarkSkeletonize.ijm"><img src="images/language_macro.png" height="20"/></a> [benchmarkSkeletonize.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/benchmarkSkeletonize.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/benchmarkVoronoi.ijm"><img src="images/language_macro.png" height="20"/></a> [benchmarkVoronoi.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/benchmarkVoronoi.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/binary_processing.ijm"><img src="images/language_macro.png" height="20"/></a> [binary_processing.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/binary_processing.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/compare_workflows.ijm"><img src="images/language_macro.png" height="20"/></a> [compare_workflows.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/compare_workflows.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/distanceMap.ijm"><img src="images/language_macro.png" height="20"/></a> [distanceMap.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/distanceMap.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/fillHoles.ijm"><img src="images/language_macro.png" height="20"/></a> [fillHoles.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/fillHoles.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/labelmap_voronoi.ijm"><img src="images/language_macro.png" height="20"/></a> [labelmap_voronoi.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/labelmap_voronoi.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/mean_of_touching_neighbors.ijm"><img src="images/language_macro.png" height="20"/></a> [mean_of_touching_neighbors.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/mean_of_touching_neighbors.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/measure_overlap.ijm"><img src="images/language_macro.png" height="20"/></a> [measure_overlap.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/measure_overlap.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/meshTouchingNeighbors.ijm"><img src="images/language_macro.png" height="20"/></a> [meshTouchingNeighbors.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/meshTouchingNeighbors.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/mesh_closest_points.ijm"><img src="images/language_macro.png" height="20"/></a> [mesh_closest_points.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/mesh_closest_points.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/outline.ijm"><img src="images/language_macro.png" height="20"/></a> [outline.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/outline.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/rotating_sphere.ijm"><img src="images/language_macro.png" height="20"/></a> [rotating_sphere.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/rotating_sphere.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/thresholding.ijm"><img src="images/language_macro.png" height="20"/></a> [thresholding.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/thresholding.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/voronoi.ijm"><img src="images/language_macro.png" height="20"/></a> [voronoi.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/voronoi.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/workflow.ijm"><img src="images/language_macro.png" height="20"/></a> [workflow.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/workflow.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/javascript/automaticThreshold.js"><img src="images/language_javascript.png" height="20"/></a> [automaticThreshold.js](https://github.com/clij/clij2-docs/blob/master/src/main/javascript/automaticThreshold.js)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/groovy/automaticThreshold.groovy"><img src="images/language_groovy.png" height="20"/></a> [automaticThreshold.groovy](https://github.com/clij/clij2-docs/blob/master/src/main/groovy/automaticThreshold.groovy)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/beanshell/automaticThreshold.bsh"><img src="images/language_beanshell.png" height="20"/></a> [automaticThreshold.bsh](https://github.com/clij/clij2-docs/blob/master/src/main/beanshell/automaticThreshold.bsh)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

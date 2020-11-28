## release
<img src="images/mini_clij1_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_empty_logo.png"/>

Frees memory of a specified image in GPU memory.

### release often follows after
* <a href="reference_pushResultsTableColumn">pushResultsTableColumn</a> (2)
* <a href="reference_connectedComponentsLabelingBox">connectedComponentsLabelingBox</a> (12)
* <a href="reference_greaterOrEqual">greaterOrEqual</a> (1)
* <a href="reference_extendLabelingViaVoronoi">extendLabelingViaVoronoi</a> (1)
* <a href="reference_subtractImages">subtractImages</a> (1)
* <a href="reference_detectMaxima2DBox">detectMaxima2DBox</a> (2)
* <a href="reference_thresholdDefault">thresholdDefault</a> (3)
* <a href="reference_thresholdOtsu">thresholdOtsu</a> (1)
* <a href="reference_voronoiLabeling">voronoiLabeling</a> (1)
* <a href="reference_spotsToPointList">spotsToPointList</a> (1)
* <a href="reference_meanZProjection">meanZProjection</a> (1)
* <a href="reference_binaryNot">binaryNot</a> (5)
* <a href="reference_replaceIntensities">replaceIntensities</a> (2)
* <a href="reference_minimum3DBox">minimum3DBox</a> (5)
* <a href="reference_excludeLabelsOnEdges">excludeLabelsOnEdges</a> (3)
* <a href="reference_gaussianBlur3D">gaussianBlur3D</a> (2)
* <a href="reference_labelledSpotsToPointList">labelledSpotsToPointList</a> (2)
* <a href="reference_greaterConstant">greaterConstant</a> (3)
* <a href="reference_detectLabelEdges">detectLabelEdges</a> (1)
* <a href="reference_labelSpots">labelSpots</a> (4)
* <a href="reference_erodeBox">erodeBox</a> (1)
* <a href="reference_mask">mask</a> (1)
* <a href="reference_countTouchingNeighbors">countTouchingNeighbors</a> (5)
* <a href="reference_binaryAnd">binaryAnd</a> (6)
* <a href="reference_maximum3DBox">maximum3DBox</a> (2)
* <a href="reference_create3D">create3D</a> (1)
* <a href="reference_topHatBox">topHatBox</a> (1)
* <a href="reference_meanOfTouchingNeighbors">meanOfTouchingNeighbors</a> (1)
* <a href="reference_maximum2DSphere">maximum2DSphere</a> (1)
* <a href="reference_gaussianBlur2D">gaussianBlur2D</a> (1)
* <a href="reference_generateTouchCountMatrix">generateTouchCountMatrix</a> (1)
* <a href="reference_maximumZProjection">maximumZProjection</a> (44)
* <a href="reference_detectMaxima3DBox">detectMaxima3DBox</a> (1)
* <a href="reference_generateTouchMatrix">generateTouchMatrix</a> (4)
* <a href="reference_touchMatrixToMesh">touchMatrixToMesh</a> (1)
* <a href="reference_multiplyImages">multiplyImages</a> (4)
* <a href="reference_generateDistanceMatrix">generateDistanceMatrix</a> (3)
* <a href="reference_averageDistanceOfNClosestPoints">averageDistanceOfNClosestPoints</a> (2)


### Usage in ImageJ macro
```
Ext.CLIJ2_release(String image);
```




### Example notebooks
<a href="https://clij.github.io/clij2-docs/md/basics"><img src="images/language_macro.png" height="20"/></a> [basics](https://clij.github.io/clij2-docs/md/basics)  
<a href="https://clij.github.io/clij2-docs/md/drosophila_max_cylinder_projection"><img src="images/language_macro.png" height="20"/></a> [drosophila_max_cylinder_projection](https://clij.github.io/clij2-docs/md/drosophila_max_cylinder_projection)  
<a href="https://clij.github.io/clij2-docs/md/superpixel_segmentation"><img src="images/language_macro.png" height="20"/></a> [superpixel_segmentation](https://clij.github.io/clij2-docs/md/superpixel_segmentation)  
<a href="https://clij.github.io/clij2-docs/md/tribolium_morphometry"><img src="images/language_macro.png" height="20"/></a> [tribolium_morphometry](https://clij.github.io/clij2-docs/md/tribolium_morphometry)  




### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/basics.ijm"><img src="images/language_macro.png" height="20"/></a> [basics.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/basics.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/division_visualisation.ijm"><img src="images/language_macro.png" height="20"/></a> [division_visualisation.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/division_visualisation.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/drosophila_max_cylinder_projection.ijm"><img src="images/language_macro.png" height="20"/></a> [drosophila_max_cylinder_projection.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/drosophila_max_cylinder_projection.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/memory_reuse_versus_reallocation.ijm"><img src="images/language_macro.png" height="20"/></a> [memory_reuse_versus_reallocation.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/memory_reuse_versus_reallocation.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/oddEven.ijm"><img src="images/language_macro.png" height="20"/></a> [oddEven.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/oddEven.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/superpixel_segmentation.ijm"><img src="images/language_macro.png" height="20"/></a> [superpixel_segmentation.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/superpixel_segmentation.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/tribolium_morphometry.ijm"><img src="images/language_macro.png" height="20"/></a> [tribolium_morphometry.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/tribolium_morphometry.ijm)  
<a href="https://github.com/clij/clicy/blob/master/src/main/javascript/simplePipeline.js"><img src="images/language_javascript.png" height="20"/></a> [simplePipeline.js](https://github.com/clij/clicy/blob/master/src/main/javascript/simplePipeline.js)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

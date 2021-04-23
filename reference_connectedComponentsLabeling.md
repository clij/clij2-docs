## connectedComponentsLabeling
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_empty_logo.png"/>

Performs connected components analysis to a binary image and generates a label map.

DEPRECATED: This method is <b>deprecated</b>. Use ConnectedComponentsLabellingBox (or Diamond) instead.

Availability: Available in Fiji by activating the update sites clij and clij2.
This function is part of clij2_-2.2.1.0.jar.

### connectedComponentsLabeling often follows after
* <a href="reference_automaticThreshold">automaticThreshold</a> (5)
* <a href="reference_thresholdOtsu">thresholdOtsu</a> (2)
* <a href="reference_detectMaximaBox">detectMaximaBox</a> (1)


### connectedComponentsLabeling is often followed by
* <a href="reference_centroidsOfLabels">centroidsOfLabels</a> (1)
* <a href="reference_labelledSpotsToPointList">labelledSpotsToPointList</a> (1)
* <a href="reference_maskLabel">maskLabel</a> (1)
* <a href="reference_getMaximumOfAllPixels">getMaximumOfAllPixels</a> (2)
* <a href="reference_statisticsOfLabelledPixels">statisticsOfLabelledPixels</a> (1)


### Usage in ImageJ macro
```
Ext.CLIJ2_connectedComponentsLabeling(Image binary_input, Image labeling_destination);
```




### Example notebooks
<a href="https://clij.github.io/clij2-docs/md/count_overlap_between_channels"><img src="images/language_macro.png" height="20"/></a> [count_overlap_between_channels](https://clij.github.io/clij2-docs/md/count_overlap_between_channels)  
<a href="https://clij.github.io/clij2-docs/md/custom_clij_macro_functions"><img src="images/language_macro.png" height="20"/></a> [custom_clij_macro_functions](https://clij.github.io/clij2-docs/md/custom_clij_macro_functions)  
<a href="https://clij.github.io/clij2-docs/md/image_types"><img src="images/language_macro.png" height="20"/></a> [image_types](https://clij.github.io/clij2-docs/md/image_types)  
<a href="https://clij.github.io/clij2-docs/md/labeling"><img src="images/language_macro.png" height="20"/></a> [labeling](https://clij.github.io/clij2-docs/md/labeling)  
<a href="https://clij.github.io/clij2-docs/md/labelmap_voronoi"><img src="images/language_macro.png" height="20"/></a> [labelmap_voronoi](https://clij.github.io/clij2-docs/md/labelmap_voronoi)  
<a href="https://clij.github.io/clij2-docs/md/mean_of_touching_neighbors"><img src="images/language_macro.png" height="20"/></a> [mean_of_touching_neighbors](https://clij.github.io/clij2-docs/md/mean_of_touching_neighbors)  
<a href="https://clij.github.io/clij2-docs/md/measure_statistics"><img src="images/language_macro.png" height="20"/></a> [measure_statistics](https://clij.github.io/clij2-docs/md/measure_statistics)  
<a href="https://clij.github.io/clij2-docs/md/outlines_numbers_overlay"><img src="images/language_macro.png" height="20"/></a> [outlines_numbers_overlay](https://clij.github.io/clij2-docs/md/outlines_numbers_overlay)  
<a href="https://clij.github.io/clij2-docs/md/tables"><img src="images/language_macro.png" height="20"/></a> [tables](https://clij.github.io/clij2-docs/md/tables)  
<a href="https://clij.github.io/clij2-docs/md/working_with_rois"><img src="images/language_macro.png" height="20"/></a> [working_with_rois](https://clij.github.io/clij2-docs/md/working_with_rois)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/basics/count_blobs.ipynb"><img src="images/language_python.png" height="20"/></a> [count_blobs.ipynb](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/basics/count_blobs.ipynb)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/basics/spots_pointlists_matrices_tables.ipynb"><img src="images/language_python.png" height="20"/></a> [spots_pointlists_matrices_tables.ipynb](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/basics/spots_pointlists_matrices_tables.ipynb)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/napari_gui/napari_dask.ipynb"><img src="images/language_python.png" height="20"/></a> [napari_dask.ipynb](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/napari_gui/napari_dask.ipynb)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/segmentation/bead_segmentation.ipynb"><img src="images/language_python.png" height="20"/></a> [bead_segmentation.ipynb](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/segmentation/bead_segmentation.ipynb)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/tissues/parametric_maps.ipynb"><img src="images/language_python.png" height="20"/></a> [parametric_maps.ipynb](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/tissues/parametric_maps.ipynb)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/tribolium_morphometry/tribolium_morphometry.ipynb"><img src="images/language_python.png" height="20"/></a> [tribolium_morphometry.ipynb](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/tribolium_morphometry/tribolium_morphometry.ipynb)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/benchmarks/connected_component_labeling.ipynb"><img src="images/language_python.png" height="20"/></a> [connected_component_labeling.ipynb](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/benchmarks/connected_component_labeling.ipynb)  




### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/boundingBoxes.ijm"><img src="images/language_macro.png" height="20"/></a> [boundingBoxes.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/boundingBoxes.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/center_of_mass.ijm"><img src="images/language_macro.png" height="20"/></a> [center_of_mass.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/center_of_mass.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/count_overlap_between_channels.ijm"><img src="images/language_macro.png" height="20"/></a> [count_overlap_between_channels.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/count_overlap_between_channels.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/custom_clij_macro_functions.ijm"><img src="images/language_macro.png" height="20"/></a> [custom_clij_macro_functions.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/custom_clij_macro_functions.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/division_visualisation.ijm"><img src="images/language_macro.png" height="20"/></a> [division_visualisation.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/division_visualisation.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/excludeLabelsOnEdges.ijm"><img src="images/language_macro.png" height="20"/></a> [excludeLabelsOnEdges.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/excludeLabelsOnEdges.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/excludeLabelsWithinRange.ijm"><img src="images/language_macro.png" height="20"/></a> [excludeLabelsWithinRange.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/excludeLabelsWithinRange.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/image_types.ijm"><img src="images/language_macro.png" height="20"/></a> [image_types.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/image_types.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/intensity_per_label.ijm"><img src="images/language_macro.png" height="20"/></a> [intensity_per_label.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/intensity_per_label.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/jaccard_matrix.ijm"><img src="images/language_macro.png" height="20"/></a> [jaccard_matrix.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/jaccard_matrix.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/labeling.ijm"><img src="images/language_macro.png" height="20"/></a> [labeling.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/labeling.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/labelmap_voronoi.ijm"><img src="images/language_macro.png" height="20"/></a> [labelmap_voronoi.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/labelmap_voronoi.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/mean_of_touching_neighbors.ijm"><img src="images/language_macro.png" height="20"/></a> [mean_of_touching_neighbors.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/mean_of_touching_neighbors.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/measure_statistics.ijm"><img src="images/language_macro.png" height="20"/></a> [measure_statistics.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/measure_statistics.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/meshTouchingNeighbors.ijm"><img src="images/language_macro.png" height="20"/></a> [meshTouchingNeighbors.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/meshTouchingNeighbors.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/outlines_numbers_overlay.ijm"><img src="images/language_macro.png" height="20"/></a> [outlines_numbers_overlay.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/outlines_numbers_overlay.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/particle_analysis.ijm"><img src="images/language_macro.png" height="20"/></a> [particle_analysis.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/particle_analysis.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/rotating_sphere.ijm"><img src="images/language_macro.png" height="20"/></a> [rotating_sphere.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/rotating_sphere.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/tables.ijm"><img src="images/language_macro.png" height="20"/></a> [tables.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/tables.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/working_with_rois.ijm"><img src="images/language_macro.png" height="20"/></a> [working_with_rois.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/working_with_rois.ijm)  
<a href="https://github.com/clij/clatlab/blob/master/src/main/matlab/mesh_close_points.m"><img src="images/language_matlab.png" height="20"/></a> [mesh_close_points.m](https://github.com/clij/clatlab/blob/master/src/main/matlab/mesh_close_points.m)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/jython/segmentation.py"><img src="images/language_jython.png" height="20"/></a> [segmentation.py](https://github.com/clij/clij2-docs/blob/master/src/main/jython/segmentation.py)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/basics/count_blobs.py"><img src="images/language_python.png" height="20"/></a> [count_blobs.py](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/basics/count_blobs.py)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/napari_gui/napari_.py"><img src="images/language_python.png" height="20"/></a> [napari_.py](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/napari_gui/napari_.py)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/napari_gui/napari_magicgui.py"><img src="images/language_python.png" height="20"/></a> [napari_magicgui.py](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/napari_gui/napari_magicgui.py)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/tribolium_morphometry/tribolium.py"><img src="images/language_python.png" height="20"/></a> [tribolium.py](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/tribolium_morphometry/tribolium.py)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

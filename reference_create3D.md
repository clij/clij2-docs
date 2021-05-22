## create3D
<img src="images/mini_clij1_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_cle_logo.png"/>

Allocated memory for a new 3D image in the GPU memory.

Parameters
----------
destination : Image
    The new image will be stored in this variable.
width : Number
    The width of the new image.
height : Number
    The height of the new image.
depth : Number
    The depth of the new image.
bit-depth : Number
    The bit-depth of the new image. Can be either 8, 16 or 32, to create an image of unsigned-byte, unsigned-short or float type.


Availability: Available in Fiji by activating the update sites clij and clij2.
This function is part of clij2_-2.3.0.6.jar.

### create3D often follows after
* <a href="reference_getDimensions">getDimensions</a> (17)


### create3D is often followed by
* <a href="reference_convolve">convolve</a> (1)
* <a href="reference_release">release</a> (2)
* <a href="reference_addImageAndScalar">addImageAndScalar</a> (1)
* <a href="reference_maximumOfTouchingNeighbors">maximumOfTouchingNeighbors</a> (1)


### Usage in ImageJ macro
```
Ext.CLIJ2_create3D(Image destination, Number width, Number height, Number depth, Number bitDepth);
```




### Example notebooks
<a href="https://clij.github.io/clij2-docs/md/benchmarking"><img src="images/language_macro.png" height="20"/></a> [benchmarking](https://clij.github.io/clij2-docs/md/benchmarking)  
<a href="https://clij.github.io/clij2-docs/md/image_segmentation_3d"><img src="images/language_macro.png" height="20"/></a> [image_segmentation_3d](https://clij.github.io/clij2-docs/md/image_segmentation_3d)  
<a href="https://clij.github.io/clij2-docs/md/tribolium_morphometry"><img src="images/language_macro.png" height="20"/></a> [tribolium_morphometry](https://clij.github.io/clij2-docs/md/tribolium_morphometry)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/basics/crop_and_paste_images.ipynb"><img src="images/language_python.png" height="20"/></a> [crop_and_paste_images.ipynb](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/basics/crop_and_paste_images.ipynb)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/basics/inspecting_3d_images.ipynb"><img src="images/language_python.png" height="20"/></a> [inspecting_3d_images.ipynb](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/basics/inspecting_3d_images.ipynb)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/basics/multiply_matrices.ipynb"><img src="images/language_python.png" height="20"/></a> [multiply_matrices.ipynb](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/basics/multiply_matrices.ipynb)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/basics/spots_pointlists_matrices_tables.ipynb"><img src="images/language_python.png" height="20"/></a> [spots_pointlists_matrices_tables.ipynb](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/basics/spots_pointlists_matrices_tables.ipynb)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/napari_gui/napari_dask.ipynb"><img src="images/language_python.png" height="20"/></a> [napari_dask.ipynb](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/napari_gui/napari_dask.ipynb)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/neighbors/mesh_between_centroids.ipynb"><img src="images/language_python.png" height="20"/></a> [mesh_between_centroids.ipynb](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/neighbors/mesh_between_centroids.ipynb)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/neighbors/shape_descriptors_based_on_neighborhood_graphs.ipynb"><img src="images/language_python.png" height="20"/></a> [shape_descriptors_based_on_neighborhood_graphs.ipynb](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/neighbors/shape_descriptors_based_on_neighborhood_graphs.ipynb)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/segmentation/Segmentation_3D.ipynb"><img src="images/language_python.png" height="20"/></a> [Segmentation_3D.ipynb](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/segmentation/Segmentation_3D.ipynb)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/segmentation/voronoi_otsu_labeling.ipynb"><img src="images/language_python.png" height="20"/></a> [voronoi_otsu_labeling.ipynb](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/segmentation/voronoi_otsu_labeling.ipynb)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/transforms/affine_transforms.ipynb"><img src="images/language_python.png" height="20"/></a> [affine_transforms.ipynb](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/transforms/affine_transforms.ipynb)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/tribolium_morphometry/tribolium_morphometry.ipynb"><img src="images/language_python.png" height="20"/></a> [tribolium_morphometry.ipynb](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/tribolium_morphometry/tribolium_morphometry.ipynb)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/benchmarks/affine_transforms.ipynb"><img src="images/language_python.png" height="20"/></a> [affine_transforms.ipynb](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/benchmarks/affine_transforms.ipynb)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/benchmarks/benchmarking.ipynb"><img src="images/language_python.png" height="20"/></a> [benchmarking.ipynb](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/benchmarks/benchmarking.ipynb)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/benchmarks/benchmarking_centroids_of_labels.ipynb"><img src="images/language_python.png" height="20"/></a> [benchmarking_centroids_of_labels.ipynb](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/benchmarks/benchmarking_centroids_of_labels.ipynb)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/benchmarks/benchmarking_some_operations.ipynb"><img src="images/language_python.png" height="20"/></a> [benchmarking_some_operations.ipynb](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/benchmarks/benchmarking_some_operations.ipynb)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/benchmarks/connected_component_labeling.ipynb"><img src="images/language_python.png" height="20"/></a> [connected_component_labeling.ipynb](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/benchmarks/connected_component_labeling.ipynb)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/benchmarks/convolution.ipynb"><img src="images/language_python.png" height="20"/></a> [convolution.ipynb](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/benchmarks/convolution.ipynb)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/benchmarks/matrix_multiplication.ipynb"><img src="images/language_python.png" height="20"/></a> [matrix_multiplication.ipynb](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/benchmarks/matrix_multiplication.ipynb)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/benchmarks/statistics_of_labeled_pixels.ipynb"><img src="images/language_python.png" height="20"/></a> [statistics_of_labeled_pixels.ipynb](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/benchmarks/statistics_of_labeled_pixels.ipynb)  




### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/addImages3D.ijm"><img src="images/language_macro.png" height="20"/></a> [addImages3D.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/addImages3D.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/allocateBigImages.ijm"><img src="images/language_macro.png" height="20"/></a> [allocateBigImages.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/allocateBigImages.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/benchmarking.ijm"><img src="images/language_macro.png" height="20"/></a> [benchmarking.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/benchmarking.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/division_visualisation.ijm"><img src="images/language_macro.png" height="20"/></a> [division_visualisation.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/division_visualisation.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/image_segmentation_3d.ijm"><img src="images/language_macro.png" height="20"/></a> [image_segmentation_3d.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/image_segmentation_3d.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/process_5D_stack.ijm"><img src="images/language_macro.png" height="20"/></a> [process_5D_stack.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/process_5D_stack.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/rotateFree.ijm"><img src="images/language_macro.png" height="20"/></a> [rotateFree.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/rotateFree.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/rotateOverwriteOriginal.ijm"><img src="images/language_macro.png" height="20"/></a> [rotateOverwriteOriginal.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/rotateOverwriteOriginal.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/rotating_sphere.ijm"><img src="images/language_macro.png" height="20"/></a> [rotating_sphere.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/rotating_sphere.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/scaleFree.ijm"><img src="images/language_macro.png" height="20"/></a> [scaleFree.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/scaleFree.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/translate.ijm"><img src="images/language_macro.png" height="20"/></a> [translate.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/translate.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/tribolium_morphometry.ijm"><img src="images/language_macro.png" height="20"/></a> [tribolium_morphometry.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/tribolium_morphometry.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/tubeness.ijm"><img src="images/language_macro.png" height="20"/></a> [tubeness.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/tubeness.ijm)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/tribolium_morphometry/tribolium.py"><img src="images/language_python.png" height="20"/></a> [tribolium.py](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/tribolium_morphometry/tribolium.py)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

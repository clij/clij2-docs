## statisticsOfBackgroundAndLabelledPixels
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_empty_logo.png"/>

Determines bounding box, area (in pixels/voxels), min, max and mean intensity 
 of background and labelled objects in a label map and corresponding pixels in the original image.

Instead of a label map, you can also use a binary image as a binary image is a label map with just one label.

This method is executed on the CPU and not on the GPU/OpenCL device.

### statisticsOfBackgroundAndLabelledPixels often follows after
* <a href="reference_pushArray">pushArray</a> (2)


### Usage in ImageJ macro
```
Ext.CLIJ2_statisticsOfBackgroundAndLabelledPixels(Image input, Image labelmap);
```




### Example notebooks
<a href="https://clij.github.io/clij2-docs/md/mean_of_touching_neighbors"><img src="images/language_macro.png" height="20"/></a> [mean_of_touching_neighbors](https://clij.github.io/clij2-docs/md/mean_of_touching_neighbors)  
<a href="https://clij.github.io/clij2-docs/md/neighbors_of_neighbors"><img src="images/language_macro.png" height="20"/></a> [neighbors_of_neighbors](https://clij.github.io/clij2-docs/md/neighbors_of_neighbors)  
<a href="https://clij.github.io/clij2-docs/md/superpixel_segmentation"><img src="images/language_macro.png" height="20"/></a> [superpixel_segmentation](https://clij.github.io/clij2-docs/md/superpixel_segmentation)  




### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/excludeLabelsWithinRange.ijm"><img src="images/language_macro.png" height="20"/></a> [excludeLabelsWithinRange.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/excludeLabelsWithinRange.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/filter_label_maps.ijm"><img src="images/language_macro.png" height="20"/></a> [filter_label_maps.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/filter_label_maps.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/mean_of_touching_neighbors.ijm"><img src="images/language_macro.png" height="20"/></a> [mean_of_touching_neighbors.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/mean_of_touching_neighbors.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/neighbors_of_neighbors.ijm"><img src="images/language_macro.png" height="20"/></a> [neighbors_of_neighbors.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/neighbors_of_neighbors.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/superpixel_segmentation.ijm"><img src="images/language_macro.png" height="20"/></a> [superpixel_segmentation.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/superpixel_segmentation.ijm)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

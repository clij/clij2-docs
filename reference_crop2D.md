## crop2D
<img src="images/mini_clij1_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_cle_logo.png"/>

Crops a given rectangle out of a given image. 

Note: If the destination image pre-exists already, it will be overwritten and keep it's dimensions.

### Parameters

source : Image
    The image where a part will be cropped out.
destination : Image
    The cropped image will be stored in this variable.
start_x : Number
    The horizontal position of the region to crop in the source image.
start_y : Number
    The vertical position of the region to crop in the source image.
width : Number
    The width of the region to crop in the source image.
height : Number
    The height of the region to crop in the source image.


Category: [Transformations](https://clij.github.io/clij2-docs/reference__transform)

Availability: Available in Fiji by activating the update sites clij and clij2.
This function is part of clij2_-2.5.0.1.jar.

### crop2D often follows after
* <a href="reference_getDimensions">getDimensions</a> (2)
* <a href="reference_paste2D">paste2D</a> (1)
* <a href="reference_generateDistanceMatrix">generateDistanceMatrix</a> (1)


### crop2D is often followed by
* <a href="reference_gaussianBlur2D">gaussianBlur2D</a> (1)
* <a href="reference_nClosestDistances">nClosestDistances</a> (1)
* <a href="reference_flip2D">flip2D</a> (1)


### Usage in ImageJ macro
```
Ext.CLIJ2_crop2D(Image source, Image destination, Number start_x, Number start_z, Number width, Number height);
```




### Example notebooks
<a href="https://clij.github.io/clij2-docs/md/crop_and_paste"><img src="images/language_macro.png" height="20"/></a> [crop_and_paste](https://clij.github.io/clij2-docs/md/crop_and_paste)  
<a href="https://clij.github.io/clij2-docs/md/voronoi_otsu_labeling"><img src="images/language_macro.png" height="20"/></a> [voronoi_otsu_labeling](https://clij.github.io/clij2-docs/md/voronoi_otsu_labeling)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/basics/crop_and_paste_images.ipynb"><img src="images/language_python.png" height="20"/></a> [crop_and_paste_images.ipynb](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/basics/crop_and_paste_images.ipynb)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/segmentation/voronoi_otsu_labeling.ipynb"><img src="images/language_python.png" height="20"/></a> [voronoi_otsu_labeling.ipynb](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/segmentation/voronoi_otsu_labeling.ipynb)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/transforms/affine_transforms.ipynb"><img src="images/language_python.png" height="20"/></a> [affine_transforms.ipynb](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/transforms/affine_transforms.ipynb)  




### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/allocateBig2DImages.ijm"><img src="images/language_macro.png" height="20"/></a> [allocateBig2DImages.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/allocateBig2DImages.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/crop.ijm"><img src="images/language_macro.png" height="20"/></a> [crop.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/crop.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/crop_and_paste.ijm"><img src="images/language_macro.png" height="20"/></a> [crop_and_paste.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/crop_and_paste.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/voronoi_otsu_labeling.ijm"><img src="images/language_macro.png" height="20"/></a> [voronoi_otsu_labeling.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/voronoi_otsu_labeling.ijm)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

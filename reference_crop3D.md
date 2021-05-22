## crop3D
<img src="images/mini_clij1_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_cle_logo.png"/>

Crops a given sub-stack out of a given image stack. 

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
start_z : Number
    The slice position of the region to crop in the source image. Slices are counted 0-based; the first slice is z=0.
width : Number
    The width of the region to crop in the source image.
height : Number
    The height of the region to crop in the source image.
depth : Number
    The depth of the region to crop in the source image.


Category: [Transformations](https://clij.github.io/clij2-docs/reference__transform)

Availability: Available in Fiji by activating the update sites clij and clij2.
This function is part of clij2_-2.3.0.6.jar.

### crop3D often follows after
* <a href="reference_copySlice">copySlice</a> (1)


### crop3D is often followed by
* <a href="reference_minimum3DSphere">minimum3DSphere</a> (1)


### Usage in ImageJ macro
```
Ext.CLIJ2_crop3D(Image source, Image destination, Number start_x, Number start_y, Number start_z, Number width, Number height, Number depth);
```




### Example notebooks
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/basics/crop_and_paste_images.ipynb"><img src="images/language_python.png" height="20"/></a> [crop_and_paste_images.ipynb](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/basics/crop_and_paste_images.ipynb)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/segmentation/voronoi_otsu_labeling.ipynb"><img src="images/language_python.png" height="20"/></a> [voronoi_otsu_labeling.ipynb](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/segmentation/voronoi_otsu_labeling.ipynb)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/transforms/affine_transforms.ipynb"><img src="images/language_python.png" height="20"/></a> [affine_transforms.ipynb](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/transforms/affine_transforms.ipynb)  




### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/allocateBigImages.ijm"><img src="images/language_macro.png" height="20"/></a> [allocateBigImages.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/allocateBigImages.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/oddEven.ijm"><img src="images/language_macro.png" height="20"/></a> [oddEven.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/oddEven.ijm)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

## applyWekaModel
<img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_clijx_logo.png"/>

Applies a Weka model using functionality of Fijis Trainable Weka Segmentation plugin. 

It takes a 3D feature stack (e.g. first plane original image, second plane blurred, third plane edge image)and applies a pre-trained a Weka model. Take care that the feature stack has been generated in the sameway as for training the model!

### Usage in ImageJ macro
```
Ext.CLIJx_applyWekaModel(Image featureStack3D, Image prediction2D_destination, String loadModelFilename);
```




### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/weka.ijm"><img src="images/language_macro.png" height="20"/></a> [weka.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/weka.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/weka_segmentation.ijm"><img src="images/language_macro.png" height="20"/></a> [weka_segmentation.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/weka_segmentation.ijm)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

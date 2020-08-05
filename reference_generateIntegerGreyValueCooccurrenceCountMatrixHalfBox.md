## generateIntegerGreyValueCooccurrenceCountMatrixHalfBox
<img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_clijx_logo.png"/>

Takes an image and assumes its grey values are integers. It builds up a grey-level co-occurence matrix of neigboring (left, bottom, back, left-bottom, left-back, bottom-back, left-bottom-back) pixel intensities. 

Major parts of this operation run on the CPU.

### Usage in ImageJ macro
```
Ext.CLIJx_generateIntegerGreyValueCooccurrenceCountMatrixHalfBox(Image integer_image, Image grey_value_cooccurrence_matrix_destination);
```


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

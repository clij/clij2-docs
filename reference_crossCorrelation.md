## crossCorrelation
<img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_clijx_logo.png"/>

Performs cross correlation analysis between two images. 

The second image is shifted by deltaPos in the given dimension. The cross correlation coefficient is calculated for each pixel in a range around the given pixel with given radius in the given dimension. Together with the original images it is recommended to hand over mean filtered images using the same radius.  

### Usage in ImageJ macro
```
Ext.CLIJx_crossCorrelation(Image input1, Image meanInput1, Image input2, Image meanInput2, ByRef Image destination, Number radius, Number deltaPos, Number dimension);
```


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

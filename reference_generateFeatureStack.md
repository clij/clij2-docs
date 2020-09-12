## generateFeatureStack
<img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_clijx_logo.png"/>

Generates a feature stack for Trainable Weka Segmentation. 

Use this terminology to specifiy which stacks should be generated:
* "original" original slice
* "GaussianBlur=s" Gaussian blurred image with sigma s
* "LaplacianOfGaussian=s" Laplacian of Gaussian blurred image with sigma s
* "SobelOfGaussian=s" Sobel filter applied to Gaussian blurred image with sigma s
* "minimum=r" local minimum with radius r
* "maximum=r" local maximum with radius r
* "mean=r" local mean with radius r
* "entropy=r" local entropy with radius r
* "gradientX" local gradient in X direction
* "gradientY" local gradient in Y direction

Use sigma=0 to apply a filter to the original image. Feature definitions are not case sensitive.

Example: "original gaussianBlur=1 gaussianBlur=5 laplacianOfGaussian=1 laplacianOfGaussian=7 entropy=3"

Categories: [Segmentation](https://clij.github.io/clij2-docs/reference__segmentation), Machine Learning

### Usage in ImageJ macro
```
Ext.CLIJx_generateFeatureStack(Image input, Image feature_stack_destination, String feature_definitions);
```


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

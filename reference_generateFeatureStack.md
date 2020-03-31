## generateFeatureStack
<img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_clijx_logo.png"/>

Generates a feature stack for Trainable Weka Segmentation. Use this terminology to specifiy which stacks should be generated:
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

### Usage in ImageJ macro
```
Ext.CLIJx_generateFeatureStack(Image input, Image feature_stack_destination, String feature_definitions);
```


### Usage in Java
```
// init CLIJ and GPU
import net.haesleinhuepf.clij2.CLIJ2;
import net.haesleinhuepf.clij.clearcl.ClearCLBuffer;
CLIJ2 clij2 = CLIJ2.getInstance();

// get input parameters
ClearCLBuffer input = clij2.push(inputImagePlus);
feature_stack_destination = clij.create(input);
```

```
// Execute operation on GPU
clij2.generateFeatureStack(clij, input, feature_stack_destination, feature_definitions);
```

```
//show result
feature_stack_destinationImagePlus = clij2.pull(feature_stack_destination);
feature_stack_destinationImagePlus.show();

// cleanup memory on GPU
clij2.release(input);
clij2.release(feature_stack_destination);
```


[Back to CLIJ documentation](https://clij.github.io/)

[Imprint](https://clij.github.io/imprint)

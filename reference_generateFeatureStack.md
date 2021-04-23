## generateFeatureStack
<img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_empty_logo.png"/>

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

Availability: Available in Fiji by activating the update sites clij and clij2.
This function is part of clijx-weka_-0.30.2.0.jar.

### Usage in ImageJ macro
```
Ext.CLIJx_generateFeatureStack(Image input, Image feature_stack_destination, String feature_definitions);
```


### Usage in object oriented programming languages



<details>

<summary>
Java
</summary>
<pre class="highlight">// init CLIJ and GPU
import net.haesleinhuepf.clijx.CLIJx;
import net.haesleinhuepf.clij.clearcl.ClearCLBuffer;
CLIJx clijx = CLIJx.getInstance();

// get input parameters
ClearCLBuffer input = clijx.push(inputImagePlus);
feature_stack_destination = clijx.create(input);
</pre>

<pre class="highlight">
// Execute operation on GPU
clijx.generateFeatureStack(input, feature_stack_destination, feature_definitions);
</pre>

<pre class="highlight">
// show result
feature_stack_destinationImagePlus = clijx.pull(feature_stack_destination);
feature_stack_destinationImagePlus.show();

// cleanup memory on GPU
clijx.release(input);
clijx.release(feature_stack_destination);
</pre>

</details>



<details>

<summary>
Matlab
</summary>
<pre class="highlight">% init CLIJ and GPU
clijx = init_clatlabx();

% get input parameters
input = clijx.pushMat(input_matrix);
feature_stack_destination = clijx.create(input);
</pre>

<pre class="highlight">
% Execute operation on GPU
clijx.generateFeatureStack(input, feature_stack_destination, feature_definitions);
</pre>

<pre class="highlight">
% show result
feature_stack_destination = clijx.pullMat(feature_stack_destination)

% cleanup memory on GPU
clijx.release(input);
clijx.release(feature_stack_destination);
</pre>

</details>



[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

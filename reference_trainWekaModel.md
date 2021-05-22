## trainWekaModel
<img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_empty_logo.png"/>

Trains a Weka model using functionality of Fijis Trainable Weka Segmentation plugin. 

It takes a 3D feature stack (e.g. first plane original image, second plane blurred, third plane edge image)and trains a Weka model. This model will be saved to disc.
The given groundTruth image is supposed to be a label map where pixels with value 1 represent class 1, pixels with value 2 represent class 2 and so on. Pixels with value 0 will be ignored for training.

Categories: [Segmentation](https://clij.github.io/clij2-docs/reference__segmentation), Machine Learning

Availability: Available in Fiji by activating the update sites clij and clij2.
This function is part of clijx-weka_-0.31.0.6.jar.

### Usage in ImageJ macro
```
Ext.CLIJx_trainWekaModel(Image featureStack3D, Image groundTruth2D, String saveModelFilename);
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
ClearCLBuffer featureStack3D = clijx.push(featureStack3DImagePlus);
ClearCLBuffer groundTruth2D = clijx.push(groundTruth2DImagePlus);
</pre>

<pre class="highlight">
// Execute operation on GPU
CLIJxWeka2 resultTrainWekaModel = clijx.trainWekaModel(featureStack3D, groundTruth2D, saveModelFilename);
</pre>

<pre class="highlight">
// show result
System.out.println(resultTrainWekaModel);

// cleanup memory on GPU
clijx.release(featureStack3D);
clijx.release(groundTruth2D);
</pre>

</details>



<details>

<summary>
Matlab
</summary>
<pre class="highlight">% init CLIJ and GPU
clijx = init_clatlabx();

% get input parameters
featureStack3D = clijx.pushMat(featureStack3D_matrix);
groundTruth2D = clijx.pushMat(groundTruth2D_matrix);
</pre>

<pre class="highlight">
% Execute operation on GPU
CLIJxWeka2 resultTrainWekaModel = clijx.trainWekaModel(featureStack3D, groundTruth2D, saveModelFilename);
</pre>

<pre class="highlight">
% show result
System.out.println(resultTrainWekaModel);

% cleanup memory on GPU
clijx.release(featureStack3D);
clijx.release(groundTruth2D);
</pre>

</details>



[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

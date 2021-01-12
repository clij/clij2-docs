## applyWekaModel
<img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_empty_logo.png"/>

Applies a Weka model using functionality of Fijis Trainable Weka Segmentation plugin. 

It takes a 3D feature stack (e.g. first plane original image, second plane blurred, third plane edge image)and applies a pre-trained a Weka model. Take care that the feature stack has been generated in the sameway as for training the model!

Categories: [Segmentation](https://clij.github.io/clij2-docs/reference__segmentation), Machine Learning

### Usage in ImageJ macro
```
Ext.CLIJx_applyWekaModel(Image featureStack3D, Image prediction2D_destination, String loadModelFilename);
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
prediction2D_destination = clijx.create(featureStack3D);
</pre>

<pre class="highlight">
// Execute operation on GPU
CLIJxWeka2 resultApplyWekaModel = clijx.applyWekaModel(featureStack3D, prediction2D_destination, loadModelFilename);
</pre>

<pre class="highlight">
// show result
System.out.println(resultApplyWekaModel);
prediction2D_destinationImagePlus = clijx.pull(prediction2D_destination);
prediction2D_destinationImagePlus.show();

// cleanup memory on GPU
clijx.release(featureStack3D);
clijx.release(prediction2D_destination);
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
prediction2D_destination = clijx.create(featureStack3D);
</pre>

<pre class="highlight">
% Execute operation on GPU
CLIJxWeka2 resultApplyWekaModel = clijx.applyWekaModel(featureStack3D, prediction2D_destination, loadModelFilename);
</pre>

<pre class="highlight">
% show result
System.out.println(resultApplyWekaModel);
prediction2D_destination = clijx.pullMat(prediction2D_destination)

% cleanup memory on GPU
clijx.release(featureStack3D);
clijx.release(prediction2D_destination);
</pre>

</details>



[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

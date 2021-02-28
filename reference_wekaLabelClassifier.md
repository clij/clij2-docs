## wekaLabelClassifier
<img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_empty_logo.png"/>

Applies a pre-trained CLIJx-Weka model to an image and a corresponding label map to classify labeled objects. 

Make sure that the handed over feature list is the same used while training the model.

Categories: [Labels](https://clij.github.io/clij2-docs/reference__label), [Segmentation](https://clij.github.io/clij2-docs/reference__segmentation)

Availability: Available in Fiji by activating the update sites clij and clij2.
This function is part of clijx-weka_-0.30.1.19.jar.

### Usage in ImageJ macro
```
Ext.CLIJx_wekaLabelClassifier(Image input, Image label_map, Image destination, String features, String modelfilename);
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
ClearCLBuffer label_map = clijx.push(label_mapImagePlus);
destination = clijx.create(input);
</pre>

<pre class="highlight">
// Execute operation on GPU
clijx.wekaLabelClassifier(input, label_map, destination, features, modelfilename);
</pre>

<pre class="highlight">
// show result
destinationImagePlus = clijx.pull(destination);
destinationImagePlus.show();

// cleanup memory on GPU
clijx.release(input);
clijx.release(label_map);
clijx.release(destination);
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
label_map = clijx.pushMat(label_map_matrix);
destination = clijx.create(input);
</pre>

<pre class="highlight">
% Execute operation on GPU
clijx.wekaLabelClassifier(input, label_map, destination, features, modelfilename);
</pre>

<pre class="highlight">
% show result
destination = clijx.pullMat(destination)

% cleanup memory on GPU
clijx.release(input);
clijx.release(label_map);
clijx.release(destination);
</pre>

</details>



[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

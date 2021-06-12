## kMeansLabelClusterer
<img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_empty_logo.png"/>

Applies K-Means clustering to an image and a corresponding label map. 

See also: https://commons.apache.org/proper/commons-math/javadocs/api-3.6/org/apache/commons/math3/ml/clustering/KMeansPlusPlusClusterer.html
Make sure that the handed over feature list is the same used while training the model.
The neighbor_radius specifies a correction step which allows to use a region where the mode of 
classification results (the most popular class) will be determined after clustering.

Categories: [Labels](https://clij.github.io/clij2-docs/reference__label), [Segmentation](https://clij.github.io/clij2-docs/reference__segmentation)

Availability: Available in Fiji by activating the update sites clij and clij2.
This function is part of clijx_-0.32.0.1.jar.

### Usage in ImageJ macro
```
Ext.CLIJx_kMeansLabelClusterer(Image input, Image label_map, Image destination, String features, String modelfilename, Number number_of_classes, Number neighbor_radius, Boolean train);
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
int number_of_classes = 10;
int neighbor_radius = 20;
boolean train = true;
</pre>

<pre class="highlight">
// Execute operation on GPU
clijx.kMeansLabelClusterer(input, label_map, destination, features, modelfilename, number_of_classes, neighbor_radius, train);
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
number_of_classes = 10;
neighbor_radius = 20;
train = true;
</pre>

<pre class="highlight">
% Execute operation on GPU
clijx.kMeansLabelClusterer(input, label_map, destination, features, modelfilename, number_of_classes, neighbor_radius, train);
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

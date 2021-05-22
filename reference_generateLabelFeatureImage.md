## generateLabelFeatureImage
<img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_empty_logo.png"/>

Generates a feature image for Trainable Weka Segmentation. 

Use this terminology to specify which features should be generated:
* BOUNDING_BOX_DEPTH
* BOUNDING_BOX_WIDTH
* BOUNDING_BOX_HEIGHT
* CENTROID_X
* CENTROID_Y
* CENTROID_Z
* MASS_CENTER_X
* MASS_CENTER_Y
* MASS_CENTER_Z
* MAX_DISTANCE_TO_CENTROID
* MAX_DISTANCE_TO_MASS_CENTER
* MEAN_DISTANCE_TO_CENTROID
* MEAN_DISTANCE_TO_MASS_CENTER
* MAX_MEAN_DISTANCE_TO_CENTROID_RATIO
* MAX_MEAN_DISTANCE_TO_MASS_CENTER_RATIO
* MAXIMUM_INTENSITY
* MEAN_INTENSITY
* MINIMUM_INTENSITY
* SUM_INTENSITY
* STANDARD_DEVIATION_INTENSITY
* PIXEL_COUNT
* count_touching_neighbors
* average_touch_pixel_count
* average_distance_of_touching_neighbors
* MEAN_OF_LAPLACIAN

Example: "MEAN_INTENSITY count_touching_neighbors"

Availability: Available in Fiji by activating the update sites clij and clij2.
This function is part of clijx-weka_-0.31.0.6.jar.

### Usage in ImageJ macro
```
Ext.CLIJx_generateLabelFeatureImage(Image input, Image label_map, Image label_feature_image_destination, String feature_definitions);
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
label_feature_image_destination = clijx.create(input);
</pre>

<pre class="highlight">
// Execute operation on GPU
clijx.generateLabelFeatureImage(input, label_map, label_feature_image_destination, feature_definitions);
</pre>

<pre class="highlight">
// show result
label_feature_image_destinationImagePlus = clijx.pull(label_feature_image_destination);
label_feature_image_destinationImagePlus.show();

// cleanup memory on GPU
clijx.release(input);
clijx.release(label_map);
clijx.release(label_feature_image_destination);
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
label_feature_image_destination = clijx.create(input);
</pre>

<pre class="highlight">
% Execute operation on GPU
clijx.generateLabelFeatureImage(input, label_map, label_feature_image_destination, feature_definitions);
</pre>

<pre class="highlight">
% show result
label_feature_image_destination = clijx.pullMat(label_feature_image_destination)

% cleanup memory on GPU
clijx.release(input);
clijx.release(label_map);
clijx.release(label_feature_image_destination);
</pre>

</details>



[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

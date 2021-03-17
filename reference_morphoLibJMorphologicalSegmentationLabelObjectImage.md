## morphoLibJMorphologicalSegmentationLabelObjectImage
<img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_empty_logo.png"/>

Apply MorpholibJ Morphological Segmentation to an object image to produce a label image. 

The gradient radius parameter describes the width of edges which should be considered while separating objects.
The tolerance parameter specifies how deep intensity valley between local maxima can be to be ignored while flooding the regions.
With connectivity = 6 and using dams=false while computing the watershed.
See also https://imagej.net/Morphological_Segmentation

Category: [Labels](https://clij.github.io/clij2-docs/reference__label)

Availability: Available in Fiji by activating the update sites clij, clij2 and clijx-assistant-extensions.
This function is part of clijx-assistant-morpholibj_-0.4.2.22.jar.

### Usage in ImageJ macro
```
Ext.CLIJx_morphoLibJMorphologicalSegmentationLabelObjectImage(Image input, Image labels_destination, Number gradient_radius, Number tolerance_threshold);
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
labels_destination = clijx.create(input);
int gradient_radius = 10;
float tolerance_threshold = 1.0;
</pre>

<pre class="highlight">
// Execute operation on GPU
clijx.morphoLibJMorphologicalSegmentationLabelObjectImage(input, labels_destination, gradient_radius, tolerance_threshold);
</pre>

<pre class="highlight">
// show result
labels_destinationImagePlus = clijx.pull(labels_destination);
labels_destinationImagePlus.show();

// cleanup memory on GPU
clijx.release(input);
clijx.release(labels_destination);
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
labels_destination = clijx.create(input);
gradient_radius = 10;
tolerance_threshold = 1.0;
</pre>

<pre class="highlight">
% Execute operation on GPU
clijx.morphoLibJMorphologicalSegmentationLabelObjectImage(input, labels_destination, gradient_radius, tolerance_threshold);
</pre>

<pre class="highlight">
% show result
labels_destination = clijx.pullMat(labels_destination)

% cleanup memory on GPU
clijx.release(input);
clijx.release(labels_destination);
</pre>

</details>



[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

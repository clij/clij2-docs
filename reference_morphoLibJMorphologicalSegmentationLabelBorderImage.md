## morphoLibJMorphologicalSegmentationLabelBorderImage
<img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_empty_logo.png"/>

Apply MorpholibJ Morphological Segmentation to an object image to produce a label image. 

The tolerance parameter specifies how deep intensity valley between local maxima can be to be ignored while flooding the regions.
With connectivity = 6 and using dams=false while computing the watershed.See also https://imagej.net/Morphological_Segmentation

Category: [Labels](https://clij.github.io/clij2-docs/reference__label)

Availability: Available in Fiji by activating the update sites clij, clij2 and clijx-assistant-extensions.
This function is part of clijx-assistant-morpholibj_-0.6.0.1.jar.

### Usage in ImageJ macro
```
Ext.CLIJx_morphoLibJMorphologicalSegmentationLabelBorderImage(Image input, Image labels_destination, Number tolerance_threshold);
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
float tolerance_threshold = 1.0;
</pre>

<pre class="highlight">
// Execute operation on GPU
clijx.morphoLibJMorphologicalSegmentationLabelBorderImage(input, labels_destination, tolerance_threshold);
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
tolerance_threshold = 1.0;
</pre>

<pre class="highlight">
% Execute operation on GPU
clijx.morphoLibJMorphologicalSegmentationLabelBorderImage(input, labels_destination, tolerance_threshold);
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

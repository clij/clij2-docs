## visualizeOutlinesOnOriginal
<img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_empty_logo.png"/>

Combines an intensity image and a label (or binary) image so that you can see segmentation outlines on the intensity image.

Categories: [Labels](https://clij.github.io/clij2-docs/reference__label), [Math](https://clij.github.io/clij2-docs/reference__math)

Availability: Available in Fiji by activating the update sites clij and clij2.
This function is part of clijx_-0.30.1.22.jar.

### Usage in ImageJ macro
```
Ext.CLIJx_visualizeOutlinesOnOriginal(Image intensity, Image labels, Image destination);
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
ClearCLBuffer intensity = clijx.push(intensityImagePlus);
ClearCLBuffer labels = clijx.push(labelsImagePlus);
destination = clijx.create(intensity);
</pre>

<pre class="highlight">
// Execute operation on GPU
clijx.visualizeOutlinesOnOriginal(intensity, labels, destination);
</pre>

<pre class="highlight">
// show result
destinationImagePlus = clijx.pull(destination);
destinationImagePlus.show();

// cleanup memory on GPU
clijx.release(intensity);
clijx.release(labels);
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
intensity = clijx.pushMat(intensity_matrix);
labels = clijx.pushMat(labels_matrix);
destination = clijx.create(intensity);
</pre>

<pre class="highlight">
% Execute operation on GPU
clijx.visualizeOutlinesOnOriginal(intensity, labels, destination);
</pre>

<pre class="highlight">
% show result
destination = clijx.pullMat(destination)

% cleanup memory on GPU
clijx.release(intensity);
clijx.release(labels);
clijx.release(destination);
</pre>

</details>



[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

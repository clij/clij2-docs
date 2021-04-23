## greyLevelAtttributeFiltering
<img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_empty_logo.png"/>

By Pradeep Rajasekhar and Robert Haase

Inspired by Grayscale attribute filtering from MorpholibJ library by David Legland & Ignacio Arganda-Carreras.

This plugin will remove components in a grayscale image based on user-specified area (for 2D: pixels) or volume (3D: voxels).
For each gray level specified in the number of bins, binary images will be generated, followed by exclusion of objects (labels)
below a minimum pixel count.
All the binary images for each gray level are combined to form the final image. The output is a grayscale image, where bright objects
below pixel count are removed.
It is recommended that low values be used for number of bins, especially for large 3D images, or it may take long time.

Category: [Filter](https://clij.github.io/clij2-docs/reference__filter)

Availability: Available in Fiji by activating the update sites clij and clij2.
This function is part of clijx_-0.30.2.0.jar.

### Usage in ImageJ macro
```
Ext.CLIJx_greyLevelAtttributeFiltering(Image source, Image destination, Number number_of_bins, Number minimum_pixel_count);
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
ClearCLBuffer source = clijx.push(sourceImagePlus);
destination = clijx.create(source);
int number_of_bins = 10;
int minimum_pixel_count = 20;
</pre>

<pre class="highlight">
// Execute operation on GPU
clijx.greyLevelAtttributeFiltering(source, destination, number_of_bins, minimum_pixel_count);
</pre>

<pre class="highlight">
// show result
destinationImagePlus = clijx.pull(destination);
destinationImagePlus.show();

// cleanup memory on GPU
clijx.release(source);
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
source = clijx.pushMat(source_matrix);
destination = clijx.create(source);
number_of_bins = 10;
minimum_pixel_count = 20;
</pre>

<pre class="highlight">
% Execute operation on GPU
clijx.greyLevelAtttributeFiltering(source, destination, number_of_bins, minimum_pixel_count);
</pre>

<pre class="highlight">
% show result
destination = clijx.pullMat(destination)

% cleanup memory on GPU
clijx.release(source);
clijx.release(destination);
</pre>

</details>



[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

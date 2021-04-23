## driftCorrectionByCentroidFixation
<img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_empty_logo.png"/>

Threshold the image stack, determines the centroid of the resulting binary image and 
translates the image stack so that its centroid sits in a defined position.

Category: [Transformations](https://clij.github.io/clij2-docs/reference__transform)

Availability: Available in Fiji by activating the update sites clij and clij2.
This function is part of clijx_-0.30.2.0.jar.

### Usage in ImageJ macro
```
Ext.CLIJx_driftCorrectionByCentroidFixation(Image input, Image destination, Number relative_center_x, Number relative_center_y, Number relative_center_z, Number threshold);
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
destination = clijx.create(input);
float relative_center_x = 1.0;
float relative_center_y = 2.0;
float relative_center_z = 3.0;
float threshold = 4.0;
</pre>

<pre class="highlight">
// Execute operation on GPU
clijx.driftCorrectionByCentroidFixation(input, destination, relative_center_x, relative_center_y, relative_center_z, threshold);
</pre>

<pre class="highlight">
// show result
destinationImagePlus = clijx.pull(destination);
destinationImagePlus.show();

// cleanup memory on GPU
clijx.release(input);
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
destination = clijx.create(input);
relative_center_x = 1.0;
relative_center_y = 2.0;
relative_center_z = 3.0;
threshold = 4.0;
</pre>

<pre class="highlight">
% Execute operation on GPU
clijx.driftCorrectionByCentroidFixation(input, destination, relative_center_x, relative_center_y, relative_center_z, threshold);
</pre>

<pre class="highlight">
% show result
destination = clijx.pullMat(destination)

% cleanup memory on GPU
clijx.release(input);
clijx.release(destination);
</pre>

</details>



[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

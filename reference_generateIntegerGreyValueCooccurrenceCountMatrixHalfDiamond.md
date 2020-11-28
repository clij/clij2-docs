## generateIntegerGreyValueCooccurrenceCountMatrixHalfDiamond
<img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_empty_logo.png"/>

Takes an image and assumes its grey values are integers. It builds up a grey-level co-occurrence matrix of neighboring (left, bottom, back) pixel intensities. 

Major parts of this operation run on the CPU.

Category: [Measurements](https://clij.github.io/clij2-docs/reference__measurement)

### Usage in ImageJ macro
```
Ext.CLIJx_generateIntegerGreyValueCooccurrenceCountMatrixHalfDiamond(Image integer_image, Image grey_value_cooccurrence_matrix_destination);
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
ClearCLBuffer integer_image = clijx.push(integer_imageImagePlus);
grey_value_cooccurrence_matrix_destination = clijx.create(integer_image);
</pre>

<pre class="highlight">
// Execute operation on GPU
clijx.generateIntegerGreyValueCooccurrenceCountMatrixHalfDiamond(integer_image, grey_value_cooccurrence_matrix_destination);
</pre>

<pre class="highlight">
// show result
grey_value_cooccurrence_matrix_destinationImagePlus = clijx.pull(grey_value_cooccurrence_matrix_destination);
grey_value_cooccurrence_matrix_destinationImagePlus.show();

// cleanup memory on GPU
clijx.release(integer_image);
clijx.release(grey_value_cooccurrence_matrix_destination);
</pre>

</details>



<details>

<summary>
Matlab
</summary>
<pre class="highlight">% init CLIJ and GPU
clijx = init_clatlabx();

% get input parameters
integer_image = clijx.pushMat(integer_image_matrix);
grey_value_cooccurrence_matrix_destination = clijx.create(integer_image);
</pre>

<pre class="highlight">
% Execute operation on GPU
clijx.generateIntegerGreyValueCooccurrenceCountMatrixHalfDiamond(integer_image, grey_value_cooccurrence_matrix_destination);
</pre>

<pre class="highlight">
% show result
grey_value_cooccurrence_matrix_destination = clijx.pullMat(grey_value_cooccurrence_matrix_destination)

% cleanup memory on GPU
clijx.release(integer_image);
clijx.release(grey_value_cooccurrence_matrix_destination);
</pre>

</details>



[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

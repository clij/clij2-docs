## crossCorrelation
<img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_empty_logo.png"/>

Performs cross correlation analysis between two images. 

The second image is shifted by deltaPos in the given dimension. The cross correlation coefficient is calculated for each pixel in a range around the given pixel with given radius in the given dimension. Together with the original images it is recommended to hand over mean filtered images using the same radius.  

Availability: Available in Fiji by activating the update sites clij and clij2.
This function is part of clijx_-0.31.0.6.jar.

### Usage in ImageJ macro
```
Ext.CLIJx_crossCorrelation(Image input1, Image meanInput1, Image input2, Image meanInput2, Image destination, Number radius, Number deltaPos, Number dimension);
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
ClearCLBuffer input1 = clijx.push(input1ImagePlus);
ClearCLBuffer meanInput1 = clijx.push(meanInput1ImagePlus);
ClearCLBuffer input2 = clijx.push(input2ImagePlus);
ClearCLBuffer meanInput2 = clijx.push(meanInput2ImagePlus);
destination = clijx.create(input1);
int radius = 10;
int deltaPos = 20;
int dimension = 30;
</pre>

<pre class="highlight">
// Execute operation on GPU
clijx.crossCorrelation(input1, meanInput1, input2, meanInput2, destination, radius, deltaPos, dimension);
</pre>

<pre class="highlight">
// show result
destinationImagePlus = clijx.pull(destination);
destinationImagePlus.show();

// cleanup memory on GPU
clijx.release(input1);
clijx.release(meanInput1);
clijx.release(input2);
clijx.release(meanInput2);
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
input1 = clijx.pushMat(input1_matrix);
meanInput1 = clijx.pushMat(meanInput1_matrix);
input2 = clijx.pushMat(input2_matrix);
meanInput2 = clijx.pushMat(meanInput2_matrix);
destination = clijx.create(input1);
radius = 10;
deltaPos = 20;
dimension = 30;
</pre>

<pre class="highlight">
% Execute operation on GPU
clijx.crossCorrelation(input1, meanInput1, input2, meanInput2, destination, radius, deltaPos, dimension);
</pre>

<pre class="highlight">
% show result
destination = clijx.pullMat(destination)

% cleanup memory on GPU
clijx.release(input1);
clijx.release(meanInput1);
clijx.release(input2);
clijx.release(meanInput2);
clijx.release(destination);
</pre>

</details>



[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

## particleImageVelocimetry
<img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_empty_logo.png"/>

For every pixel in source image 1, determine the pixel with the most similar intensity in 
 the local neighborhood with a given radius in source image 2. Write the distance in 
X, Y and Z in the three corresponding destination images.

Availability: Available in Fiji by activating the update sites clij and clij2.
This function is part of clijx_-0.31.0.6.jar.

### Usage in ImageJ macro
```
Ext.CLIJx_particleImageVelocimetry(Image source1, Image source2, Image destinationDeltaX, Image destinationDeltaY, Image destinationDeltaZ, Number maxDeltaX, Number maxDeltaY, Number maxDeltaZ);
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
ClearCLBuffer source1 = clijx.push(source1ImagePlus);
ClearCLBuffer source2 = clijx.push(source2ImagePlus);
destinationDeltaX = clijx.create(source1);
destinationDeltaY = clijx.create(source1);
destinationDeltaZ = clijx.create(source1);
int maxDeltaX = 10;
int maxDeltaY = 20;
int maxDeltaZ = 30;
</pre>

<pre class="highlight">
// Execute operation on GPU
clijx.particleImageVelocimetry(source1, source2, destinationDeltaX, destinationDeltaY, destinationDeltaZ, maxDeltaX, maxDeltaY, maxDeltaZ);
</pre>

<pre class="highlight">
// show result
destinationDeltaXImagePlus = clijx.pull(destinationDeltaX);
destinationDeltaXImagePlus.show();
destinationDeltaYImagePlus = clijx.pull(destinationDeltaY);
destinationDeltaYImagePlus.show();
destinationDeltaZImagePlus = clijx.pull(destinationDeltaZ);
destinationDeltaZImagePlus.show();

// cleanup memory on GPU
clijx.release(source1);
clijx.release(source2);
clijx.release(destinationDeltaX);
clijx.release(destinationDeltaY);
clijx.release(destinationDeltaZ);
</pre>

</details>



<details>

<summary>
Matlab
</summary>
<pre class="highlight">% init CLIJ and GPU
clijx = init_clatlabx();

% get input parameters
source1 = clijx.pushMat(source1_matrix);
source2 = clijx.pushMat(source2_matrix);
destinationDeltaX = clijx.create(source1);
destinationDeltaY = clijx.create(source1);
destinationDeltaZ = clijx.create(source1);
maxDeltaX = 10;
maxDeltaY = 20;
maxDeltaZ = 30;
</pre>

<pre class="highlight">
% Execute operation on GPU
clijx.particleImageVelocimetry(source1, source2, destinationDeltaX, destinationDeltaY, destinationDeltaZ, maxDeltaX, maxDeltaY, maxDeltaZ);
</pre>

<pre class="highlight">
% show result
destinationDeltaX = clijx.pullMat(destinationDeltaX)
destinationDeltaY = clijx.pullMat(destinationDeltaY)
destinationDeltaZ = clijx.pullMat(destinationDeltaZ)

% cleanup memory on GPU
clijx.release(source1);
clijx.release(source2);
clijx.release(destinationDeltaX);
clijx.release(destinationDeltaY);
clijx.release(destinationDeltaZ);
</pre>

</details>



[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

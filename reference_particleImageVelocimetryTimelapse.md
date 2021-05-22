## particleImageVelocimetryTimelapse
<img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_empty_logo.png"/>

Run particle image velocimetry on a 2D+t timelapse.

Availability: Available in Fiji by activating the update sites clij and clij2.
This function is part of clijx_-0.31.0.6.jar.

### Usage in ImageJ macro
```
Ext.CLIJx_particleImageVelocimetryTimelapse(Image source, Image destinationDeltaX, Image destinationDeltaY, Image destinationDeltaZ, Number maxDeltaX, Number maxDeltaY, Number maxDeltaZ, Boolean correctLocalShift);
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
destinationDeltaX = clijx.create(source);
destinationDeltaY = clijx.create(source);
destinationDeltaZ = clijx.create(source);
int maxDeltaX = 10;
int maxDeltaY = 20;
int maxDeltaZ = 30;
boolean correctLocalShift = true;
</pre>

<pre class="highlight">
// Execute operation on GPU
clijx.particleImageVelocimetryTimelapse(source, destinationDeltaX, destinationDeltaY, destinationDeltaZ, maxDeltaX, maxDeltaY, maxDeltaZ, correctLocalShift);
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
clijx.release(source);
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
source = clijx.pushMat(source_matrix);
destinationDeltaX = clijx.create(source);
destinationDeltaY = clijx.create(source);
destinationDeltaZ = clijx.create(source);
maxDeltaX = 10;
maxDeltaY = 20;
maxDeltaZ = 30;
correctLocalShift = true;
</pre>

<pre class="highlight">
% Execute operation on GPU
clijx.particleImageVelocimetryTimelapse(source, destinationDeltaX, destinationDeltaY, destinationDeltaZ, maxDeltaX, maxDeltaY, maxDeltaZ, correctLocalShift);
</pre>

<pre class="highlight">
% show result
destinationDeltaX = clijx.pullMat(destinationDeltaX)
destinationDeltaY = clijx.pullMat(destinationDeltaY)
destinationDeltaZ = clijx.pullMat(destinationDeltaZ)

% cleanup memory on GPU
clijx.release(source);
clijx.release(destinationDeltaX);
clijx.release(destinationDeltaY);
clijx.release(destinationDeltaZ);
</pre>

</details>



[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

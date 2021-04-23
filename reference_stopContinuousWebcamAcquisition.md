## stopContinuousWebcamAcquisition
<img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_empty_logo.png"/>

Stops continous acquistion from a webcam.

Availability: Available in Fiji by activating the update sites clij and clij2.
This function is part of clijx_-0.30.2.0.jar.

### Usage in ImageJ macro
```
Ext.CLIJx_stopContinuousWebcamAcquisition(Number cameraDeviceIndex);
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
int cameraDeviceIndex = 10;
</pre>

<pre class="highlight">
// Execute operation on GPU
clijx.stopContinuousWebcamAcquisition(cameraDeviceIndex);
</pre>

<pre class="highlight">
// show result

// cleanup memory on GPU
</pre>

</details>



<details>

<summary>
Matlab
</summary>
<pre class="highlight">% init CLIJ and GPU
clijx = init_clatlabx();

% get input parameters
cameraDeviceIndex = 10;
</pre>

<pre class="highlight">
% Execute operation on GPU
clijx.stopContinuousWebcamAcquisition(cameraDeviceIndex);
</pre>

<pre class="highlight">
% show result

% cleanup memory on GPU
</pre>

</details>



[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

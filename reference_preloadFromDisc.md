## preloadFromDisc
<img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_empty_logo.png"/>

This plugin takes two image filenames and loads them into RAM. The first image is returned immediately, the second image is loaded in the background and  will be returned when the plugin is called again.

 It is assumed that all images have the same size. If this is not the case, call release(image) before  getting the second image.

Availability: Available in Fiji by activating the update sites clij and clij2.
This function is part of clijx_-0.31.0.6.jar.

### Usage in ImageJ macro
```
Ext.CLIJx_preloadFromDisc(Image destination, String filename, String nextFilename, String loaderId);
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
destination = clijx.create();
</pre>

<pre class="highlight">
// Execute operation on GPU
ClearCLBuffer resultPreloadFromDisc = clijx.preloadFromDisc(destination, filename, nextFilename, loaderId);
</pre>

<pre class="highlight">
// show result
System.out.println(resultPreloadFromDisc);
destinationImagePlus = clijx.pull(destination);
destinationImagePlus.show();

// cleanup memory on GPU
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
destination = clijx.create();
</pre>

<pre class="highlight">
% Execute operation on GPU
ClearCLBuffer resultPreloadFromDisc = clijx.preloadFromDisc(destination, filename, nextFilename, loaderId);
</pre>

<pre class="highlight">
% show result
System.out.println(resultPreloadFromDisc);
destination = clijx.pullMat(destination)

% cleanup memory on GPU
clijx.release(destination);
</pre>

</details>



[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

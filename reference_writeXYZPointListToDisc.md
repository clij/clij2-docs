## writeXYZPointListToDisc
<img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_empty_logo.png"/>

Takes a point list image representing n points (n*2 for 2D points, n*3 for 3D points) and exports them in XYZ format.

Availability: Available in Fiji by activating the update sites clij and clij2.
This function is part of clijx_-0.31.0.6.jar.

### Usage in ImageJ macro
```
Ext.CLIJx_writeXYZPointListToDisc(Image pointlist, String filename);
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
ClearCLBuffer pointlist = clijx.push(pointlistImagePlus);
</pre>

<pre class="highlight">
// Execute operation on GPU
clijx.writeXYZPointListToDisc(pointlist, filename);
</pre>

<pre class="highlight">
// show result

// cleanup memory on GPU
clijx.release(pointlist);
</pre>

</details>



<details>

<summary>
Matlab
</summary>
<pre class="highlight">% init CLIJ and GPU
clijx = init_clatlabx();

% get input parameters
pointlist = clijx.pushMat(pointlist_matrix);
</pre>

<pre class="highlight">
% Execute operation on GPU
clijx.writeXYZPointListToDisc(pointlist, filename);
</pre>

<pre class="highlight">
% show result

% cleanup memory on GPU
clijx.release(pointlist);
</pre>

</details>



[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

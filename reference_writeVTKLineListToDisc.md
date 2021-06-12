## writeVTKLineListToDisc
<img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_empty_logo.png"/>

Takes a point list image representing n points (n*2 for 2D points, n*3 for 3D points) and a corresponding touch matrix , sized (n+1)*(n+1), and exports them in VTK format.

Availability: Available in Fiji by activating the update sites clij and clij2.
This function is part of clijx_-0.32.0.1.jar.

### Usage in ImageJ macro
```
Ext.CLIJx_writeVTKLineListToDisc(Image pointlist, Image touch_matrix, String filename);
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
ClearCLBuffer touch_matrix = clijx.push(touch_matrixImagePlus);
</pre>

<pre class="highlight">
// Execute operation on GPU
clijx.writeVTKLineListToDisc(pointlist, touch_matrix, filename);
</pre>

<pre class="highlight">
// show result

// cleanup memory on GPU
clijx.release(pointlist);
clijx.release(touch_matrix);
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
touch_matrix = clijx.pushMat(touch_matrix_matrix);
</pre>

<pre class="highlight">
% Execute operation on GPU
clijx.writeVTKLineListToDisc(pointlist, touch_matrix, filename);
</pre>

<pre class="highlight">
% show result

% cleanup memory on GPU
clijx.release(pointlist);
clijx.release(touch_matrix);
</pre>

</details>



[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

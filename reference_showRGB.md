## showRGB
<img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_empty_logo.png"/>

Visualises three 2D images as one RGB image

### Usage in ImageJ macro
```
Ext.CLIJx_showRGB(Image red, Image green, Image blue, String title);
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
ClearCLBuffer red = clijx.push(redImagePlus);
ClearCLBuffer green = clijx.push(greenImagePlus);
ClearCLBuffer blue = clijx.push(blueImagePlus);
</pre>

<pre class="highlight">
// Execute operation on GPU
clijx.showRGB(red, green, blue, title);
</pre>

<pre class="highlight">
// show result

// cleanup memory on GPU
clijx.release(red);
clijx.release(green);
clijx.release(blue);
</pre>

</details>



<details>

<summary>
Matlab
</summary>
<pre class="highlight">% init CLIJ and GPU
clijx = init_clatlabx();

% get input parameters
red = clijx.pushMat(red_matrix);
green = clijx.pushMat(green_matrix);
blue = clijx.pushMat(blue_matrix);
</pre>

<pre class="highlight">
% Execute operation on GPU
clijx.showRGB(red, green, blue, title);
</pre>

<pre class="highlight">
% show result

% cleanup memory on GPU
clijx.release(red);
clijx.release(green);
clijx.release(blue);
</pre>

</details>



[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

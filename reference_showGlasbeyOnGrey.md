## showGlasbeyOnGrey
<img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_empty_logo.png"/>

Visualises two 2D images as one RGB image. 

The first channel is shown in grey, the second with glasbey LUT.

Availability: Available in Fiji by activating the update sites clij and clij2.
This function is part of clijx_-0.30.1.21.jar.

### Usage in ImageJ macro
```
Ext.CLIJx_showGlasbeyOnGrey(Image red, Image labelling, String title);
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
ClearCLBuffer labelling = clijx.push(labellingImagePlus);
</pre>

<pre class="highlight">
// Execute operation on GPU
clijx.showGlasbeyOnGrey(red, labelling, title);
</pre>

<pre class="highlight">
// show result

// cleanup memory on GPU
clijx.release(red);
clijx.release(labelling);
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
labelling = clijx.pushMat(labelling_matrix);
</pre>

<pre class="highlight">
% Execute operation on GPU
clijx.showGlasbeyOnGrey(red, labelling, title);
</pre>

<pre class="highlight">
% show result

% cleanup memory on GPU
clijx.release(red);
clijx.release(labelling);
</pre>

</details>



[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

## morphoLibJRemoveLargestRegion
<img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_empty_logo.png"/>

Apply MorpholibJ Remove Border Labels to a label image.



Category: [Labels](https://clij.github.io/clij2-docs/reference__label)

Availability: Available in Fiji by activating the update sites clij, clij2 and clijx-assistant-extensions.
This function is part of clijx-assistant-morpholibj_-0.4.2.16.jar.

### Usage in ImageJ macro
```
Ext.CLIJx_morphoLibJRemoveLargestRegion(Image labels_input, Image labels_destination, Boolean left, Boolean right, Boolean top, Boolean bottom, Boolean front, Boolean back);
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
ClearCLBuffer labels_input = clijx.push(labels_inputImagePlus);
labels_destination = clijx.create(labels_input);
boolean left = true;
boolean right = false;
boolean top = false;
boolean bottom = true;
boolean front = true;
boolean back = true;
</pre>

<pre class="highlight">
// Execute operation on GPU
clijx.morphoLibJRemoveLargestRegion(labels_input, labels_destination, left, right, top, bottom, front, back);
</pre>

<pre class="highlight">
// show result
labels_destinationImagePlus = clijx.pull(labels_destination);
labels_destinationImagePlus.show();

// cleanup memory on GPU
clijx.release(labels_input);
clijx.release(labels_destination);
</pre>

</details>



<details>

<summary>
Matlab
</summary>
<pre class="highlight">% init CLIJ and GPU
clijx = init_clatlabx();

% get input parameters
labels_input = clijx.pushMat(labels_input_matrix);
labels_destination = clijx.create(labels_input);
left = true;
right = false;
top = false;
bottom = true;
front = true;
back = true;
</pre>

<pre class="highlight">
% Execute operation on GPU
clijx.morphoLibJRemoveLargestRegion(labels_input, labels_destination, left, right, top, bottom, front, back);
</pre>

<pre class="highlight">
% show result
labels_destination = clijx.pullMat(labels_destination)

% cleanup memory on GPU
clijx.release(labels_input);
clijx.release(labels_destination);
</pre>

</details>



[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

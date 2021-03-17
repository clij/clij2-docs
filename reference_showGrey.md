## showGrey
<img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_empty_logo.png"/>

Visualises a single 2D image.

Availability: Available in Fiji by activating the update sites clij and clij2.
This function is part of clijx_-0.30.1.22.jar.

### Usage in ImageJ macro
```
Ext.CLIJx_showGrey(Image input, String title);
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
ClearCLBuffer input = clijx.push(inputImagePlus);
</pre>

<pre class="highlight">
// Execute operation on GPU
ImagePlus resultShowGrey = clijx.showGrey(input, title);
</pre>

<pre class="highlight">
// show result
System.out.println(resultShowGrey);

// cleanup memory on GPU
clijx.release(input);
</pre>

</details>



<details>

<summary>
Matlab
</summary>
<pre class="highlight">% init CLIJ and GPU
clijx = init_clatlabx();

% get input parameters
input = clijx.pushMat(input_matrix);
</pre>

<pre class="highlight">
% Execute operation on GPU
ImagePlus resultShowGrey = clijx.showGrey(input, title);
</pre>

<pre class="highlight">
% show result
System.out.println(resultShowGrey);

% cleanup memory on GPU
clijx.release(input);
</pre>

</details>



[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

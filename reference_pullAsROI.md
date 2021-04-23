## pullAsROI
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_empty_logo.png"/>

Pulls a binary image from the GPU memory and puts it on the currently active ImageJ window as region of interest.

Availability: Available in Fiji by activating the update sites clij and clij2.
This function is part of clij2_-2.2.1.0.jar.

### Usage in ImageJ macro
```
Ext.CLIJ2_pullAsROI(Image binary_input);
```


### Usage in object oriented programming languages



<details>

<summary>
Java
</summary>
<pre class="highlight">// init CLIJ and GPU
import net.haesleinhuepf.clij2.CLIJ2;
import net.haesleinhuepf.clij.clearcl.ClearCLBuffer;
CLIJ2 clij2 = CLIJ2.getInstance();

// get input parameters
ClearCLBuffer binary_input = clij2.push(binary_inputImagePlus);
</pre>

<pre class="highlight">
// Execute operation on GPU
Roi resultPullAsROI = clij2.pullAsROI(binary_input);
</pre>

<pre class="highlight">
// show result
System.out.println(resultPullAsROI);

// cleanup memory on GPU
clij2.release(binary_input);
</pre>

</details>



<details>

<summary>
Matlab
</summary>
<pre class="highlight">% init CLIJ and GPU
clij2 = init_clatlab();

% get input parameters
binary_input = clij2.pushMat(binary_input_matrix);
</pre>

<pre class="highlight">
% Execute operation on GPU
Roi resultPullAsROI = clij2.pullAsROI(binary_input);
</pre>

<pre class="highlight">
% show result
System.out.println(resultPullAsROI);

% cleanup memory on GPU
clij2.release(binary_input);
</pre>

</details>



<details>

<summary>
Icy JavaScript
</summary>
<pre class="highlight">// init CLIJ and GPU
importClass(net.haesleinhuepf.clicy.CLICY);
importClass(Packages.icy.main.Icy);

clij2 = CLICY.getInstance();

// get input parameters
binary_input_sequence = getSequence();
binary_input = clij2.pushSequence(binary_input_sequence);
</pre>

<pre class="highlight">
// Execute operation on GPU
Roi resultPullAsROI = clij2.pullAsROI(binary_input);
</pre>

<pre class="highlight">
// show result
System.out.println(resultPullAsROI);

// cleanup memory on GPU
clij2.release(binary_input);
</pre>

</details>





### Example notebooks
<a href="https://clij.github.io/clij2-docs/md/superpixel_segmentation"><img src="images/language_macro.png" height="20"/></a> [superpixel_segmentation](https://clij.github.io/clij2-docs/md/superpixel_segmentation)  




### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/superpixel_segmentation.ijm"><img src="images/language_macro.png" height="20"/></a> [superpixel_segmentation.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/superpixel_segmentation.ijm)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

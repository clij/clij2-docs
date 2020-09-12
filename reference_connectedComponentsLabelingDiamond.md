## connectedComponentsLabelingDiamond
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/>

Performs connected components analysis inspecting the diamond neighborhood of every pixel to a binary image and generates a label map.

Category: [Labels](https://clij.github.io/clij2-docs/reference__label)

### Usage in ImageJ macro
```
Ext.CLIJ2_connectedComponentsLabelingDiamond(Image binary_input, Image labeling_destination);
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
labeling_destination = clij2.create(binary_input);
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.connectedComponentsLabelingDiamond(binary_input, labeling_destination);
</pre>

<pre class="highlight">
// show result
labeling_destinationImagePlus = clij2.pull(labeling_destination);
labeling_destinationImagePlus.show();

// cleanup memory on GPU
clij2.release(binary_input);
clij2.release(labeling_destination);
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
labeling_destination = clij2.create(binary_input);
</pre>

<pre class="highlight">
% Execute operation on GPU
clij2.connectedComponentsLabelingDiamond(binary_input, labeling_destination);
</pre>

<pre class="highlight">
% show result
labeling_destination = clij2.pullMat(labeling_destination)

% cleanup memory on GPU
clij2.release(binary_input);
clij2.release(labeling_destination);
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
labeling_destination = clij2.create(binary_input);
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.connectedComponentsLabelingDiamond(binary_input, labeling_destination);
</pre>

<pre class="highlight">
// show result
labeling_destination_sequence = clij2.pullSequence(labeling_destination)
Icy.addSequence(labeling_destination_sequence);
// cleanup memory on GPU
clij2.release(binary_input);
clij2.release(labeling_destination);
</pre>

</details>





### Example scripts
<a href="https://github.com/clij/clatlab/blob/master/src/main/matlab/mesh_close_points.m"><img src="images/language_matlab.png" height="20"/></a> [mesh_close_points.m](https://github.com/clij/clatlab/blob/master/src/main/matlab/mesh_close_points.m)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

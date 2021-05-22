## reduceLabelsToLabelEdges
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_empty_logo.png"/>

Takes a label map and reduces all labels to their edges. Label IDs stay the same and background will be zero.

Category: [Labels](https://clij.github.io/clij2-docs/reference__label)

Availability: Available in Fiji by activating the update sites clij and clij2.
This function is part of clij2_-2.3.0.6.jar.

### Usage in ImageJ macro
```
Ext.CLIJ2_reduceLabelsToLabelEdges(Image input_labels, Image destination_labels);
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
ClearCLBuffer input_labels = clij2.push(input_labelsImagePlus);
destination_labels = clij2.create(input_labels);
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.reduceLabelsToLabelEdges(input_labels, destination_labels);
</pre>

<pre class="highlight">
// show result
destination_labelsImagePlus = clij2.pull(destination_labels);
destination_labelsImagePlus.show();

// cleanup memory on GPU
clij2.release(input_labels);
clij2.release(destination_labels);
</pre>

</details>



<details>

<summary>
Matlab
</summary>
<pre class="highlight">% init CLIJ and GPU
clij2 = init_clatlab();

% get input parameters
input_labels = clij2.pushMat(input_labels_matrix);
destination_labels = clij2.create(input_labels);
</pre>

<pre class="highlight">
% Execute operation on GPU
clij2.reduceLabelsToLabelEdges(input_labels, destination_labels);
</pre>

<pre class="highlight">
% show result
destination_labels = clij2.pullMat(destination_labels)

% cleanup memory on GPU
clij2.release(input_labels);
clij2.release(destination_labels);
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
input_labels_sequence = getSequence();
input_labels = clij2.pushSequence(input_labels_sequence);
destination_labels = clij2.create(input_labels);
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.reduceLabelsToLabelEdges(input_labels, destination_labels);
</pre>

<pre class="highlight">
// show result
destination_labels_sequence = clij2.pullSequence(destination_labels)
Icy.addSequence(destination_labels_sequence);
// cleanup memory on GPU
clij2.release(input_labels);
clij2.release(destination_labels);
</pre>

</details>



[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

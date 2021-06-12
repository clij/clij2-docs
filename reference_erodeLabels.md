## erodeLabels
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/>

Extend labels with a given radius.

This is actually a local minimum filter applied to a label map after introducing background-gaps between labels.
In case relabel_islands is set, split objects will get new labels each. In this case, more labels might be in the result.
It is recommended to apply this operation to isotropic images only.
Warning: If labels were too small, they may be missing in the resulting label image.

Categories: [Filter](https://clij.github.io/clij2-docs/reference__filter), [Labels](https://clij.github.io/clij2-docs/reference__label)

Availability: Available in Fiji by activating the update sites clij and clij2.
This function is part of clij2_-2.5.0.1.jar.

### Usage in ImageJ macro
```
Ext.CLIJ2_erodeLabels(Image labels_input, Image labels_destination, Number radius, Boolean relabel_islands);
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
ClearCLBuffer labels_input = clij2.push(labels_inputImagePlus);
labels_destination = clij2.create(labels_input);
int radius = 10;
boolean relabel_islands = true;
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.erodeLabels(labels_input, labels_destination, radius, relabel_islands);
</pre>

<pre class="highlight">
// show result
labels_destinationImagePlus = clij2.pull(labels_destination);
labels_destinationImagePlus.show();

// cleanup memory on GPU
clij2.release(labels_input);
clij2.release(labels_destination);
</pre>

</details>



<details>

<summary>
Matlab
</summary>
<pre class="highlight">% init CLIJ and GPU
clij2 = init_clatlab();

% get input parameters
labels_input = clij2.pushMat(labels_input_matrix);
labels_destination = clij2.create(labels_input);
radius = 10;
relabel_islands = true;
</pre>

<pre class="highlight">
% Execute operation on GPU
clij2.erodeLabels(labels_input, labels_destination, radius, relabel_islands);
</pre>

<pre class="highlight">
% show result
labels_destination = clij2.pullMat(labels_destination)

% cleanup memory on GPU
clij2.release(labels_input);
clij2.release(labels_destination);
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
labels_input_sequence = getSequence();
labels_input = clij2.pushSequence(labels_input_sequence);
labels_destination = clij2.create(labels_input);
radius = 10;
relabel_islands = true;
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.erodeLabels(labels_input, labels_destination, radius, relabel_islands);
</pre>

<pre class="highlight">
// show result
labels_destination_sequence = clij2.pullSequence(labels_destination)
Icy.addSequence(labels_destination_sequence);
// cleanup memory on GPU
clij2.release(labels_input);
clij2.release(labels_destination);
</pre>

</details>



[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

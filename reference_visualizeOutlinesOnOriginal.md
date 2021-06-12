## visualizeOutlinesOnOriginal
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_empty_logo.png"/>

Combines an intensity image and a label (or binary) image so that you can see segmentation outlines on the intensity image.

Categories: [Labels](https://clij.github.io/clij2-docs/reference__label), [Math](https://clij.github.io/clij2-docs/reference__math)

Availability: Available in Fiji by activating the update sites clij and clij2.
This function is part of clij2_-2.5.0.1.jar.

### Usage in ImageJ macro
```
Ext.CLIJ2_visualizeOutlinesOnOriginal(Image intensity, Image labels, Image destination);
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
ClearCLBuffer intensity = clij2.push(intensityImagePlus);
ClearCLBuffer labels = clij2.push(labelsImagePlus);
destination = clij2.create(intensity);
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.visualizeOutlinesOnOriginal(intensity, labels, destination);
</pre>

<pre class="highlight">
// show result
destinationImagePlus = clij2.pull(destination);
destinationImagePlus.show();

// cleanup memory on GPU
clij2.release(intensity);
clij2.release(labels);
clij2.release(destination);
</pre>

</details>



<details>

<summary>
Matlab
</summary>
<pre class="highlight">% init CLIJ and GPU
clij2 = init_clatlab();

% get input parameters
intensity = clij2.pushMat(intensity_matrix);
labels = clij2.pushMat(labels_matrix);
destination = clij2.create(intensity);
</pre>

<pre class="highlight">
% Execute operation on GPU
clij2.visualizeOutlinesOnOriginal(intensity, labels, destination);
</pre>

<pre class="highlight">
% show result
destination = clij2.pullMat(destination)

% cleanup memory on GPU
clij2.release(intensity);
clij2.release(labels);
clij2.release(destination);
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
intensity_sequence = getSequence();
intensity = clij2.pushSequence(intensity_sequence);
labels_sequence = getSequence();
labels = clij2.pushSequence(labels_sequence);
destination = clij2.create(intensity);
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.visualizeOutlinesOnOriginal(intensity, labels, destination);
</pre>

<pre class="highlight">
// show result
destination_sequence = clij2.pullSequence(destination)
Icy.addSequence(destination_sequence);
// cleanup memory on GPU
clij2.release(intensity);
clij2.release(labels);
clij2.release(destination);
</pre>

</details>



[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

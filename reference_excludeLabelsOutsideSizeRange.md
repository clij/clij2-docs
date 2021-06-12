## excludeLabelsOutsideSizeRange
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_cle_logo.png"/>

Removes labels from a label map which are not within a certain size range.

Size of the labels is given as the number of pixel or voxels per label.

Categories: [Filter](https://clij.github.io/clij2-docs/reference__filter), [Labels](https://clij.github.io/clij2-docs/reference__label)

Availability: Available in Fiji by activating the update sites clij and clij2.
This function is part of clij2_-2.5.0.1.jar.

### excludeLabelsOutsideSizeRange is often followed by
* <a href="reference_excludeLabelsWithValuesOutOfRange">excludeLabelsWithValuesOutOfRange</a> (1)


### Usage in ImageJ macro
```
Ext.CLIJ2_excludeLabelsOutsideSizeRange(Image input, Image destination, Number minimum_size, Number maximum_size);
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
ClearCLBuffer input = clij2.push(inputImagePlus);
destination = clij2.create(input);
float minimum_size = 1.0;
float maximum_size = 2.0;
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.excludeLabelsOutsideSizeRange(input, destination, minimum_size, maximum_size);
</pre>

<pre class="highlight">
// show result
destinationImagePlus = clij2.pull(destination);
destinationImagePlus.show();

// cleanup memory on GPU
clij2.release(input);
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
input = clij2.pushMat(input_matrix);
destination = clij2.create(input);
minimum_size = 1.0;
maximum_size = 2.0;
</pre>

<pre class="highlight">
% Execute operation on GPU
clij2.excludeLabelsOutsideSizeRange(input, destination, minimum_size, maximum_size);
</pre>

<pre class="highlight">
% show result
destination = clij2.pullMat(destination)

% cleanup memory on GPU
clij2.release(input);
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
input_sequence = getSequence();
input = clij2.pushSequence(input_sequence);
destination = clij2.create(input);
minimum_size = 1.0;
maximum_size = 2.0;
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.excludeLabelsOutsideSizeRange(input, destination, minimum_size, maximum_size);
</pre>

<pre class="highlight">
// show result
destination_sequence = clij2.pullSequence(destination)
Icy.addSequence(destination_sequence);
// cleanup memory on GPU
clij2.release(input);
clij2.release(destination);
</pre>

</details>



<details>

<summary>
clEsperanto Python (experimental)
</summary>
<pre class="highlight">import pyclesperanto_prototype as cle

cle.exclude_labels_outside_size_range(input, destination, minimum_size, maximum_size)

</pre>



</details>





### Example notebooks
<a href="https://clij.github.io/clij2-docs/md/parametric_images"><img src="images/language_macro.png" height="20"/></a> [parametric_images](https://clij.github.io/clij2-docs/md/parametric_images)  




### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/parametric_images.ijm"><img src="images/language_macro.png" height="20"/></a> [parametric_images.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/parametric_images.ijm)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

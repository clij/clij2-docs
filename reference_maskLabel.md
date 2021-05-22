## maskLabel
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_cle_logo.png"/>

Computes a masked image by applying a label mask to an image. 

All pixel values x of image X will be copied
to the destination image in case pixel value m at the same position in the label_map image has the right index value i.

f(x,m,i) = (x if (m == i); (0 otherwise))

Categories: [Binary](https://clij.github.io/clij2-docs/reference__binary), [Filter](https://clij.github.io/clij2-docs/reference__filter), [Labels](https://clij.github.io/clij2-docs/reference__label)

Availability: Available in Fiji by activating the update sites clij and clij2.
This function is part of clij2_-2.3.0.6.jar.

### maskLabel often follows after
* <a href="reference_connectedComponentsLabeling">connectedComponentsLabeling</a> (1)
* <a href="reference_create2D">create2D</a> (1)


### Usage in ImageJ macro
```
Ext.CLIJ2_maskLabel(Image source, Image label_map, Image destination, Number label_index);
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
ClearCLBuffer source = clij2.push(sourceImagePlus);
ClearCLBuffer label_map = clij2.push(label_mapImagePlus);
destination = clij2.create(source);
float label_index = 1.0;
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.maskLabel(source, label_map, destination, label_index);
</pre>

<pre class="highlight">
// show result
destinationImagePlus = clij2.pull(destination);
destinationImagePlus.show();

// cleanup memory on GPU
clij2.release(source);
clij2.release(label_map);
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
source = clij2.pushMat(source_matrix);
label_map = clij2.pushMat(label_map_matrix);
destination = clij2.create(source);
label_index = 1.0;
</pre>

<pre class="highlight">
% Execute operation on GPU
clij2.maskLabel(source, label_map, destination, label_index);
</pre>

<pre class="highlight">
% show result
destination = clij2.pullMat(destination)

% cleanup memory on GPU
clij2.release(source);
clij2.release(label_map);
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
source_sequence = getSequence();
source = clij2.pushSequence(source_sequence);
label_map_sequence = getSequence();
label_map = clij2.pushSequence(label_map_sequence);
destination = clij2.create(source);
label_index = 1.0;
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.maskLabel(source, label_map, destination, label_index);
</pre>

<pre class="highlight">
// show result
destination_sequence = clij2.pullSequence(destination)
Icy.addSequence(destination_sequence);
// cleanup memory on GPU
clij2.release(source);
clij2.release(label_map);
clij2.release(destination);
</pre>

</details>



<details>

<summary>
clEsperanto Python (experimental)
</summary>
<pre class="highlight">import pyclesperanto_prototype as cle

cle.mask_label(source, label_map, destination, label_index)

</pre>



</details>





### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/intensity_per_label.ijm"><img src="images/language_macro.png" height="20"/></a> [intensity_per_label.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/intensity_per_label.ijm)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

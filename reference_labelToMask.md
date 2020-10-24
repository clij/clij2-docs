## labelToMask
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_empty_logo.png"/>

Masks a single label in a label map. 

Sets all pixels in the target image to 1, where the given label index was present in the label map. Other pixels are set to 0.

Categories: [Labels](https://clij.github.io/clij2-docs/reference__label), [Binary](https://clij.github.io/clij2-docs/reference__binary)

### Usage in ImageJ macro
```
Ext.CLIJ2_labelToMask(Image label_map_source, Image mask_destination, Number label_index);
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
ClearCLBuffer label_map_source = clij2.push(label_map_sourceImagePlus);
mask_destination = clij2.create(label_map_source);
float label_index = 1.0;
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.labelToMask(label_map_source, mask_destination, label_index);
</pre>

<pre class="highlight">
// show result
mask_destinationImagePlus = clij2.pull(mask_destination);
mask_destinationImagePlus.show();

// cleanup memory on GPU
clij2.release(label_map_source);
clij2.release(mask_destination);
</pre>

</details>



<details>

<summary>
Matlab
</summary>
<pre class="highlight">% init CLIJ and GPU
clij2 = init_clatlab();

% get input parameters
label_map_source = clij2.pushMat(label_map_source_matrix);
mask_destination = clij2.create(label_map_source);
label_index = 1.0;
</pre>

<pre class="highlight">
% Execute operation on GPU
clij2.labelToMask(label_map_source, mask_destination, label_index);
</pre>

<pre class="highlight">
% show result
mask_destination = clij2.pullMat(mask_destination)

% cleanup memory on GPU
clij2.release(label_map_source);
clij2.release(mask_destination);
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
label_map_source_sequence = getSequence();
label_map_source = clij2.pushSequence(label_map_source_sequence);
mask_destination = clij2.create(label_map_source);
label_index = 1.0;
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.labelToMask(label_map_source, mask_destination, label_index);
</pre>

<pre class="highlight">
// show result
mask_destination_sequence = clij2.pullSequence(mask_destination)
Icy.addSequence(mask_destination_sequence);
// cleanup memory on GPU
clij2.release(label_map_source);
clij2.release(mask_destination);
</pre>

</details>





### Example notebooks
<a href="https://clij.github.io/clij2-docs/md/working_with_rois"><img src="images/language_macro.png" height="20"/></a> [working_with_rois](https://clij.github.io/clij2-docs/md/working_with_rois)  




### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/boundingBoxes.ijm"><img src="images/language_macro.png" height="20"/></a> [boundingBoxes.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/boundingBoxes.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/center_of_mass.ijm"><img src="images/language_macro.png" height="20"/></a> [center_of_mass.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/center_of_mass.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/working_with_rois.ijm"><img src="images/language_macro.png" height="20"/></a> [working_with_rois.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/working_with_rois.ijm)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

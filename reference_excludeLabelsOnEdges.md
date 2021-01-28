## excludeLabelsOnEdges
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_cle_logo.png"/>

Removes all labels from a label map which touch the edges of the image (in X, Y and Z if the image is 3D). 

Remaining label elements are renumbered afterwards.

Categories: [Filter](https://clij.github.io/clij2-docs/reference__filter), [Labels](https://clij.github.io/clij2-docs/reference__label)

### excludeLabelsOnEdges often follows after
* <a href="reference_connectedComponentsLabelingBox">connectedComponentsLabelingBox</a> (1)


### Usage in ImageJ macro
```
Ext.CLIJ2_excludeLabelsOnEdges(Image label_map_input, Image label_map_destination);
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
ClearCLBuffer label_map_input = clij2.push(label_map_inputImagePlus);
label_map_destination = clij2.create(label_map_input);
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.excludeLabelsOnEdges(label_map_input, label_map_destination);
</pre>

<pre class="highlight">
// show result
label_map_destinationImagePlus = clij2.pull(label_map_destination);
label_map_destinationImagePlus.show();

// cleanup memory on GPU
clij2.release(label_map_input);
clij2.release(label_map_destination);
</pre>

</details>



<details>

<summary>
Matlab
</summary>
<pre class="highlight">% init CLIJ and GPU
clij2 = init_clatlab();

% get input parameters
label_map_input = clij2.pushMat(label_map_input_matrix);
label_map_destination = clij2.create(label_map_input);
</pre>

<pre class="highlight">
% Execute operation on GPU
clij2.excludeLabelsOnEdges(label_map_input, label_map_destination);
</pre>

<pre class="highlight">
% show result
label_map_destination = clij2.pullMat(label_map_destination)

% cleanup memory on GPU
clij2.release(label_map_input);
clij2.release(label_map_destination);
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
label_map_input_sequence = getSequence();
label_map_input = clij2.pushSequence(label_map_input_sequence);
label_map_destination = clij2.create(label_map_input);
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.excludeLabelsOnEdges(label_map_input, label_map_destination);
</pre>

<pre class="highlight">
// show result
label_map_destination_sequence = clij2.pullSequence(label_map_destination)
Icy.addSequence(label_map_destination_sequence);
// cleanup memory on GPU
clij2.release(label_map_input);
clij2.release(label_map_destination);
</pre>

</details>



<details>

<summary>
clEsperanto Python (experimental)
</summary>
<pre class="highlight">import pyclesperanto_prototype as cle

cle.exclude_labels_on_edges(label_map_input, label_map_destination)

</pre>



</details>





### Example notebooks
<a href="https://clij.github.io/clij2-docs/md/labeling"><img src="images/language_macro.png" height="20"/></a> [labeling](https://clij.github.io/clij2-docs/md/labeling)  




### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/excludeLabelsOnEdges.ijm"><img src="images/language_macro.png" height="20"/></a> [excludeLabelsOnEdges.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/excludeLabelsOnEdges.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/labeling.ijm"><img src="images/language_macro.png" height="20"/></a> [labeling.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/labeling.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/jython/segmentation.py"><img src="images/language_jython.png" height="20"/></a> [segmentation.py](https://github.com/clij/clij2-docs/blob/master/src/main/jython/segmentation.py)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

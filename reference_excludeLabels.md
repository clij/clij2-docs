## excludeLabels
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_empty_logo.png"/>

This operation removes labels from a labelmap and renumbers the remaining labels. 

Hand over a binary flag list vector starting with a flag for the background, continuing with label1, label2, ...

For example if you pass 0,1,0,0,1: Labels 1 and 4 will be removed (those with a 1 in the vector will be excluded). Labels 2 and 3 will be kept and renumbered to 1 and 2.

Categories: [Filter](https://clij.github.io/clij2-docs/reference__filter), [Labels](https://clij.github.io/clij2-docs/reference__label)

### excludeLabels often follows after
* <a href="reference_pushArray">pushArray</a> (2)
* <a href="reference_greaterOrEqualConstant">greaterOrEqualConstant</a> (3)


### Usage in ImageJ macro
```
Ext.CLIJ2_excludeLabels(Image binary_flaglist, Image label_map_input, Image label_map_destination);
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
ClearCLBuffer binary_flaglist = clij2.push(binary_flaglistImagePlus);
ClearCLBuffer label_map_input = clij2.push(label_map_inputImagePlus);
label_map_destination = clij2.create(binary_flaglist);
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.excludeLabels(binary_flaglist, label_map_input, label_map_destination);
</pre>

<pre class="highlight">
// show result
label_map_destinationImagePlus = clij2.pull(label_map_destination);
label_map_destinationImagePlus.show();

// cleanup memory on GPU
clij2.release(binary_flaglist);
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
binary_flaglist = clij2.pushMat(binary_flaglist_matrix);
label_map_input = clij2.pushMat(label_map_input_matrix);
label_map_destination = clij2.create(binary_flaglist);
</pre>

<pre class="highlight">
% Execute operation on GPU
clij2.excludeLabels(binary_flaglist, label_map_input, label_map_destination);
</pre>

<pre class="highlight">
% show result
label_map_destination = clij2.pullMat(label_map_destination)

% cleanup memory on GPU
clij2.release(binary_flaglist);
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
binary_flaglist_sequence = getSequence();
binary_flaglist = clij2.pushSequence(binary_flaglist_sequence);
label_map_input_sequence = getSequence();
label_map_input = clij2.pushSequence(label_map_input_sequence);
label_map_destination = clij2.create(binary_flaglist);
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.excludeLabels(binary_flaglist, label_map_input, label_map_destination);
</pre>

<pre class="highlight">
// show result
label_map_destination_sequence = clij2.pullSequence(label_map_destination)
Icy.addSequence(label_map_destination_sequence);
// cleanup memory on GPU
clij2.release(binary_flaglist);
clij2.release(label_map_input);
clij2.release(label_map_destination);
</pre>

</details>





### Example notebooks
<a href="https://clij.github.io/clij2-docs/md/labeling"><img src="images/language_macro.png" height="20"/></a> [labeling](https://clij.github.io/clij2-docs/md/labeling)  
<a href="https://clij.github.io/clij2-docs/md/superpixel_segmentation"><img src="images/language_macro.png" height="20"/></a> [superpixel_segmentation](https://clij.github.io/clij2-docs/md/superpixel_segmentation)  




### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/excludeLabelsOnEdges.ijm"><img src="images/language_macro.png" height="20"/></a> [excludeLabelsOnEdges.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/excludeLabelsOnEdges.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/excludeLabelsWithinRange.ijm"><img src="images/language_macro.png" height="20"/></a> [excludeLabelsWithinRange.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/excludeLabelsWithinRange.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/filter_label_maps.ijm"><img src="images/language_macro.png" height="20"/></a> [filter_label_maps.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/filter_label_maps.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/labeling.ijm"><img src="images/language_macro.png" height="20"/></a> [labeling.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/labeling.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/superpixel_segmentation.ijm"><img src="images/language_macro.png" height="20"/></a> [superpixel_segmentation.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/superpixel_segmentation.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/jython/segmentation.py"><img src="images/language_jython.png" height="20"/></a> [segmentation.py](https://github.com/clij/clij2-docs/blob/master/src/main/jython/segmentation.py)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

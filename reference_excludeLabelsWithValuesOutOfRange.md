## excludeLabelsWithValuesOutOfRange
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_cle_logo.png"/>

This operation removes labels from a labelmap and renumbers the remaining labels. 

Hand over a vector of values and a range specifying which labels with which values are eliminated.

Categories: [Filter](https://clij.github.io/clij2-docs/reference__filter), [Measurements](https://clij.github.io/clij2-docs/reference__measurement), [Labels](https://clij.github.io/clij2-docs/reference__label)

Availability: Available in Fiji by activating the update sites clij and clij2.
This function is part of clij2_-2.2.1.0.jar.

### excludeLabelsWithValuesOutOfRange often follows after
* <a href="reference_pushResultsTableColumn">pushResultsTableColumn</a> (1)


### Usage in ImageJ macro
```
Ext.CLIJ2_excludeLabelsWithValuesOutOfRange(Image values_vector, Image label_map_input, Image label_map_destination, Number minimum_value_range, Number maximum_value_range);
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
ClearCLBuffer values_vector = clij2.push(values_vectorImagePlus);
ClearCLBuffer label_map_input = clij2.push(label_map_inputImagePlus);
label_map_destination = clij2.create(values_vector);
float minimum_value_range = 1.0;
float maximum_value_range = 2.0;
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.excludeLabelsWithValuesOutOfRange(values_vector, label_map_input, label_map_destination, minimum_value_range, maximum_value_range);
</pre>

<pre class="highlight">
// show result
label_map_destinationImagePlus = clij2.pull(label_map_destination);
label_map_destinationImagePlus.show();

// cleanup memory on GPU
clij2.release(values_vector);
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
values_vector = clij2.pushMat(values_vector_matrix);
label_map_input = clij2.pushMat(label_map_input_matrix);
label_map_destination = clij2.create(values_vector);
minimum_value_range = 1.0;
maximum_value_range = 2.0;
</pre>

<pre class="highlight">
% Execute operation on GPU
clij2.excludeLabelsWithValuesOutOfRange(values_vector, label_map_input, label_map_destination, minimum_value_range, maximum_value_range);
</pre>

<pre class="highlight">
% show result
label_map_destination = clij2.pullMat(label_map_destination)

% cleanup memory on GPU
clij2.release(values_vector);
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
values_vector_sequence = getSequence();
values_vector = clij2.pushSequence(values_vector_sequence);
label_map_input_sequence = getSequence();
label_map_input = clij2.pushSequence(label_map_input_sequence);
label_map_destination = clij2.create(values_vector);
minimum_value_range = 1.0;
maximum_value_range = 2.0;
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.excludeLabelsWithValuesOutOfRange(values_vector, label_map_input, label_map_destination, minimum_value_range, maximum_value_range);
</pre>

<pre class="highlight">
// show result
label_map_destination_sequence = clij2.pullSequence(label_map_destination)
Icy.addSequence(label_map_destination_sequence);
// cleanup memory on GPU
clij2.release(values_vector);
clij2.release(label_map_input);
clij2.release(label_map_destination);
</pre>

</details>



<details>

<summary>
clEsperanto Python (experimental)
</summary>
<pre class="highlight">import pyclesperanto_prototype as cle

cle.exclude_labels_with_values_out_of_range(values_vector, label_map_input, label_map_destination, minimum_value_range, maximum_value_range)

</pre>



</details>





### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/excludeLabelsWithinRange.ijm"><img src="images/language_macro.png" height="20"/></a> [excludeLabelsWithinRange.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/excludeLabelsWithinRange.ijm)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

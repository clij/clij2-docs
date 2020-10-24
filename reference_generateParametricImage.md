## generateParametricImage
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/>

Take a labelmap and a vector of values to replace label 1 with the 1st value in the vector. 

Note that indexing in the vector starts at zero. The 0th entry corresponds to background in the label map.Internally this method just calls ReplaceIntensities.


Categories: [Measurements](https://clij.github.io/clij2-docs/reference__measurement),  Visualisation, [Labels](https://clij.github.io/clij2-docs/reference__label)

### Usage in ImageJ macro
```
Ext.CLIJ2_generateParametricImage(Image label_map, Image parameter_value_vector, Image parametric_image_destination);
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
ClearCLBuffer label_map = clij2.push(label_mapImagePlus);
ClearCLBuffer parameter_value_vector = clij2.push(parameter_value_vectorImagePlus);
parametric_image_destination = clij2.create(label_map);
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.generateParametricImage(label_map, parameter_value_vector, parametric_image_destination);
</pre>

<pre class="highlight">
// show result
parametric_image_destinationImagePlus = clij2.pull(parametric_image_destination);
parametric_image_destinationImagePlus.show();

// cleanup memory on GPU
clij2.release(label_map);
clij2.release(parameter_value_vector);
clij2.release(parametric_image_destination);
</pre>

</details>



<details>

<summary>
Matlab
</summary>
<pre class="highlight">% init CLIJ and GPU
clij2 = init_clatlab();

% get input parameters
label_map = clij2.pushMat(label_map_matrix);
parameter_value_vector = clij2.pushMat(parameter_value_vector_matrix);
parametric_image_destination = clij2.create(label_map);
</pre>

<pre class="highlight">
% Execute operation on GPU
clij2.generateParametricImage(label_map, parameter_value_vector, parametric_image_destination);
</pre>

<pre class="highlight">
% show result
parametric_image_destination = clij2.pullMat(parametric_image_destination)

% cleanup memory on GPU
clij2.release(label_map);
clij2.release(parameter_value_vector);
clij2.release(parametric_image_destination);
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
label_map_sequence = getSequence();
label_map = clij2.pushSequence(label_map_sequence);
parameter_value_vector_sequence = getSequence();
parameter_value_vector = clij2.pushSequence(parameter_value_vector_sequence);
parametric_image_destination = clij2.create(label_map);
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.generateParametricImage(label_map, parameter_value_vector, parametric_image_destination);
</pre>

<pre class="highlight">
// show result
parametric_image_destination_sequence = clij2.pullSequence(parametric_image_destination)
Icy.addSequence(parametric_image_destination_sequence);
// cleanup memory on GPU
clij2.release(label_map);
clij2.release(parameter_value_vector);
clij2.release(parametric_image_destination);
</pre>

</details>



[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

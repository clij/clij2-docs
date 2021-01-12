## generateJaccardIndexMatrix
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/>

Takes two labelmaps with n and m labels_2 and generates a (n+1)*(m+1) matrix where all labels_1 are set to 0 exept those where labels_2 overlap between the label maps. 

For the remaining labels_1, the value will be between 0 and 1 indicating the overlap as measured by the Jaccard Index.
Major parts of this operation run on the CPU.

Categories: [Graphs](https://clij.github.io/clij2-docs/reference__graph), [Measurements](https://clij.github.io/clij2-docs/reference__measurement)

### generateJaccardIndexMatrix often follows after
* <a href="reference_pushString">pushString</a> (2)


### generateJaccardIndexMatrix is often followed by
* <a href="reference_maximumXProjection">maximumXProjection</a> (1)


### Usage in ImageJ macro
```
Ext.CLIJ2_generateJaccardIndexMatrix(Image label_map1, Image label_map2, Image jaccard_index_matrix_destination);
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
ClearCLBuffer label_map1 = clij2.push(label_map1ImagePlus);
ClearCLBuffer label_map2 = clij2.push(label_map2ImagePlus);
jaccard_index_matrix_destination = clij2.create(label_map1);
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.generateJaccardIndexMatrix(label_map1, label_map2, jaccard_index_matrix_destination);
</pre>

<pre class="highlight">
// show result
jaccard_index_matrix_destinationImagePlus = clij2.pull(jaccard_index_matrix_destination);
jaccard_index_matrix_destinationImagePlus.show();

// cleanup memory on GPU
clij2.release(label_map1);
clij2.release(label_map2);
clij2.release(jaccard_index_matrix_destination);
</pre>

</details>



<details>

<summary>
Matlab
</summary>
<pre class="highlight">% init CLIJ and GPU
clij2 = init_clatlab();

% get input parameters
label_map1 = clij2.pushMat(label_map1_matrix);
label_map2 = clij2.pushMat(label_map2_matrix);
jaccard_index_matrix_destination = clij2.create(label_map1);
</pre>

<pre class="highlight">
% Execute operation on GPU
clij2.generateJaccardIndexMatrix(label_map1, label_map2, jaccard_index_matrix_destination);
</pre>

<pre class="highlight">
% show result
jaccard_index_matrix_destination = clij2.pullMat(jaccard_index_matrix_destination)

% cleanup memory on GPU
clij2.release(label_map1);
clij2.release(label_map2);
clij2.release(jaccard_index_matrix_destination);
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
label_map1_sequence = getSequence();
label_map1 = clij2.pushSequence(label_map1_sequence);
label_map2_sequence = getSequence();
label_map2 = clij2.pushSequence(label_map2_sequence);
jaccard_index_matrix_destination = clij2.create(label_map1);
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.generateJaccardIndexMatrix(label_map1, label_map2, jaccard_index_matrix_destination);
</pre>

<pre class="highlight">
// show result
jaccard_index_matrix_destination_sequence = clij2.pullSequence(jaccard_index_matrix_destination)
Icy.addSequence(jaccard_index_matrix_destination_sequence);
// cleanup memory on GPU
clij2.release(label_map1);
clij2.release(label_map2);
clij2.release(jaccard_index_matrix_destination);
</pre>

</details>





### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/jaccard_matrix.ijm"><img src="images/language_macro.png" height="20"/></a> [jaccard_matrix.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/jaccard_matrix.ijm)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

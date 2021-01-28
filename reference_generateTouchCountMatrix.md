## generateTouchCountMatrix
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/>

Takes a label map with n labels and generates a (n+1)*(n+1) matrix where all pixels are set the number of pixels where labels touch (diamond neighborhood). 

Major parts of this operation run on the CPU.

Categories: [Graphs](https://clij.github.io/clij2-docs/reference__graph), [Measurements](https://clij.github.io/clij2-docs/reference__measurement), [Labels](https://clij.github.io/clij2-docs/reference__label)

### Usage in ImageJ macro
```
Ext.CLIJ2_generateTouchCountMatrix(Image label_map, Image touch_count_matrix_destination);
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
touch_count_matrix_destination = clij2.create(label_map);
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.generateTouchCountMatrix(label_map, touch_count_matrix_destination);
</pre>

<pre class="highlight">
// show result
touch_count_matrix_destinationImagePlus = clij2.pull(touch_count_matrix_destination);
touch_count_matrix_destinationImagePlus.show();

// cleanup memory on GPU
clij2.release(label_map);
clij2.release(touch_count_matrix_destination);
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
touch_count_matrix_destination = clij2.create(label_map);
</pre>

<pre class="highlight">
% Execute operation on GPU
clij2.generateTouchCountMatrix(label_map, touch_count_matrix_destination);
</pre>

<pre class="highlight">
% show result
touch_count_matrix_destination = clij2.pullMat(touch_count_matrix_destination)

% cleanup memory on GPU
clij2.release(label_map);
clij2.release(touch_count_matrix_destination);
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
touch_count_matrix_destination = clij2.create(label_map);
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.generateTouchCountMatrix(label_map, touch_count_matrix_destination);
</pre>

<pre class="highlight">
// show result
touch_count_matrix_destination_sequence = clij2.pullSequence(touch_count_matrix_destination)
Icy.addSequence(touch_count_matrix_destination_sequence);
// cleanup memory on GPU
clij2.release(label_map);
clij2.release(touch_count_matrix_destination);
</pre>

</details>



[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

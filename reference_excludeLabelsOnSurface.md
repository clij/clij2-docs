## excludeLabelsOnSurface
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_empty_logo.png"/>

This operation follows a ray from a given position towards a label (or opposite direction) and checks if  there is another label between the label an the image border. 

If yes, this label is eliminated from the label map.

Categories: [Filter](https://clij.github.io/clij2-docs/reference__filter), [Labels](https://clij.github.io/clij2-docs/reference__label)

### Usage in ImageJ macro
```
Ext.CLIJ2_excludeLabelsOnSurface(Image pointlist, Image label_map_input, Image label_map_destination, Number centerX, Number centerY, Number centerZ);
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
ClearCLBuffer pointlist = clij2.push(pointlistImagePlus);
ClearCLBuffer label_map_input = clij2.push(label_map_inputImagePlus);
label_map_destination = clij2.create(pointlist);
float centerX = 1.0;
float centerY = 2.0;
float centerZ = 3.0;
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.excludeLabelsOnSurface(pointlist, label_map_input, label_map_destination, centerX, centerY, centerZ);
</pre>

<pre class="highlight">
// show result
label_map_destinationImagePlus = clij2.pull(label_map_destination);
label_map_destinationImagePlus.show();

// cleanup memory on GPU
clij2.release(pointlist);
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
pointlist = clij2.pushMat(pointlist_matrix);
label_map_input = clij2.pushMat(label_map_input_matrix);
label_map_destination = clij2.create(pointlist);
centerX = 1.0;
centerY = 2.0;
centerZ = 3.0;
</pre>

<pre class="highlight">
% Execute operation on GPU
clij2.excludeLabelsOnSurface(pointlist, label_map_input, label_map_destination, centerX, centerY, centerZ);
</pre>

<pre class="highlight">
% show result
label_map_destination = clij2.pullMat(label_map_destination)

% cleanup memory on GPU
clij2.release(pointlist);
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
pointlist_sequence = getSequence();
pointlist = clij2.pushSequence(pointlist_sequence);
label_map_input_sequence = getSequence();
label_map_input = clij2.pushSequence(label_map_input_sequence);
label_map_destination = clij2.create(pointlist);
centerX = 1.0;
centerY = 2.0;
centerZ = 3.0;
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.excludeLabelsOnSurface(pointlist, label_map_input, label_map_destination, centerX, centerY, centerZ);
</pre>

<pre class="highlight">
// show result
label_map_destination_sequence = clij2.pullSequence(label_map_destination)
Icy.addSequence(label_map_destination_sequence);
// cleanup memory on GPU
clij2.release(pointlist);
clij2.release(label_map_input);
clij2.release(label_map_destination);
</pre>

</details>



[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

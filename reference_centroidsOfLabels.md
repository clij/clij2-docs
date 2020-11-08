## centroidsOfLabels
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_empty_logo.png"/>

Determines the centroids of all labels in a label image or image stack. 

It writes the resulting  coordinates in a pointlist image. Depending on the dimensionality d of the labelmap and the number  of labels n, the pointlist image will have n*d pixels.

Category: [Measurements](https://clij.github.io/clij2-docs/reference__measurement)

### centroidsOfLabels is often followed by
* <a href="reference_paste2D">paste2D</a> (1)


### Usage in ImageJ macro
```
Ext.CLIJ2_centroidsOfLabels(Image source, Image pointlist_destination);
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
pointlist_destination = clij2.create(source);
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.centroidsOfLabels(source, pointlist_destination);
</pre>

<pre class="highlight">
// show result
pointlist_destinationImagePlus = clij2.pull(pointlist_destination);
pointlist_destinationImagePlus.show();

// cleanup memory on GPU
clij2.release(source);
clij2.release(pointlist_destination);
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
pointlist_destination = clij2.create(source);
</pre>

<pre class="highlight">
% Execute operation on GPU
clij2.centroidsOfLabels(source, pointlist_destination);
</pre>

<pre class="highlight">
% show result
pointlist_destination = clij2.pullMat(pointlist_destination)

% cleanup memory on GPU
clij2.release(source);
clij2.release(pointlist_destination);
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
pointlist_destination = clij2.create(source);
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.centroidsOfLabels(source, pointlist_destination);
</pre>

<pre class="highlight">
// show result
pointlist_destination_sequence = clij2.pullSequence(pointlist_destination)
Icy.addSequence(pointlist_destination_sequence);
// cleanup memory on GPU
clij2.release(source);
clij2.release(pointlist_destination);
</pre>

</details>





### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/centroid_visualisation.ijm"><img src="images/language_macro.png" height="20"/></a> [centroid_visualisation.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/centroid_visualisation.ijm)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

## binaryNot
<img src="images/mini_clij1_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/>

Computes a binary image (containing pixel values 0 and 1) from an image X by negating its pixel values
x using the binary NOT operator !
All pixel values except 0 in the input image are interpreted as 1.

<pre>f(x) = !x</pre>

### binaryNot often follows after
* <a href="reference_thresholdOtsu">thresholdOtsu</a> (2)


### binaryNot is often followed by
* <a href="reference_connectedComponentsLabelingBox">connectedComponentsLabelingBox</a> (2)
* <a href="reference_distanceMap">distanceMap</a> (2)


### Usage in ImageJ macro
```
Ext.CLIJ2_binaryNot(Image source, Image destination);
```




### Usage in Java


<details>

<summary>
clij2.binaryNot(source, destination);
</summary>
<pre class="highlight">// init CLIJ and GPU
import net.haesleinhuepf.clij2.CLIJ2;
import net.haesleinhuepf.clij.clearcl.ClearCLBuffer;
CLIJ2 clij2 = CLIJ2.getInstance();

// get input parameters
ClearCLBuffer source = clij2.push(sourceImagePlus);
destination = clij2.create(source);
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.binaryNot(source, destination);
</pre>

<pre class="highlight">
//show result
destinationImagePlus = clij2.pull(destination);
destinationImagePlus.show();

// cleanup memory on GPU
clij2.release(source);
clij2.release(destination);
</pre>

</details>





### Usage in Matlab


<details>

<summary>
clij2.binaryNot(source, destination);
</summary>
<pre class="highlight">% init CLIJ and GPU
clij2 = init_clatlab();

% get input parameters
source = clij2.pushMat(source_matrix);
destination = clij2.create(source);
</pre>

<pre class="highlight">
% Execute operation on GPU
clij2.binaryNot(source, destination);
</pre>

<pre class="highlight">
% show result
destination = clij2.pullMat(destination)

% cleanup memory on GPU
clij2.release(source);
clij2.release(destination);
</pre>

</details>





### Usage in Icy


<details>

<summary>
clij2.binaryNot(source, destination);
</summary>
<pre class="highlight">// init CLIJ and GPU
importClass(net.haesleinhuepf.clicy.CLICY);
importClass(Packages.icy.main.Icy);

clij2 = CLICY.getInstance();

// get input parameters
source_sequence = getSequence();source = clij2.pushSequence(source_sequence);
destination = clij2.create(source);
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.binaryNot(source, destination);
</pre>

<pre class="highlight">
// show result
destination_sequence = clij2.pullSequence(destination)
Icy.addSequence(destination_sequence
// cleanup memory on GPU
clij2.release(source);
clij2.release(destination);
</pre>

</details>





### Example notebooks
<a href="https://clij.github.io/clij2-docs/md/mean_of_touching_neighbors"><img src="images/language_macro.png" height="20"/></a> [mean_of_touching_neighbors](https://clij.github.io/clij2-docs/md/mean_of_touching_neighbors)  




### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/distance_map.ijm"><img src="images/language_macro.png" height="20"/></a> [distance_map.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/distance_map.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/mean_of_touching_neighbors.ijm"><img src="images/language_macro.png" height="20"/></a> [mean_of_touching_neighbors.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/mean_of_touching_neighbors.ijm)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

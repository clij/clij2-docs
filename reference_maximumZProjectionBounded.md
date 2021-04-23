## maximumZProjectionBounded
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_empty_logo.png"/>

Determines the maximum intensity projection of an image along Z within a given z range.

Category: [Projections](https://clij.github.io/clij2-docs/reference__project)

Availability: Available in Fiji by activating the update sites clij and clij2.
This function is part of clij2_-2.2.1.0.jar.

### Usage in ImageJ macro
```
Ext.CLIJ2_maximumZProjectionBounded(Image source, Image destination_max, Number min_z, Number max_z);
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
destination_max = clij2.create(source);
int min_z = 10;
int max_z = 20;
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.maximumZProjectionBounded(source, destination_max, min_z, max_z);
</pre>

<pre class="highlight">
// show result
destination_maxImagePlus = clij2.pull(destination_max);
destination_maxImagePlus.show();

// cleanup memory on GPU
clij2.release(source);
clij2.release(destination_max);
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
destination_max = clij2.create(source);
min_z = 10;
max_z = 20;
</pre>

<pre class="highlight">
% Execute operation on GPU
clij2.maximumZProjectionBounded(source, destination_max, min_z, max_z);
</pre>

<pre class="highlight">
% show result
destination_max = clij2.pullMat(destination_max)

% cleanup memory on GPU
clij2.release(source);
clij2.release(destination_max);
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
destination_max = clij2.create(source);
min_z = 10;
max_z = 20;
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.maximumZProjectionBounded(source, destination_max, min_z, max_z);
</pre>

<pre class="highlight">
// show result
destination_max_sequence = clij2.pullSequence(destination_max)
Icy.addSequence(destination_max_sequence);
// cleanup memory on GPU
clij2.release(source);
clij2.release(destination_max);
</pre>

</details>





### Example notebooks
<a href="https://clij.github.io/clij2-docs/md/maximumProjection"><img src="images/language_macro.png" height="20"/></a> [maximumProjection](https://clij.github.io/clij2-docs/md/maximumProjection)  




### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/maximumProjection.ijm"><img src="images/language_macro.png" height="20"/></a> [maximumProjection.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/maximumProjection.ijm)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

## mean2DBox
<img src="images/mini_clij1_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_cle_logo.png"/>

Computes the local mean average of a pixels rectangular neighborhood. 

The rectangles size is specified by 
its half-width and half-height (radius).

Categories:  Noise, [Filter](https://clij.github.io/clij2-docs/reference__filter)

Availability: Available in Fiji by activating the update sites clij and clij2.
This function is part of clij2_-2.5.0.1.jar.

### mean2DBox often follows after
* <a href="reference_absolute">absolute</a> (1)
* <a href="reference_distanceMap">distanceMap</a> (1)


### mean2DBox is often followed by
* <a href="reference_threshold">threshold</a> (1)
* <a href="reference_thresholdOtsu">thresholdOtsu</a> (1)


### Usage in ImageJ macro
```
Ext.CLIJ2_mean2DBox(Image source, Image destination, Number radius_x, Number radius_y);
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
destination = clij2.create(source);
int radius_x = 10;
int radius_y = 20;
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.mean2DBox(source, destination, radius_x, radius_y);
</pre>

<pre class="highlight">
// show result
destinationImagePlus = clij2.pull(destination);
destinationImagePlus.show();

// cleanup memory on GPU
clij2.release(source);
clij2.release(destination);
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
destination = clij2.create(source);
radius_x = 10;
radius_y = 20;
</pre>

<pre class="highlight">
% Execute operation on GPU
clij2.mean2DBox(source, destination, radius_x, radius_y);
</pre>

<pre class="highlight">
% show result
destination = clij2.pullMat(destination)

% cleanup memory on GPU
clij2.release(source);
clij2.release(destination);
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
destination = clij2.create(source);
radius_x = 10;
radius_y = 20;
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.mean2DBox(source, destination, radius_x, radius_y);
</pre>

<pre class="highlight">
// show result
destination_sequence = clij2.pullSequence(destination)
Icy.addSequence(destination_sequence);
// cleanup memory on GPU
clij2.release(source);
clij2.release(destination);
</pre>

</details>



<details>

<summary>
clEsperanto Python (experimental)
</summary>
<pre class="highlight">import pyclesperanto_prototype as cle

cle.mean_box(source, destination, radius_x, radius_y)

</pre>



</details>





### Example notebooks
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/benchmarks/benchmarking.ipynb"><img src="images/language_python.png" height="20"/></a> [benchmarking.ipynb](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/benchmarks/benchmarking.ipynb)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/benchmarks/benchmarking_some_operations.ipynb"><img src="images/language_python.png" height="20"/></a> [benchmarking_some_operations.ipynb](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/benchmarks/benchmarking_some_operations.ipynb)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/benchmarks/convolution.ipynb"><img src="images/language_python.png" height="20"/></a> [convolution.ipynb](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/benchmarks/convolution.ipynb)  




### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/create_object_outlines.ijm"><img src="images/language_macro.png" height="20"/></a> [create_object_outlines.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/create_object_outlines.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/mean2d.ijm"><img src="images/language_macro.png" height="20"/></a> [mean2d.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/mean2d.ijm)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

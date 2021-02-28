## setColumn
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_cle_logo.png"/>

Sets all pixel values x of a given column in X to a constant value v.

Category: [Math](https://clij.github.io/clij2-docs/reference__math)

Availability: Available in Fiji by activating the update sites clij and clij2.
This function is part of clij2_-2.2.0.19.jar.

### Usage in ImageJ macro
```
Ext.CLIJ2_setColumn(Image source, Number column_index, Number value);
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
int column_index = 10;
float value = 1.0;
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.setColumn(source, column_index, value);
</pre>

<pre class="highlight">
// show result

// cleanup memory on GPU
clij2.release(source);
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
column_index = 10;
value = 1.0;
</pre>

<pre class="highlight">
% Execute operation on GPU
clij2.setColumn(source, column_index, value);
</pre>

<pre class="highlight">
% show result

% cleanup memory on GPU
clij2.release(source);
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
column_index = 10;
value = 1.0;
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.setColumn(source, column_index, value);
</pre>

<pre class="highlight">
// show result

// cleanup memory on GPU
clij2.release(source);
</pre>

</details>



<details>

<summary>
clEsperanto Python (experimental)
</summary>
<pre class="highlight">import pyclesperanto_prototype as cle

cle.set_column(source, column_index, value)

</pre>



</details>





### Example notebooks
<a href="https://clij.github.io/clij2-docs/md/tribolium_morphometry"><img src="images/language_macro.png" height="20"/></a> [tribolium_morphometry](https://clij.github.io/clij2-docs/md/tribolium_morphometry)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/tribolium_morphometry/tribolium_morphometry.ipynb"><img src="images/language_python.png" height="20"/></a> [tribolium_morphometry.ipynb](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/tribolium_morphometry/tribolium_morphometry.ipynb)  




### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/rotating_sphere.ijm"><img src="images/language_macro.png" height="20"/></a> [rotating_sphere.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/rotating_sphere.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/tribolium_morphometry.ijm"><img src="images/language_macro.png" height="20"/></a> [tribolium_morphometry.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/tribolium_morphometry.ijm)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

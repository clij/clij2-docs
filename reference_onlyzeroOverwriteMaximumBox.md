## onlyzeroOverwriteMaximumBox
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_cle_logo.png"/>

Apply a local maximum filter to an image which only overwrites pixels with value 0.

### onlyzeroOverwriteMaximumBox often follows after
* <a href="reference_onlyzeroOverwriteMaximumBox">onlyzeroOverwriteMaximumBox</a> (4)


### onlyzeroOverwriteMaximumBox is often followed by
* <a href="reference_generateTouchMatrix">generateTouchMatrix</a> (1)
* <a href="reference_statisticsOfLabelledPixels">statisticsOfLabelledPixels</a> (1)
* <a href="reference_onlyzeroOverwriteMaximumBox">onlyzeroOverwriteMaximumBox</a> (4)


### Usage in ImageJ macro
```
Ext.CLIJ2_onlyzeroOverwriteMaximumBox(Image input, Image destination);
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
ClearCLBuffer input = clij2.push(inputImagePlus);
destination = clij2.create(input);
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.onlyzeroOverwriteMaximumBox(input, destination);
</pre>

<pre class="highlight">
// show result
destinationImagePlus = clij2.pull(destination);
destinationImagePlus.show();

// cleanup memory on GPU
clij2.release(input);
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
input = clij2.pushMat(input_matrix);
destination = clij2.create(input);
</pre>

<pre class="highlight">
% Execute operation on GPU
clij2.onlyzeroOverwriteMaximumBox(input, destination);
</pre>

<pre class="highlight">
% show result
destination = clij2.pullMat(destination)

% cleanup memory on GPU
clij2.release(input);
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
input_sequence = getSequence();
input = clij2.pushSequence(input_sequence);
destination = clij2.create(input);
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.onlyzeroOverwriteMaximumBox(input, destination);
</pre>

<pre class="highlight">
// show result
destination_sequence = clij2.pullSequence(destination)
Icy.addSequence(destination_sequence);
// cleanup memory on GPU
clij2.release(input);
clij2.release(destination);
</pre>

</details>



<details>

<summary>
clEsperanto Python (experimental)
</summary>
<pre class="highlight">import pyclesperanto_prototype as cle

cle.onlyzero_overwrite_maximum_box(input, destination)

</pre>



</details>





### Example notebooks
<a href="https://clij.github.io/clij2-docs/md/tribolium_morphometry"><img src="images/language_macro.png" height="20"/></a> [tribolium_morphometry](https://clij.github.io/clij2-docs/md/tribolium_morphometry)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/napari_gui/napari_dask.ipynb"><img src="images/language_python.png" height="20"/></a> [napari_dask.ipynb](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/napari_gui/napari_dask.ipynb)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/tribolium_morphometry/tribolium_morphometry.ipynb"><img src="images/language_python.png" height="20"/></a> [tribolium_morphometry.ipynb](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/tribolium_morphometry/tribolium_morphometry.ipynb)  




### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/rotating_sphere.ijm"><img src="images/language_macro.png" height="20"/></a> [rotating_sphere.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/rotating_sphere.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/tribolium_morphometry.ijm"><img src="images/language_macro.png" height="20"/></a> [tribolium_morphometry.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/tribolium_morphometry.ijm)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/tribolium_morphometry/tribolium.py"><img src="images/language_python.png" height="20"/></a> [tribolium.py](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/tribolium_morphometry/tribolium.py)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

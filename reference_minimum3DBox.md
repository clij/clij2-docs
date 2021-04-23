## minimum3DBox
<img src="images/mini_clij1_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_cle_logo.png"/>

Computes the local minimum of a pixels cube neighborhood. 

The cubes size is specified by 
its half-width, half-height and half-depth (radius).

Category: [Filter](https://clij.github.io/clij2-docs/reference__filter)

Availability: Available in Fiji by activating the update sites clij and clij2.
This function is part of clij2_-2.2.1.0.jar.

### minimum3DBox is often followed by
* <a href="reference_maximum3DBox">maximum3DBox</a> (1)


### Usage in ImageJ macro
```
Ext.CLIJ2_minimum3DBox(Image source, Image destination, Number radius_x, Number radius_y, Number radius_z);
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
int radius_z = 30;
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.minimum3DBox(source, destination, radius_x, radius_y, radius_z);
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
radius_z = 30;
</pre>

<pre class="highlight">
% Execute operation on GPU
clij2.minimum3DBox(source, destination, radius_x, radius_y, radius_z);
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
radius_z = 30;
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.minimum3DBox(source, destination, radius_x, radius_y, radius_z);
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

cle.minimum_box(source, destination, radius_x, radius_y, radius_z)

</pre>



</details>





### Example notebooks
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/segmentation/segmentation_2d_membranes.ipynb"><img src="images/language_python.png" height="20"/></a> [segmentation_2d_membranes.ipynb](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/segmentation/segmentation_2d_membranes.ipynb)  




### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/minimum.ijm"><img src="images/language_macro.png" height="20"/></a> [minimum.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/minimum.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/topHat.ijm"><img src="images/language_macro.png" height="20"/></a> [topHat.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/topHat.ijm)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

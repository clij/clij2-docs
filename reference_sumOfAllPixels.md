## sumOfAllPixels
<img src="images/mini_clij1_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_cle_logo.png"/>

Determines the sum of all pixels in a given image. 

It will be stored in a new row of ImageJs
Results table in the column 'Sum'.

### Parameters

source : Image
    The image of which all pixels or voxels will be summed.


Category: [Measurements](https://clij.github.io/clij2-docs/reference__measurement)

### Usage in ImageJ macro
```
Ext.CLIJ2_sumOfAllPixels(Image source);
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
</pre>

<pre class="highlight">
// Execute operation on GPU
double resultSumOfAllPixels = clij2.sumOfAllPixels(source);
</pre>

<pre class="highlight">
// show result
System.out.println(resultSumOfAllPixels);

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
</pre>

<pre class="highlight">
% Execute operation on GPU
double resultSumOfAllPixels = clij2.sumOfAllPixels(source);
</pre>

<pre class="highlight">
% show result
System.out.println(resultSumOfAllPixels);

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
</pre>

<pre class="highlight">
// Execute operation on GPU
double resultSumOfAllPixels = clij2.sumOfAllPixels(source);
</pre>

<pre class="highlight">
// show result
System.out.println(resultSumOfAllPixels);

// cleanup memory on GPU
clij2.release(source);
</pre>

</details>



<details>

<summary>
clEsperanto Python (experimental)
</summary>
<pre class="highlight">import pyclesperanto_prototype as cle

cle.sum_of_all_pixels(source)

</pre>



</details>





### Example notebooks
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/segmentation/voronoi_otsu_labeling.ipynb"><img src="images/language_python.png" height="20"/></a> [voronoi_otsu_labeling.ipynb](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/segmentation/voronoi_otsu_labeling.ipynb)  




### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/intensity_per_label.ijm"><img src="images/language_macro.png" height="20"/></a> [intensity_per_label.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/intensity_per_label.ijm)  
<a href="https://github.com/clij/clatlab/blob/master/src/main/matlab/mesh_close_points.m"><img src="images/language_matlab.png" height="20"/></a> [mesh_close_points.m](https://github.com/clij/clatlab/blob/master/src/main/matlab/mesh_close_points.m)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/jython/mesh_closest_points.py"><img src="images/language_jython.png" height="20"/></a> [mesh_closest_points.py](https://github.com/clij/clij2-docs/blob/master/src/main/jython/mesh_closest_points.py)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/jython/statistics.py"><img src="images/language_jython.png" height="20"/></a> [statistics.py](https://github.com/clij/clij2-docs/blob/master/src/main/jython/statistics.py)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

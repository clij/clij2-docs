## simpleITKMedian
<img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_empty_logo.png"/>

By Robert Haase, based on work by Bradley Lowekamp and the SimpleITK and ITK teams

Apply SimpleITKs Median filter to an image.

See also: https://simpleitk.org/doxygen/latest/html/classitk_1_1simple_1_1MedianImageFilter.html

Category: [Filter](https://clij.github.io/clij2-docs/reference__filter)

Availability: Available in Fiji by activating the update sites clij, clij2 and clijx-assistant-extensions.
This function is part of clijx-assistant-simpleitk_-0.4.2.16.jar.

### Usage in ImageJ macro
```
Ext.CLIJx_simpleITKMedian(Image input, Image destination, Number radius_x, Number radius_y, Number radius_z);
```


### Usage in object oriented programming languages



<details>

<summary>
Java
</summary>
<pre class="highlight">// init CLIJ and GPU
import net.haesleinhuepf.clijx.CLIJx;
import net.haesleinhuepf.clij.clearcl.ClearCLBuffer;
CLIJx clijx = CLIJx.getInstance();

// get input parameters
ClearCLBuffer input = clijx.push(inputImagePlus);
destination = clijx.create(input);
float radius_x = 1.0;
float radius_y = 2.0;
float radius_z = 3.0;
</pre>

<pre class="highlight">
// Execute operation on GPU
clijx.simpleITKMedian(input, destination, radius_x, radius_y, radius_z);
</pre>

<pre class="highlight">
// show result
destinationImagePlus = clijx.pull(destination);
destinationImagePlus.show();

// cleanup memory on GPU
clijx.release(input);
clijx.release(destination);
</pre>

</details>



<details>

<summary>
Matlab
</summary>
<pre class="highlight">% init CLIJ and GPU
clijx = init_clatlabx();

% get input parameters
input = clijx.pushMat(input_matrix);
destination = clijx.create(input);
radius_x = 1.0;
radius_y = 2.0;
radius_z = 3.0;
</pre>

<pre class="highlight">
% Execute operation on GPU
clijx.simpleITKMedian(input, destination, radius_x, radius_y, radius_z);
</pre>

<pre class="highlight">
% show result
destination = clijx.pullMat(destination)

% cleanup memory on GPU
clijx.release(input);
clijx.release(destination);
</pre>

</details>





### Example notebooks
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/neighbors/neighbors_of_neighbors.ipynb"><img src="images/language_python.png" height="20"/></a> [neighbors_of_neighbors.ipynb](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/neighbors/neighbors_of_neighbors.ipynb)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/tissues/tissue_neighborhood_quantification.ipynb"><img src="images/language_python.png" height="20"/></a> [tissue_neighborhood_quantification.ipynb](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/tissues/tissue_neighborhood_quantification.ipynb)  




### License terms
This plugin is licensed BSD3, see:  
https://github.com/clij/clijx-assistant-simpleitk/blob/master/license.txt  
The underlying SimpleITK librariy is Apache 2 licensed:  
https://github.com/SimpleITK/SimpleITK/blob/master/LICENSE

[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

## addImagesWeighted
<img src="images/mini_clij1_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_cle_logo.png"/>

Calculates the sum of pairs of pixels x and y from images X and Y weighted with factors a and b.

<pre>f(x, y, a, b) = x * a + y * b</pre>

### Parameters

summand1 : Image
    The first input image to added.
summand2 : Image
    The second image to be added.
destination : Image
    The output image where results are written into.
factor1 : float
    The constant number which will be multiplied with each pixel of summand1 before adding it.
factor2 : float
    The constant number which will be multiplied with each pixel of summand2 before adding it.


Category: [Math](https://clij.github.io/clij2-docs/reference__math)

### Usage in ImageJ macro
```
Ext.CLIJ2_addImagesWeighted(Image summand1, Image summand2, Image destination, Number factor1, Number factor2);
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
ClearCLBuffer summand1 = clij2.push(summand1ImagePlus);
ClearCLBuffer summand2 = clij2.push(summand2ImagePlus);
destination = clij2.create(summand1);
float factor1 = 1.0;
float factor2 = 2.0;
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.addImagesWeighted(summand1, summand2, destination, factor1, factor2);
</pre>

<pre class="highlight">
// show result
destinationImagePlus = clij2.pull(destination);
destinationImagePlus.show();

// cleanup memory on GPU
clij2.release(summand1);
clij2.release(summand2);
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
summand1 = clij2.pushMat(summand1_matrix);
summand2 = clij2.pushMat(summand2_matrix);
destination = clij2.create(summand1);
factor1 = 1.0;
factor2 = 2.0;
</pre>

<pre class="highlight">
% Execute operation on GPU
clij2.addImagesWeighted(summand1, summand2, destination, factor1, factor2);
</pre>

<pre class="highlight">
% show result
destination = clij2.pullMat(destination)

% cleanup memory on GPU
clij2.release(summand1);
clij2.release(summand2);
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
summand1_sequence = getSequence();
summand1 = clij2.pushSequence(summand1_sequence);
summand2_sequence = getSequence();
summand2 = clij2.pushSequence(summand2_sequence);
destination = clij2.create(summand1);
factor1 = 1.0;
factor2 = 2.0;
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.addImagesWeighted(summand1, summand2, destination, factor1, factor2);
</pre>

<pre class="highlight">
// show result
destination_sequence = clij2.pullSequence(destination)
Icy.addSequence(destination_sequence);
// cleanup memory on GPU
clij2.release(summand1);
clij2.release(summand2);
clij2.release(destination);
</pre>

</details>



<details>

<summary>
clEsperanto Python (experimental)
</summary>
<pre class="highlight">import pyclesperanto_prototype as cle

cle.add_images_weighted(summand1, summand2, destination, factor1, factor2)

</pre>



</details>





### Example notebooks
<a href="https://clij.github.io/clij2-docs/md/clij1_clij2_combination"><img src="images/language_macro.png" height="20"/></a> [clij1_clij2_combination](https://clij.github.io/clij2-docs/md/clij1_clij2_combination)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/segmentation/Segmentation_3D.ipynb"><img src="images/language_python.png" height="20"/></a> [Segmentation_3D.ipynb](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/segmentation/Segmentation_3D.ipynb)  




### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/addImages.ijm"><img src="images/language_macro.png" height="20"/></a> [addImages.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/addImages.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/addImages3D.ijm"><img src="images/language_macro.png" height="20"/></a> [addImages3D.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/addImages3D.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/clij1_clij2_combination.ijm"><img src="images/language_macro.png" height="20"/></a> [clij1_clij2_combination.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/clij1_clij2_combination.ijm)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

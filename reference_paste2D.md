## paste2D
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_cle_logo.png"/>

Pastes an image into another image at a given position.

Category: [Transformations](https://clij.github.io/clij2-docs/reference__transform)

### paste2D often follows after
* <a href="reference_pushResultsTableColumn">pushResultsTableColumn</a> (2)
* <a href="reference_histogram">histogram</a> (2)
* <a href="reference_getDimensions">getDimensions</a> (1)
* <a href="reference_countTouchingNeighbors">countTouchingNeighbors</a> (1)
* <a href="reference_centroidsOfLabels">centroidsOfLabels</a> (1)
* <a href="reference_centroidsOfBackgroundAndLabels">centroidsOfBackgroundAndLabels</a> (1)
* <a href="reference_transposeXY">transposeXY</a> (1)
* <a href="reference_flip2D">flip2D</a> (1)


### paste2D is often followed by
* <a href="reference_print">print</a> (2)
* <a href="reference_crop2D">crop2D</a> (1)
* <a href="reference_transposeXY">transposeXY</a> (2)
* <a href="reference_writeValuesToPositions">writeValuesToPositions</a> (2)
* <a href="reference_touchMatrixToMesh">touchMatrixToMesh</a> (1)


### Usage in ImageJ macro
```
Ext.CLIJ2_paste2D(Image source, Image destination, Number destination_x, Number destination_y);
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
int destination_x = 10;
int destination_y = 20;
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.paste2D(source, destination, destination_x, destination_y);
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
destination_x = 10;
destination_y = 20;
</pre>

<pre class="highlight">
% Execute operation on GPU
clij2.paste2D(source, destination, destination_x, destination_y);
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
destination_x = 10;
destination_y = 20;
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.paste2D(source, destination, destination_x, destination_y);
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

cle.paste(source, destination, destination_x, destination_y)

</pre>



</details>





### Example notebooks
<a href="https://clij.github.io/clij2-docs/md/crop_and_paste"><img src="images/language_macro.png" height="20"/></a> [crop_and_paste](https://clij.github.io/clij2-docs/md/crop_and_paste)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/basics/crop_and_paste_images.ipynb"><img src="images/language_python.png" height="20"/></a> [crop_and_paste_images.ipynb](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/basics/crop_and_paste_images.ipynb)  




### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/allocateBig2DImages.ijm"><img src="images/language_macro.png" height="20"/></a> [allocateBig2DImages.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/allocateBig2DImages.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/centroid_visualisation.ijm"><img src="images/language_macro.png" height="20"/></a> [centroid_visualisation.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/centroid_visualisation.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/crop_and_paste.ijm"><img src="images/language_macro.png" height="20"/></a> [crop_and_paste.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/crop_and_paste.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/make_super_blobs.ijm"><img src="images/language_macro.png" height="20"/></a> [make_super_blobs.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/make_super_blobs.ijm)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

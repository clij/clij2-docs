## equal
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_cle_logo.png"/>

Determines if two images A and B equal pixel wise.

<pre>f(a, b) = 1 if a == b; 0 otherwise.</pre>

### Parameters

source1 : Image
    The first image to be compared with.
source2 : Image
    The second image to be compared with the first.
destination : Image
    The resulting binary image where pixels will be 1 only if source1 and source2 equal in the given pixel.


Category: [Math](https://clij.github.io/clij2-docs/reference__math)

Availability: Available in Fiji by activating the update sites clij and clij2.
This function is part of clij2_-2.3.0.6.jar.

### equal often follows after
* <a href="reference_minimumYProjection">minimumYProjection</a> (1)
* <a href="reference_replaceIntensity">replaceIntensity</a> (1)
* <a href="reference_multiplyImages">multiplyImages</a> (1)


### equal is often followed by
* <a href="reference_binaryAnd">binaryAnd</a> (1)
* <a href="reference_touchMatrixToMesh">touchMatrixToMesh</a> (2)


### Usage in ImageJ macro
```
Ext.CLIJ2_equal(Image source1, Image source2, Image destination);
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
ClearCLBuffer source1 = clij2.push(source1ImagePlus);
ClearCLBuffer source2 = clij2.push(source2ImagePlus);
destination = clij2.create(source1);
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.equal(source1, source2, destination);
</pre>

<pre class="highlight">
// show result
destinationImagePlus = clij2.pull(destination);
destinationImagePlus.show();

// cleanup memory on GPU
clij2.release(source1);
clij2.release(source2);
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
source1 = clij2.pushMat(source1_matrix);
source2 = clij2.pushMat(source2_matrix);
destination = clij2.create(source1);
</pre>

<pre class="highlight">
% Execute operation on GPU
clij2.equal(source1, source2, destination);
</pre>

<pre class="highlight">
% show result
destination = clij2.pullMat(destination)

% cleanup memory on GPU
clij2.release(source1);
clij2.release(source2);
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
source1_sequence = getSequence();
source1 = clij2.pushSequence(source1_sequence);
source2_sequence = getSequence();
source2 = clij2.pushSequence(source2_sequence);
destination = clij2.create(source1);
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.equal(source1, source2, destination);
</pre>

<pre class="highlight">
// show result
destination_sequence = clij2.pullSequence(destination)
Icy.addSequence(destination_sequence);
// cleanup memory on GPU
clij2.release(source1);
clij2.release(source2);
clij2.release(destination);
</pre>

</details>



<details>

<summary>
clEsperanto Python (experimental)
</summary>
<pre class="highlight">import pyclesperanto_prototype as cle

cle.equal(source1, source2, destination)

</pre>



</details>





### Example notebooks
<a href="https://clij.github.io/clij2-docs/md/image_segmentation_3d"><img src="images/language_macro.png" height="20"/></a> [image_segmentation_3d](https://clij.github.io/clij2-docs/md/image_segmentation_3d)  
<a href="https://clij.github.io/clij2-docs/md/image_types"><img src="images/language_macro.png" height="20"/></a> [image_types](https://clij.github.io/clij2-docs/md/image_types)  




### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/image_segmentation_3d.ijm"><img src="images/language_macro.png" height="20"/></a> [image_segmentation_3d.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/image_segmentation_3d.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/image_types.ijm"><img src="images/language_macro.png" height="20"/></a> [image_types.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/image_types.ijm)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

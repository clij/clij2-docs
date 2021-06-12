## applyVectorField2D
<img src="images/mini_clij1_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_empty_logo.png"/>

Deforms an image according to distances provided in the given vector images.

 It is recommended to use 32-bit images for input, output and vector images.

### Parameters

source : Image
    The input image to be processed.
vector_x : Image
    Pixels in this image describe the distance in X direction pixels should be shifted during warping.
vector_y : Image
    Pixels in this image describe the distance in Y direction pixels should be shifted during warping.
destination : Image
    The output image where results are written into.


Category: [Transformations](https://clij.github.io/clij2-docs/reference__transform)

Availability: Available in Fiji by activating the update sites clij and clij2.
This function is part of clij2_-2.5.0.1.jar.

### applyVectorField2D often follows after
* <a href="reference_affineTransform2D">affineTransform2D</a> (2)


### applyVectorField2D is often followed by
* <a href="reference_copySlice">copySlice</a> (1)


### Usage in ImageJ macro
```
Ext.CLIJ2_applyVectorField2D(Image source, Image vector_x, Image vector_y, Image destination);
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
ClearCLBuffer vector_x = clij2.push(vector_xImagePlus);
ClearCLBuffer vector_y = clij2.push(vector_yImagePlus);
destination = clij2.create(source);
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.applyVectorField2D(source, vector_x, vector_y, destination);
</pre>

<pre class="highlight">
// show result
destinationImagePlus = clij2.pull(destination);
destinationImagePlus.show();

// cleanup memory on GPU
clij2.release(source);
clij2.release(vector_x);
clij2.release(vector_y);
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
vector_x = clij2.pushMat(vector_x_matrix);
vector_y = clij2.pushMat(vector_y_matrix);
destination = clij2.create(source);
</pre>

<pre class="highlight">
% Execute operation on GPU
clij2.applyVectorField2D(source, vector_x, vector_y, destination);
</pre>

<pre class="highlight">
% show result
destination = clij2.pullMat(destination)

% cleanup memory on GPU
clij2.release(source);
clij2.release(vector_x);
clij2.release(vector_y);
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
vector_x_sequence = getSequence();
vector_x = clij2.pushSequence(vector_x_sequence);
vector_y_sequence = getSequence();
vector_y = clij2.pushSequence(vector_y_sequence);
destination = clij2.create(source);
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.applyVectorField2D(source, vector_x, vector_y, destination);
</pre>

<pre class="highlight">
// show result
destination_sequence = clij2.pullSequence(destination)
Icy.addSequence(destination_sequence);
// cleanup memory on GPU
clij2.release(source);
clij2.release(vector_x);
clij2.release(vector_y);
clij2.release(destination);
</pre>

</details>





### Example notebooks
<a href="https://clij.github.io/clij2-docs/md/applyVectorFieldMD"><img src="images/language_macro.png" height="20"/></a> [applyVectorFieldMD](https://clij.github.io/clij2-docs/md/applyVectorFieldMD)  




### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/applyVectorField.ijm"><img src="images/language_macro.png" height="20"/></a> [applyVectorField.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/applyVectorField.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/applyVectorFieldMD.ijm"><img src="images/language_macro.png" height="20"/></a> [applyVectorFieldMD.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/applyVectorFieldMD.ijm)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

## applyVectorfield
![Image](images/mini_clij1_logo.png)<img src="images/mini_empty_logo.png"/>

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

Availability: Available in Fiji by activating the update site clij.
This function is part of clij-core-1.8.0.6.jar.

### Usage in ImageJ macro
```
Ext.CLIJ_applyVectorfield(Image source, Image vector_x, Image vector_y, Image destination);
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
ClearCLBuffer source = clijx.push(sourceImagePlus);
ClearCLBuffer vector_x = clijx.push(vector_xImagePlus);
ClearCLBuffer vector_y = clijx.push(vector_yImagePlus);
destination = clijx.create(source);
</pre>

<pre class="highlight">
// Execute operation on GPU
clijx.applyVectorfield(source, vector_x, vector_y, destination);
</pre>

<pre class="highlight">
// show result
destinationImagePlus = clijx.pull(destination);
destinationImagePlus.show();

// cleanup memory on GPU
clijx.release(source);
clijx.release(vector_x);
clijx.release(vector_y);
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
source = clijx.pushMat(source_matrix);
vector_x = clijx.pushMat(vector_x_matrix);
vector_y = clijx.pushMat(vector_y_matrix);
destination = clijx.create(source);
</pre>

<pre class="highlight">
% Execute operation on GPU
clijx.applyVectorfield(source, vector_x, vector_y, destination);
</pre>

<pre class="highlight">
% show result
destination = clijx.pullMat(destination)

% cleanup memory on GPU
clijx.release(source);
clijx.release(vector_x);
clijx.release(vector_y);
clijx.release(destination);
</pre>

</details>





### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/jython/applyVectorField.py"><img src="images/language_jython.png" height="20"/></a> [applyVectorField.py](https://github.com/clij/clij2-docs/blob/master/src/main/jython/applyVectorField.py)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

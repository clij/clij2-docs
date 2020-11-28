## applyVectorfield
![Image](images/mini_clij1_logo.png)<img src="images/mini_empty_logo.png"/>

Deforms an image according to distances provided in the given vector images.

 It is recommended to use 32-bit images for input, output and vector images. 

Category: [Transformations](https://clij.github.io/clij2-docs/reference__transform)

### Usage in ImageJ macro
```
Ext.CLIJ_applyVectorfield(Image source, Image vectorX, Image vectorY, Image destination);
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
ClearCLBuffer vectorX = clijx.push(vectorXImagePlus);
ClearCLBuffer vectorY = clijx.push(vectorYImagePlus);
destination = clijx.create(source);
</pre>

<pre class="highlight">
// Execute operation on GPU
clijx.applyVectorfield(source, vectorX, vectorY, destination);
</pre>

<pre class="highlight">
// show result
destinationImagePlus = clijx.pull(destination);
destinationImagePlus.show();

// cleanup memory on GPU
clijx.release(source);
clijx.release(vectorX);
clijx.release(vectorY);
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
vectorX = clijx.pushMat(vectorX_matrix);
vectorY = clijx.pushMat(vectorY_matrix);
destination = clijx.create(source);
</pre>

<pre class="highlight">
% Execute operation on GPU
clijx.applyVectorfield(source, vectorX, vectorY, destination);
</pre>

<pre class="highlight">
% show result
destination = clijx.pullMat(destination)

% cleanup memory on GPU
clijx.release(source);
clijx.release(vectorX);
clijx.release(vectorY);
clijx.release(destination);
</pre>

</details>





### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/jython/applyVectorField.py"><img src="images/language_jython.png" height="20"/></a> [applyVectorField.py](https://github.com/clij/clij2-docs/blob/master/src/main/jython/applyVectorField.py)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

## differenceOfGaussian3D
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/>

Applies Gaussian blur to the input image twice with different sigma values resulting in two images which are then subtracted from each other.

It is recommended to apply this operation to images of type Float (32 bit) as results might be negative.

### differenceOfGaussian3D often follows after
* <a href="reference_convertFloat">convertFloat</a> (2)


### differenceOfGaussian3D is often followed by
* <a href="reference_maximumImageAndScalar">maximumImageAndScalar</a> (2)


### Usage in ImageJ macro
```
Ext.CLIJ2_differenceOfGaussian3D(Image input, ByRef Image destination, Number sigma1x, Number sigma1y, Number sigma1z, Number sigma2x, Number sigma2y, Number sigma2z);
```




### Usage in Java


<details>

<summary>
clij2.differenceOfGaussian3D(input, destination, sigma1x, sigma1y, sigma1z, sigma2x, sigma2y, sigma2z);
</summary>
<pre class="highlight">// init CLIJ and GPU
import net.haesleinhuepf.clij2.CLIJ2;
import net.haesleinhuepf.clij.clearcl.ClearCLBuffer;
CLIJ2 clij2 = CLIJ2.getInstance();

// get input parameters
ClearCLBuffer input = clij2.push(inputImagePlus);
destination = clij2.create(input);
float sigma1x = 1.0;
float sigma1y = 2.0;
float sigma1z = 3.0;
float sigma2x = 4.0;
float sigma2y = 5.0;
float sigma2z = 6.0;
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.differenceOfGaussian3D(input, destination, sigma1x, sigma1y, sigma1z, sigma2x, sigma2y, sigma2z);
</pre>

<pre class="highlight">
//show result
destinationImagePlus = clij2.pull(destination);
destinationImagePlus.show();

// cleanup memory on GPU
clij2.release(input);
clij2.release(destination);
</pre>

</details>





### Usage in Matlab


<details>

<summary>
clij2.differenceOfGaussian3D(input, destination, sigma1x, sigma1y, sigma1z, sigma2x, sigma2y, sigma2z);
</summary>
<pre class="highlight">% init CLIJ and GPU
clij2 = init_clatlab();

% get input parameters
input = clij2.pushMat(input_matrix);
destination = clij2.create(input);
sigma1x = 1.0;
sigma1y = 2.0;
sigma1z = 3.0;
sigma2x = 4.0;
sigma2y = 5.0;
sigma2z = 6.0;
</pre>

<pre class="highlight">
% Execute operation on GPU
clij2.differenceOfGaussian3D(input, destination, sigma1x, sigma1y, sigma1z, sigma2x, sigma2y, sigma2z);
</pre>

<pre class="highlight">
% show result
destination = clij2.pullMat(destination)

% cleanup memory on GPU
clij2.release(input);
clij2.release(destination);
</pre>

</details>





### Usage in Icy


<details>

<summary>
clij2.differenceOfGaussian3D(input, destination, sigma1x, sigma1y, sigma1z, sigma2x, sigma2y, sigma2z);
</summary>
<pre class="highlight">// init CLIJ and GPU
importClass(net.haesleinhuepf.clicy.CLICY);
importClass(Packages.icy.main.Icy);

clij2 = CLICY.getInstance();

// get input parameters
input_sequence = getSequence();
input = clij2.pushSequence(input_sequence);
destination = clij2.create(input);
sigma1x = 1.0;
sigma1y = 2.0;
sigma1z = 3.0;
sigma2x = 4.0;
sigma2y = 5.0;
sigma2z = 6.0;
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.differenceOfGaussian3D(input, destination, sigma1x, sigma1y, sigma1z, sigma2x, sigma2y, sigma2z);
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





### Example notebooks
<a href="https://clij.github.io/clij2-docs/md/drosophila_max_cylinder_projection"><img src="images/language_macro.png" height="20"/></a> [drosophila_max_cylinder_projection](https://clij.github.io/clij2-docs/md/drosophila_max_cylinder_projection)  




### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/drosophila_max_cylinder_projection.ijm"><img src="images/language_macro.png" height="20"/></a> [drosophila_max_cylinder_projection.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/drosophila_max_cylinder_projection.ijm)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

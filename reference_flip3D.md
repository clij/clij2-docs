## flip3D
<img src="images/mini_clij1_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/>

Flips an image in X, Y and/or Z direction depending on boolean flags.

### Usage in ImageJ macro
```
Ext.CLIJ2_flip3D(Image source, Image destination, Boolean flipX, Boolean flipY, Boolean flipZ);
```




### Usage in Java


<details>

<summary>
clij2.flip3D(source, destination, flipX, flipY, flipZ);
</summary>
<pre class="highlight">// init CLIJ and GPU
import net.haesleinhuepf.clij2.CLIJ2;
import net.haesleinhuepf.clij.clearcl.ClearCLBuffer;
CLIJ2 clij2 = CLIJ2.getInstance();

// get input parameters
ClearCLBuffer source = clij2.push(sourceImagePlus);
destination = clij2.create(source);
boolean flipX = true;
boolean flipY = false;
boolean flipZ = false;
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.flip3D(source, destination, flipX, flipY, flipZ);
</pre>

<pre class="highlight">
//show result
destinationImagePlus = clij2.pull(destination);
destinationImagePlus.show();

// cleanup memory on GPU
clij2.release(source);
clij2.release(destination);
</pre>

</details>





### Usage in Matlab


<details>

<summary>
clij2.flip3D(source, destination, flipX, flipY, flipZ);
</summary>
<pre class="highlight">% init CLIJ and GPU
clij2 = init_clatlab();

% get input parameters
source = clij2.pushMat(source_matrix);
destination = clij2.create(source);
flipX = true;
flipY = false;
flipZ = false;
</pre>

<pre class="highlight">
% Execute operation on GPU
clij2.flip3D(source, destination, flipX, flipY, flipZ);
</pre>

<pre class="highlight">
% show result
destination = clij2.pullMat(destination)

% cleanup memory on GPU
clij2.release(source);
clij2.release(destination);
</pre>

</details>





### Usage in Icy


<details>

<summary>
clij2.flip3D(source, destination, flipX, flipY, flipZ);
</summary>
<pre class="highlight">// init CLIJ and GPU
importClass(net.haesleinhuepf.clicy.CLICY);
importClass(Packages.icy.main.Icy);

clij2 = CLICY.getInstance();

// get input parameters
source_sequence = getSequence();
source = clij2.pushSequence(source_sequence);
destination = clij2.create(source);
flipX = true;
flipY = false;
flipZ = false;
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.flip3D(source, destination, flipX, flipY, flipZ);
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





### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/flip.ijm"><img src="images/language_macro.png" height="20"/></a> [flip.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/flip.ijm)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

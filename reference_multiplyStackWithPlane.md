## multiplyStackWithPlane
<img src="images/mini_clij1_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/>

Multiplies all pairs of pixel values x and y from an image stack X and a 2D image Y. x and y are at 
the same spatial position within a plane.

<pre>f(x, y) = x * y</pre>

### Usage in ImageJ macro
```
Ext.CLIJ2_multiplyStackWithPlane(Image sourceStack, Image sourcePlane, Image destination);
```


### Usage in Java


<details>

<summary>
clij2.multiplyStackWithPlane(sourceStack, sourcePlane, destination);
</summary>
<pre class="highlight">// init CLIJ and GPU
import net.haesleinhuepf.clij2.CLIJ2;
import net.haesleinhuepf.clij.clearcl.ClearCLBuffer;
CLIJ2 clij2 = CLIJ2.getInstance();

// get input parameters
ClearCLBuffer sourceStack = clij2.push(sourceStackImagePlus);
ClearCLBuffer sourcePlane = clij2.push(sourcePlaneImagePlus);
destination = clij2.create(sourceStack);
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.multiplyStackWithPlane(sourceStack, sourcePlane, destination);
</pre>

<pre class="highlight">
//show result
destinationImagePlus = clij2.pull(destination);
destinationImagePlus.show();

// cleanup memory on GPU
clij2.release(sourceStack);
clij2.release(sourcePlane);
clij2.release(destination);
</pre>

</details>



### Usage in Matlab


<details>

<summary>
clij2.multiplyStackWithPlane(sourceStack, sourcePlane, destination);
</summary>
<pre class="highlight">% init CLIJ and GPU
clij2 = init_clatlab();

% get input parameters
sourceStack = clij2.pushMat(sourceStack_matrix);
sourcePlane = clij2.pushMat(sourcePlane_matrix);
destination = clij2.create(sourceStack);
</pre>

<pre class="highlight">
% Execute operation on GPU
clij2.multiplyStackWithPlane(sourceStack, sourcePlane, destination);
</pre>

<pre class="highlight">
% show result
destination = clij2.pullMat(destination)

% cleanup memory on GPU
clij2.release(sourceStack);
clij2.release(sourcePlane);
clij2.release(destination);
</pre>

</details>



### Usage in Icy


<details>

<summary>
clij2.multiplyStackWithPlane(sourceStack, sourcePlane, destination);
</summary>
<pre class="highlight">// init CLIJ and GPU
importClass(net.haesleinhuepf.clicy.CLICY);
importClass(Packages.icy.main.Icy);

clij2 = CLICY.getInstance();

// get input parameters
sourceStack_sequence = getSequence();sourceStack = clij2.pushSequence(sourceStack_sequence);
sourcePlane_sequence = getSequence();sourcePlane = clij2.pushSequence(sourcePlane_sequence);
destination = clij2.create(sourceStack);
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.multiplyStackWithPlane(sourceStack, sourcePlane, destination);
</pre>

<pre class="highlight">
// show result
destination_sequence = clij2.pullSequence(destination)
Icy.addSequence(destination_sequence
// cleanup memory on GPU
clij2.release(sourceStack);
clij2.release(sourcePlane);
clij2.release(destination);
</pre>

</details>



[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

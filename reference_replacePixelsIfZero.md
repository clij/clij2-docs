## replacePixelsIfZero
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_empty_logo.png"/>

Replaces pixel values x with y in case x is zero.

This functionality is comparable to ImageJs image calculator operator 'transparent zero'.

### Usage in ImageJ macro
```
Ext.CLIJ2_replacePixelsIfZero(Image input1, Image input2, Image destination);
```




### Usage in Java


<details>

<summary>
clij2.replacePixelsIfZero(input1, input2, destination);
</summary>
<pre class="highlight">// init CLIJ and GPU
import net.haesleinhuepf.clij2.CLIJ2;
import net.haesleinhuepf.clij.clearcl.ClearCLBuffer;
CLIJ2 clij2 = CLIJ2.getInstance();

// get input parameters
ClearCLBuffer input1 = clij2.push(input1ImagePlus);
ClearCLBuffer input2 = clij2.push(input2ImagePlus);
destination = clij2.create(input1);
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.replacePixelsIfZero(input1, input2, destination);
</pre>

<pre class="highlight">
//show result
destinationImagePlus = clij2.pull(destination);
destinationImagePlus.show();

// cleanup memory on GPU
clij2.release(input1);
clij2.release(input2);
clij2.release(destination);
</pre>

</details>





### Usage in Matlab


<details>

<summary>
clij2.replacePixelsIfZero(input1, input2, destination);
</summary>
<pre class="highlight">% init CLIJ and GPU
clij2 = init_clatlab();

% get input parameters
input1 = clij2.pushMat(input1_matrix);
input2 = clij2.pushMat(input2_matrix);
destination = clij2.create(input1);
</pre>

<pre class="highlight">
% Execute operation on GPU
clij2.replacePixelsIfZero(input1, input2, destination);
</pre>

<pre class="highlight">
% show result
destination = clij2.pullMat(destination)

% cleanup memory on GPU
clij2.release(input1);
clij2.release(input2);
clij2.release(destination);
</pre>

</details>





### Usage in Icy


<details>

<summary>
clij2.replacePixelsIfZero(input1, input2, destination);
</summary>
<pre class="highlight">// init CLIJ and GPU
importClass(net.haesleinhuepf.clicy.CLICY);
importClass(Packages.icy.main.Icy);

clij2 = CLICY.getInstance();

// get input parameters
input1_sequence = getSequence();
input1 = clij2.pushSequence(input1_sequence);
input2_sequence = getSequence();
input2 = clij2.pushSequence(input2_sequence);
destination = clij2.create(input1);
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.replacePixelsIfZero(input1, input2, destination);
</pre>

<pre class="highlight">
// show result
destination_sequence = clij2.pullSequence(destination)
Icy.addSequence(destination_sequence);
// cleanup memory on GPU
clij2.release(input1);
clij2.release(input2);
clij2.release(destination);
</pre>

</details>



[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

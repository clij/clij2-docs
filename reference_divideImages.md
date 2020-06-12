## divideImages
<img src="images/mini_clij1_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/>

Divides two images X and Y by each other pixel wise. 

<pre>f(x, y) = x / y</pre>

### Usage in ImageJ macro
```
Ext.CLIJ2_divideImages(Image divident, Image divisor, Image destination);
```




### Usage in Java


<details>

<summary>
clij2.divideImages(divident, divisor, destination);
</summary>
<pre class="highlight">// init CLIJ and GPU
import net.haesleinhuepf.clij2.CLIJ2;
import net.haesleinhuepf.clij.clearcl.ClearCLBuffer;
CLIJ2 clij2 = CLIJ2.getInstance();

// get input parameters
ClearCLBuffer divident = clij2.push(dividentImagePlus);
ClearCLBuffer divisor = clij2.push(divisorImagePlus);
destination = clij2.create(divident);
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.divideImages(divident, divisor, destination);
</pre>

<pre class="highlight">
//show result
destinationImagePlus = clij2.pull(destination);
destinationImagePlus.show();

// cleanup memory on GPU
clij2.release(divident);
clij2.release(divisor);
clij2.release(destination);
</pre>

</details>





### Usage in Matlab


<details>

<summary>
clij2.divideImages(divident, divisor, destination);
</summary>
<pre class="highlight">% init CLIJ and GPU
clij2 = init_clatlab();

% get input parameters
divident = clij2.pushMat(divident_matrix);
divisor = clij2.pushMat(divisor_matrix);
destination = clij2.create(divident);
</pre>

<pre class="highlight">
% Execute operation on GPU
clij2.divideImages(divident, divisor, destination);
</pre>

<pre class="highlight">
% show result
destination = clij2.pullMat(destination)

% cleanup memory on GPU
clij2.release(divident);
clij2.release(divisor);
clij2.release(destination);
</pre>

</details>





### Usage in Icy


<details>

<summary>
clij2.divideImages(divident, divisor, destination);
</summary>
<pre class="highlight">// init CLIJ and GPU
importClass(net.haesleinhuepf.clicy.CLICY);
importClass(Packages.icy.main.Icy);

clij2 = CLICY.getInstance();

// get input parameters
divident_sequence = getSequence();
divident = clij2.pushSequence(divident_sequence);
divisor_sequence = getSequence();
divisor = clij2.pushSequence(divisor_sequence);
destination = clij2.create(divident);
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.divideImages(divident, divisor, destination);
</pre>

<pre class="highlight">
// show result
destination_sequence = clij2.pullSequence(destination)
Icy.addSequence(destination_sequence);
// cleanup memory on GPU
clij2.release(divident);
clij2.release(divisor);
clij2.release(destination);
</pre>

</details>



[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

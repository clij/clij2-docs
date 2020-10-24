## matrixEqual
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/>

Checks if all elements of a matrix are different by less than or equal to a given tolerance. 

The result will be put in the results table in column "MatrixEqual" as 1 if yes and 0 otherwise.

Category: [Math](https://clij.github.io/clij2-docs/reference__math)

### Usage in ImageJ macro
```
Ext.CLIJ2_matrixEqual(Image input1, Image input2, Number tolerance);
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
ClearCLBuffer input1 = clij2.push(input1ImagePlus);
ClearCLBuffer input2 = clij2.push(input2ImagePlus);
float tolerance = 1.0;
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.matrixEqual(input1, input2, tolerance);
</pre>

<pre class="highlight">
// show result

// cleanup memory on GPU
clij2.release(input1);
clij2.release(input2);
</pre>

</details>



<details>

<summary>
Matlab
</summary>
<pre class="highlight">% init CLIJ and GPU
clij2 = init_clatlab();

% get input parameters
input1 = clij2.pushMat(input1_matrix);
input2 = clij2.pushMat(input2_matrix);
tolerance = 1.0;
</pre>

<pre class="highlight">
% Execute operation on GPU
clij2.matrixEqual(input1, input2, tolerance);
</pre>

<pre class="highlight">
% show result

% cleanup memory on GPU
clij2.release(input1);
clij2.release(input2);
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
input1_sequence = getSequence();
input1 = clij2.pushSequence(input1_sequence);
input2_sequence = getSequence();
input2 = clij2.pushSequence(input2_sequence);
tolerance = 1.0;
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.matrixEqual(input1, input2, tolerance);
</pre>

<pre class="highlight">
// show result

// cleanup memory on GPU
clij2.release(input1);
clij2.release(input2);
</pre>

</details>



[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

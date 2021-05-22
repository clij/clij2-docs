## reduceStack
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_cle_logo.png"/>

Reduces the number of slices in a stack by a given factor.
With the offset you have control which slices stay: 
* With factor 3 and offset 0, slices 0, 3, 6,... are kept. * With factor 4 and offset 1, slices 1, 5, 9,... are kept.

Category: [Transformations](https://clij.github.io/clij2-docs/reference__transform)

Availability: Available in Fiji by activating the update sites clij and clij2.
This function is part of clij2_-2.3.0.6.jar.

### reduceStack is often followed by
* <a href="reference_combineHorizontally">combineHorizontally</a> (4)


### Usage in ImageJ macro
```
Ext.CLIJ2_reduceStack(Image input, Image destination, Number reduction_factor, Number offset);
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
ClearCLBuffer input = clij2.push(inputImagePlus);
destination = clij2.create(input);
int reduction_factor = 10;
int offset = 20;
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.reduceStack(input, destination, reduction_factor, offset);
</pre>

<pre class="highlight">
// show result
destinationImagePlus = clij2.pull(destination);
destinationImagePlus.show();

// cleanup memory on GPU
clij2.release(input);
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
input = clij2.pushMat(input_matrix);
destination = clij2.create(input);
reduction_factor = 10;
offset = 20;
</pre>

<pre class="highlight">
% Execute operation on GPU
clij2.reduceStack(input, destination, reduction_factor, offset);
</pre>

<pre class="highlight">
% show result
destination = clij2.pullMat(destination)

% cleanup memory on GPU
clij2.release(input);
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
input_sequence = getSequence();
input = clij2.pushSequence(input_sequence);
destination = clij2.create(input);
reduction_factor = 10;
offset = 20;
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.reduceStack(input, destination, reduction_factor, offset);
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



<details>

<summary>
clEsperanto Python (experimental)
</summary>
<pre class="highlight">import pyclesperanto_prototype as cle

cle.reduce_stack(input, destination, reduction_factor, offset)

</pre>



</details>





### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/reduceAndCombineImages.ijm"><img src="images/language_macro.png" height="20"/></a> [reduceAndCombineImages.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/reduceAndCombineImages.ijm)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

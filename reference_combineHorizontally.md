## combineHorizontally
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_cle_logo.png"/>

Combines two images or stacks in X.

Category: [Transformations](https://clij.github.io/clij2-docs/reference__transform)

Availability: Available in Fiji by activating the update sites clij and clij2.
This function is part of clij2_-2.2.1.0.jar.

### combineHorizontally often follows after
* <a href="reference_reduceStack">reduceStack</a> (4)


### combineHorizontally is often followed by
* <a href="reference_combineVertically">combineVertically</a> (2)


### Usage in ImageJ macro
```
Ext.CLIJ2_combineHorizontally(Image stack1, Image stack2, Image destination);
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
ClearCLBuffer stack1 = clij2.push(stack1ImagePlus);
ClearCLBuffer stack2 = clij2.push(stack2ImagePlus);
destination = clij2.create(stack1);
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.combineHorizontally(stack1, stack2, destination);
</pre>

<pre class="highlight">
// show result
destinationImagePlus = clij2.pull(destination);
destinationImagePlus.show();

// cleanup memory on GPU
clij2.release(stack1);
clij2.release(stack2);
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
stack1 = clij2.pushMat(stack1_matrix);
stack2 = clij2.pushMat(stack2_matrix);
destination = clij2.create(stack1);
</pre>

<pre class="highlight">
% Execute operation on GPU
clij2.combineHorizontally(stack1, stack2, destination);
</pre>

<pre class="highlight">
% show result
destination = clij2.pullMat(destination)

% cleanup memory on GPU
clij2.release(stack1);
clij2.release(stack2);
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
stack1_sequence = getSequence();
stack1 = clij2.pushSequence(stack1_sequence);
stack2_sequence = getSequence();
stack2 = clij2.pushSequence(stack2_sequence);
destination = clij2.create(stack1);
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.combineHorizontally(stack1, stack2, destination);
</pre>

<pre class="highlight">
// show result
destination_sequence = clij2.pullSequence(destination)
Icy.addSequence(destination_sequence);
// cleanup memory on GPU
clij2.release(stack1);
clij2.release(stack2);
clij2.release(destination);
</pre>

</details>



<details>

<summary>
clEsperanto Python (experimental)
</summary>
<pre class="highlight">import pyclesperanto_prototype as cle

cle.combine_horizontally(stack1, stack2, destination)

</pre>



</details>





### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/reduceAndCombineImages.ijm"><img src="images/language_macro.png" height="20"/></a> [reduceAndCombineImages.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/reduceAndCombineImages.ijm)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

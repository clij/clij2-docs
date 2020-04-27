## closingBox
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/>

Apply a binary closing to the input image by calling n dilations and n erosions subsequenntly.

### Usage in ImageJ macro
```
Ext.CLIJ2_closingBox(Image input, ByRef Image destination, Number number_of_dilations_and_erosions);
```


### Usage in Java


<details>

<summary>
clij2.closingBox(input, destination, number_of_dilations_and_erosions);
</summary>
<pre class="highlight">// init CLIJ and GPU
import net.haesleinhuepf.clij2.CLIJ2;
import net.haesleinhuepf.clij.clearcl.ClearCLBuffer;
CLIJ2 clij2 = CLIJ2.getInstance();

// get input parameters
ClearCLBuffer input = clij2.push(inputImagePlus);
destination = clij2.create(input);
int number_of_dilations_and_erosions = 10;
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.closingBox(input, destination, number_of_dilations_and_erosions);
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
clij2.closingBox(input, destination, number_of_dilations_and_erosions);
</summary>
<pre class="highlight">% init CLIJ and GPU
clij2 = init_clatlab();

% get input parameters
input = clij2.pushMat(input_matrix);
destination = clij2.create(input);
number_of_dilations_and_erosions = 10;
</pre>

<pre class="highlight">
% Execute operation on GPU
clij2.closingBox(input, destination, number_of_dilations_and_erosions);
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
clij2.closingBox(input, destination, number_of_dilations_and_erosions);
</summary>
<pre class="highlight">// init CLIJ and GPU
importClass(net.haesleinhuepf.clicy.CLICY);
importClass(Packages.icy.main.Icy);

clij2 = CLICY.getInstance();

// get input parameters
input_sequence = getSequence();input = clij2.pushSequence(input_sequence);
destination = clij2.create(input);
number_of_dilations_and_erosions = 10;
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.closingBox(input, destination, number_of_dilations_and_erosions);
</pre>

<pre class="highlight">
// show result
destination_sequence = clij2.pullSequence(destination)
Icy.addSequence(destination_sequence
// cleanup memory on GPU
clij2.release(input);
clij2.release(destination);
</pre>

</details>





### Example notebooks
<a href="https://clij.github.io/clij2-docs/md/binary_processing"><img src="images/language_macro.png" height="20"/></a> [binary_processing](https://clij.github.io/clij2-docs/md/binary_processing)  




### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/binary_processing.ijm"><img src="images/language_macro.png" height="20"/></a> [binary_processing.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/binary_processing.ijm)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

## equalizeMeanIntensitiesOfSlices
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/>

Determines correction factors for each z-slice so that the average intensity in all slices can be made the same and multiplies these factors with the slices. 

This functionality is similar to the 'Simple Ratio Bleaching Correction' in Fiji.

Categories: [Filter](https://clij.github.io/clij2-docs/reference__filter), [Math](https://clij.github.io/clij2-docs/reference__math)

### Usage in ImageJ macro
```
Ext.CLIJ2_equalizeMeanIntensitiesOfSlices(Image input, Image destination, Number referenceSlice);
```




### Usage in Java


<details>

<summary>
clij2.equalizeMeanIntensitiesOfSlices(input, destination, referenceSlice);
</summary>
<pre class="highlight">// init CLIJ and GPU
import net.haesleinhuepf.clij2.CLIJ2;
import net.haesleinhuepf.clij.clearcl.ClearCLBuffer;
CLIJ2 clij2 = CLIJ2.getInstance();

// get input parameters
ClearCLBuffer input = clij2.push(inputImagePlus);
destination = clij2.create(input);
int referenceSlice = 10;
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.equalizeMeanIntensitiesOfSlices(input, destination, referenceSlice);
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
clij2.equalizeMeanIntensitiesOfSlices(input, destination, referenceSlice);
</summary>
<pre class="highlight">% init CLIJ and GPU
clij2 = init_clatlab();

% get input parameters
input = clij2.pushMat(input_matrix);
destination = clij2.create(input);
referenceSlice = 10;
</pre>

<pre class="highlight">
% Execute operation on GPU
clij2.equalizeMeanIntensitiesOfSlices(input, destination, referenceSlice);
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
clij2.equalizeMeanIntensitiesOfSlices(input, destination, referenceSlice);
</summary>
<pre class="highlight">// init CLIJ and GPU
importClass(net.haesleinhuepf.clicy.CLICY);
importClass(Packages.icy.main.Icy);

clij2 = CLICY.getInstance();

// get input parameters
input_sequence = getSequence();
input = clij2.pushSequence(input_sequence);
destination = clij2.create(input);
referenceSlice = 10;
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.equalizeMeanIntensitiesOfSlices(input, destination, referenceSlice);
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



[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

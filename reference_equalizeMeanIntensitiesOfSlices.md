## equalizeMeanIntensitiesOfSlices
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_empty_logo.png"/>

Determines correction factors for each z-slice so that the average intensity in all slices can be made the same and multiplies these factors with the slices. 

This functionality is similar to the 'Simple Ratio Bleaching Correction' in Fiji.

Categories: [Filter](https://clij.github.io/clij2-docs/reference__filter), [Math](https://clij.github.io/clij2-docs/reference__math)

Availability: Available in Fiji by activating the update sites clij and clij2.
This function is part of clij2_-2.3.0.6.jar.

### equalizeMeanIntensitiesOfSlices often follows after
* <a href="reference_scale3D">scale3D</a> (1)


### equalizeMeanIntensitiesOfSlices is often followed by
* <a href="reference_topHatBox">topHatBox</a> (1)


### Usage in ImageJ macro
```
Ext.CLIJ2_equalizeMeanIntensitiesOfSlices(Image input, Image destination, Number referenceSlice);
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
int referenceSlice = 10;
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.equalizeMeanIntensitiesOfSlices(input, destination, referenceSlice);
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





### Example notebooks
<a href="https://clij.github.io/clij2-docs/md/image_segmentation_3d"><img src="images/language_macro.png" height="20"/></a> [image_segmentation_3d](https://clij.github.io/clij2-docs/md/image_segmentation_3d)  




### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/image_segmentation_3d.ijm"><img src="images/language_macro.png" height="20"/></a> [image_segmentation_3d.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/image_segmentation_3d.ijm)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

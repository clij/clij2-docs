## writeValuesToPositions
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/>

Takes an image with three/four rows (2D: height = 3; 3D: height = 4): x, y [, z] and v and target image. 

The value v will be written at position x/y[/z] in the target image.

### writeValuesToPositions often follows after
* <a href="reference_paste2D">paste2D</a> (2)


### writeValuesToPositions is often followed by
* <a href="reference_extendLabelingViaVoronoi">extendLabelingViaVoronoi</a> (2)
* <a href="reference_maximum2DSphere">maximum2DSphere</a> (2)


### Usage in ImageJ macro
```
Ext.CLIJ2_writeValuesToPositions(Image positionsAndValues, Image destination);
```




### Usage in Java


<details>

<summary>
clij2.writeValuesToPositions(positionsAndValues, destination);
</summary>
<pre class="highlight">// init CLIJ and GPU
import net.haesleinhuepf.clij2.CLIJ2;
import net.haesleinhuepf.clij.clearcl.ClearCLBuffer;
CLIJ2 clij2 = CLIJ2.getInstance();

// get input parameters
ClearCLBuffer positionsAndValues = clij2.push(positionsAndValuesImagePlus);
destination = clij2.create(positionsAndValues);
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.writeValuesToPositions(positionsAndValues, destination);
</pre>

<pre class="highlight">
//show result
destinationImagePlus = clij2.pull(destination);
destinationImagePlus.show();

// cleanup memory on GPU
clij2.release(positionsAndValues);
clij2.release(destination);
</pre>

</details>





### Usage in Matlab


<details>

<summary>
clij2.writeValuesToPositions(positionsAndValues, destination);
</summary>
<pre class="highlight">% init CLIJ and GPU
clij2 = init_clatlab();

% get input parameters
positionsAndValues = clij2.pushMat(positionsAndValues_matrix);
destination = clij2.create(positionsAndValues);
</pre>

<pre class="highlight">
% Execute operation on GPU
clij2.writeValuesToPositions(positionsAndValues, destination);
</pre>

<pre class="highlight">
% show result
destination = clij2.pullMat(destination)

% cleanup memory on GPU
clij2.release(positionsAndValues);
clij2.release(destination);
</pre>

</details>





### Usage in Icy


<details>

<summary>
clij2.writeValuesToPositions(positionsAndValues, destination);
</summary>
<pre class="highlight">// init CLIJ and GPU
importClass(net.haesleinhuepf.clicy.CLICY);
importClass(Packages.icy.main.Icy);

clij2 = CLICY.getInstance();

// get input parameters
positionsAndValues_sequence = getSequence();
positionsAndValues = clij2.pushSequence(positionsAndValues_sequence);
destination = clij2.create(positionsAndValues);
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.writeValuesToPositions(positionsAndValues, destination);
</pre>

<pre class="highlight">
// show result
destination_sequence = clij2.pullSequence(destination)
Icy.addSequence(destination_sequence);
// cleanup memory on GPU
clij2.release(positionsAndValues);
clij2.release(destination);
</pre>

</details>



[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

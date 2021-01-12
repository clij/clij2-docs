## writeValuesToPositions
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_cle_logo.png"/>

Takes an image with three/four rows (2D: height = 3; 3D: height = 4): x, y [, z] and v and target image. 

The value v will be written at position x/y[/z] in the target image.

Category: Visualisation

### writeValuesToPositions often follows after
* <a href="reference_paste2D">paste2D</a> (2)


### writeValuesToPositions is often followed by
* <a href="reference_extendLabelingViaVoronoi">extendLabelingViaVoronoi</a> (1)
* <a href="reference_maximum2DSphere">maximum2DSphere</a> (1)


### Usage in ImageJ macro
```
Ext.CLIJ2_writeValuesToPositions(Image positions_and_values, Image destination);
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
ClearCLBuffer positions_and_values = clij2.push(positions_and_valuesImagePlus);
destination = clij2.create(positions_and_values);
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.writeValuesToPositions(positions_and_values, destination);
</pre>

<pre class="highlight">
// show result
destinationImagePlus = clij2.pull(destination);
destinationImagePlus.show();

// cleanup memory on GPU
clij2.release(positions_and_values);
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
positions_and_values = clij2.pushMat(positions_and_values_matrix);
destination = clij2.create(positions_and_values);
</pre>

<pre class="highlight">
% Execute operation on GPU
clij2.writeValuesToPositions(positions_and_values, destination);
</pre>

<pre class="highlight">
% show result
destination = clij2.pullMat(destination)

% cleanup memory on GPU
clij2.release(positions_and_values);
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
positions_and_values_sequence = getSequence();
positions_and_values = clij2.pushSequence(positions_and_values_sequence);
destination = clij2.create(positions_and_values);
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.writeValuesToPositions(positions_and_values, destination);
</pre>

<pre class="highlight">
// show result
destination_sequence = clij2.pullSequence(destination)
Icy.addSequence(destination_sequence);
// cleanup memory on GPU
clij2.release(positions_and_values);
clij2.release(destination);
</pre>

</details>



<details>

<summary>
clEsperanto Python (experimental)
</summary>
<pre class="highlight">import pyclesperanto_prototype as cle

cle.write_values_to_positions(positions_and_values, destination)

</pre>



</details>





### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/centroid_visualisation.ijm"><img src="images/language_macro.png" height="20"/></a> [centroid_visualisation.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/centroid_visualisation.ijm)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

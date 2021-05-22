## drawLine
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_cle_logo.png"/>

Draws a line between two points with a given thickness. 

All pixels other than on the line are untouched. Consider using `set(buffer, 0);` in advance.

Category: Visualisation

Availability: Available in Fiji by activating the update sites clij and clij2.
This function is part of clij2_-2.3.0.6.jar.

### Usage in ImageJ macro
```
Ext.CLIJ2_drawLine(Image destination, Number x1, Number y1, Number z1, Number x2, Number y2, Number z2, Number thickness, Number value);
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
destination = clij2.create();
float x1 = 1.0;
float y1 = 2.0;
float z1 = 3.0;
float x2 = 4.0;
float y2 = 5.0;
float z2 = 6.0;
float thickness = 7.0;
float value = 8.0;
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.drawLine(destination, x1, y1, z1, x2, y2, z2, thickness, value);
</pre>

<pre class="highlight">
// show result
destinationImagePlus = clij2.pull(destination);
destinationImagePlus.show();

// cleanup memory on GPU
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
destination = clij2.create();
x1 = 1.0;
y1 = 2.0;
z1 = 3.0;
x2 = 4.0;
y2 = 5.0;
z2 = 6.0;
thickness = 7.0;
value = 8.0;
</pre>

<pre class="highlight">
% Execute operation on GPU
clij2.drawLine(destination, x1, y1, z1, x2, y2, z2, thickness, value);
</pre>

<pre class="highlight">
% show result
destination = clij2.pullMat(destination)

% cleanup memory on GPU
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
destination = clij2.create();
x1 = 1.0;
y1 = 2.0;
z1 = 3.0;
x2 = 4.0;
y2 = 5.0;
z2 = 6.0;
thickness = 7.0;
value = 8.0;
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.drawLine(destination, x1, y1, z1, x2, y2, z2, thickness, value);
</pre>

<pre class="highlight">
// show result
destination_sequence = clij2.pullSequence(destination)
Icy.addSequence(destination_sequence);
// cleanup memory on GPU
clij2.release(destination);
</pre>

</details>



<details>

<summary>
clEsperanto Python (experimental)
</summary>
<pre class="highlight">import pyclesperanto_prototype as cle

cle.draw_line(destination, x1, y1, z1, x2, y2, z2, thickness, value)

</pre>



</details>





### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/drawLine.ijm"><img src="images/language_macro.png" height="20"/></a> [drawLine.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/drawLine.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/grid.ijm"><img src="images/language_macro.png" height="20"/></a> [grid.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/grid.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/meshTouchingNeighbors.ijm"><img src="images/language_macro.png" height="20"/></a> [meshTouchingNeighbors.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/meshTouchingNeighbors.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/mesh_closest_points.ijm"><img src="images/language_macro.png" height="20"/></a> [mesh_closest_points.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/mesh_closest_points.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/tubeness.ijm"><img src="images/language_macro.png" height="20"/></a> [tubeness.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/tubeness.ijm)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

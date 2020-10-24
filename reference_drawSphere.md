## drawSphere
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_cle_logo.png"/>

Draws a sphere around a given point with given radii in x, y and z (if 3D). 

 All pixels other than in the sphere are untouched. Consider using `set(buffer, 0);` in advance.

Category: Visualisation

### Usage in ImageJ macro
```
Ext.CLIJ2_drawSphere(Image destination, Number x, Number y, Number z, Number radius_x, Number radius_y, Number radius_z, Number value);
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
float x = 1.0;
float y = 2.0;
float z = 3.0;
float radius_x = 4.0;
float radius_y = 5.0;
float radius_z = 6.0;
float value = 7.0;
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.drawSphere(destination, x, y, z, radius_x, radius_y, radius_z, value);
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
x = 1.0;
y = 2.0;
z = 3.0;
radius_x = 4.0;
radius_y = 5.0;
radius_z = 6.0;
value = 7.0;
</pre>

<pre class="highlight">
% Execute operation on GPU
clij2.drawSphere(destination, x, y, z, radius_x, radius_y, radius_z, value);
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
x = 1.0;
y = 2.0;
z = 3.0;
radius_x = 4.0;
radius_y = 5.0;
radius_z = 6.0;
value = 7.0;
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.drawSphere(destination, x, y, z, radius_x, radius_y, radius_z, value);
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

cle.draw_sphere(clij, destination, x, y, z, radius_x, radius_y, radius_z, value)
</pre>



</details>





### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/jython/jaccardIndex.py"><img src="images/language_jython.png" height="20"/></a> [jaccardIndex.py](https://github.com/clij/clij2-docs/blob/master/src/main/jython/jaccardIndex.py)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

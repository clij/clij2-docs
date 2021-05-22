## pointIndexListToMesh
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_cle_logo.png"/>

Meshes all points in a given point list which are indiced in a corresponding index list.

Categories:  Visualisation, [Graphs](https://clij.github.io/clij2-docs/reference__graph)

Availability: Available in Fiji by activating the update sites clij and clij2.
This function is part of clij2_-2.3.0.6.jar.

### Usage in ImageJ macro
```
Ext.CLIJ2_pointIndexListToMesh(Image pointlist, Image indexlist, Image mesh_destination);
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
ClearCLBuffer pointlist = clij2.push(pointlistImagePlus);
ClearCLBuffer indexlist = clij2.push(indexlistImagePlus);
mesh_destination = clij2.create(pointlist);
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.pointIndexListToMesh(pointlist, indexlist, mesh_destination);
</pre>

<pre class="highlight">
// show result
mesh_destinationImagePlus = clij2.pull(mesh_destination);
mesh_destinationImagePlus.show();

// cleanup memory on GPU
clij2.release(pointlist);
clij2.release(indexlist);
clij2.release(mesh_destination);
</pre>

</details>



<details>

<summary>
Matlab
</summary>
<pre class="highlight">% init CLIJ and GPU
clij2 = init_clatlab();

% get input parameters
pointlist = clij2.pushMat(pointlist_matrix);
indexlist = clij2.pushMat(indexlist_matrix);
mesh_destination = clij2.create(pointlist);
</pre>

<pre class="highlight">
% Execute operation on GPU
clij2.pointIndexListToMesh(pointlist, indexlist, mesh_destination);
</pre>

<pre class="highlight">
% show result
mesh_destination = clij2.pullMat(mesh_destination)

% cleanup memory on GPU
clij2.release(pointlist);
clij2.release(indexlist);
clij2.release(mesh_destination);
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
pointlist_sequence = getSequence();
pointlist = clij2.pushSequence(pointlist_sequence);
indexlist_sequence = getSequence();
indexlist = clij2.pushSequence(indexlist_sequence);
mesh_destination = clij2.create(pointlist);
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.pointIndexListToMesh(pointlist, indexlist, mesh_destination);
</pre>

<pre class="highlight">
// show result
mesh_destination_sequence = clij2.pullSequence(mesh_destination)
Icy.addSequence(mesh_destination_sequence);
// cleanup memory on GPU
clij2.release(pointlist);
clij2.release(indexlist);
clij2.release(mesh_destination);
</pre>

</details>



<details>

<summary>
clEsperanto Python (experimental)
</summary>
<pre class="highlight">import pyclesperanto_prototype as cle

cle.point_index_list_to_mesh(pointlist, indexlist, mesh_destination)

</pre>



</details>





### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/jython/mesh_closest_points.py"><img src="images/language_jython.png" height="20"/></a> [mesh_closest_points.py](https://github.com/clij/clij2-docs/blob/master/src/main/jython/mesh_closest_points.py)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

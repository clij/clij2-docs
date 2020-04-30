## pointIndexListToMesh
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/>

Meshes all points in a given point list which are indiced in a corresponding index list.

### Usage in ImageJ macro
```
Ext.CLIJ2_pointIndexListToMesh(Image pointlist, Image indexList, ByRef Image mesh_destination);
```




### Usage in Java


<details>

<summary>
clij2.pointIndexListToMesh(pointlist, indexList, mesh_destination);
</summary>
<pre class="highlight">// init CLIJ and GPU
import net.haesleinhuepf.clij2.CLIJ2;
import net.haesleinhuepf.clij.clearcl.ClearCLBuffer;
CLIJ2 clij2 = CLIJ2.getInstance();

// get input parameters
ClearCLBuffer pointlist = clij2.push(pointlistImagePlus);
ClearCLBuffer indexList = clij2.push(indexListImagePlus);
mesh_destination = clij2.create(pointlist);
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.pointIndexListToMesh(pointlist, indexList, mesh_destination);
</pre>

<pre class="highlight">
//show result
mesh_destinationImagePlus = clij2.pull(mesh_destination);
mesh_destinationImagePlus.show();

// cleanup memory on GPU
clij2.release(pointlist);
clij2.release(indexList);
clij2.release(mesh_destination);
</pre>

</details>





### Usage in Matlab


<details>

<summary>
clij2.pointIndexListToMesh(pointlist, indexList, mesh_destination);
</summary>
<pre class="highlight">% init CLIJ and GPU
clij2 = init_clatlab();

% get input parameters
pointlist = clij2.pushMat(pointlist_matrix);
indexList = clij2.pushMat(indexList_matrix);
mesh_destination = clij2.create(pointlist);
</pre>

<pre class="highlight">
% Execute operation on GPU
clij2.pointIndexListToMesh(pointlist, indexList, mesh_destination);
</pre>

<pre class="highlight">
% show result
mesh_destination = clij2.pullMat(mesh_destination)

% cleanup memory on GPU
clij2.release(pointlist);
clij2.release(indexList);
clij2.release(mesh_destination);
</pre>

</details>





### Usage in Icy


<details>

<summary>
clij2.pointIndexListToMesh(pointlist, indexList, mesh_destination);
</summary>
<pre class="highlight">// init CLIJ and GPU
importClass(net.haesleinhuepf.clicy.CLICY);
importClass(Packages.icy.main.Icy);

clij2 = CLICY.getInstance();

// get input parameters
pointlist_sequence = getSequence();
pointlist = clij2.pushSequence(pointlist_sequence);
indexList_sequence = getSequence();
indexList = clij2.pushSequence(indexList_sequence);
mesh_destination = clij2.create(pointlist);
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.pointIndexListToMesh(pointlist, indexList, mesh_destination);
</pre>

<pre class="highlight">
// show result
mesh_destination_sequence = clij2.pullSequence(mesh_destination)
Icy.addSequence(mesh_destination_sequence);
// cleanup memory on GPU
clij2.release(pointlist);
clij2.release(indexList);
clij2.release(mesh_destination);
</pre>

</details>



[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

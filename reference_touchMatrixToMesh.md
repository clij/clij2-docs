## touchMatrixToMesh
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/>

Takes a pointlist with dimensions n*d with n point coordinates in d dimensions and a touch matrix of 
size n*n to draw lines from all points to points if the corresponding pixel in the touch matrix is 1.

### touchMatrixToMesh often follows after
* <a href="reference_labelledSpotsToPointList">labelledSpotsToPointList</a> (3)
* <a href="reference_generateTouchMatrix">generateTouchMatrix</a> (3)
* <a href="reference_multiplyImages">multiplyImages</a> (2)


### touchMatrixToMesh is often followed by
* <a href="reference_rotate3D">rotate3D</a> (2)


### Usage in ImageJ macro
```
Ext.CLIJ2_touchMatrixToMesh(Image pointlist, Image touch_matrix, ByRef Image mesh_destination);
```


### Usage in Java
<details>
<summary>
clij2.touchMatrixToMesh(pointlist, touch_matrix, mesh_destination);
</summary>
```
// init CLIJ and GPU
import net.haesleinhuepf.clij2.CLIJ2;
import net.haesleinhuepf.clij.clearcl.ClearCLBuffer;
CLIJ2 clij2 = CLIJ2.getInstance();

// get input parameters
ClearCLBuffer pointlist = clij2.push(pointlistImagePlus);
ClearCLBuffer touch_matrix = clij2.push(touch_matrixImagePlus);
mesh_destination = clij2.create(pointlist);
```

```
// Execute operation on GPU
clij2.touchMatrixToMesh(pointlist, touch_matrix, mesh_destination);
```

```
//show result
mesh_destinationImagePlus = clij2.pull(mesh_destination);
mesh_destinationImagePlus.show();

// cleanup memory on GPU
clij2.release(pointlist);
clij2.release(touch_matrix);
clij2.release(mesh_destination);
```
</details>


### Usage in Matlab
<details>
<summary>
clij2.touchMatrixToMesh(pointlist, touch_matrix, mesh_destination);
</summary>
```
% init CLIJ and GPU
clij2 = init_clatlab();

% get input parameters
pointlist = clij2.pushMat(pointlist_matrix);
touch_matrix = clij2.pushMat(touch_matrix_matrix);
mesh_destination = clij2.create(pointlist);
```

```
% Execute operation on GPU
clij2.touchMatrixToMesh(pointlist, touch_matrix, mesh_destination);
```

```
% show result
mesh_destination = clij2.pullMat(mesh_destination)

% cleanup memory on GPU
clij2.release(pointlist);
clij2.release(touch_matrix);
clij2.release(mesh_destination);
```
</details>


### Usage in Icy
<details>
<summary>
clij2.touchMatrixToMesh(pointlist, touch_matrix, mesh_destination);
</summary>
```
// init CLIJ and GPU
importClass(net.haesleinhuepf.clicy.CLICY);
importClass(Packages.icy.main.Icy);

clij2 = CLICY.getInstance();

// get input parameters
pointlist_sequence = getSequence();pointlist = clij2.pushSequence(pointlist_sequence);
touch_matrix_sequence = getSequence();touch_matrix = clij2.pushSequence(touch_matrix_sequence);
mesh_destination = clij2.create(pointlist);
```

```
// Execute operation on GPU
clij2.touchMatrixToMesh(pointlist, touch_matrix, mesh_destination);
```

```
// show result
mesh_destination_sequence = clij2.pullSequence(mesh_destination)
Icy.addSequence(mesh_destination_sequence
// cleanup memory on GPU
clij2.release(pointlist);
clij2.release(touch_matrix);
clij2.release(mesh_destination);
```
</details>




### Example notebooks
<a href="https://clij.github.io/clij2-docs/md/spots_pointlists_matrices_tables"><img src="images/language_macro.png" height="20"/></a> [spots_pointlists_matrices_tables](https://clij.github.io/clij2-docs/md/spots_pointlists_matrices_tables)  
<a href="https://clij.github.io/clij2-docs/md/tribolium_morphometry"><img src="images/language_macro.png" height="20"/></a> [tribolium_morphometry](https://clij.github.io/clij2-docs/md/tribolium_morphometry)  




### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/rotating_sphere.ijm"><img src="images/language_macro.png" height="20"/></a> [rotating_sphere.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/rotating_sphere.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/spots_pointlists_matrices_tables.ijm"><img src="images/language_macro.png" height="20"/></a> [spots_pointlists_matrices_tables.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/spots_pointlists_matrices_tables.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/tribolium_morphometry.ijm"><img src="images/language_macro.png" height="20"/></a> [tribolium_morphometry.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/tribolium_morphometry.ijm)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

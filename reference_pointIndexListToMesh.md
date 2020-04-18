## pointIndexListToMesh
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/>

Meshes all points in a given point list which are indiced in a corresponding index list.

### Usage in ImageJ macro
```
Ext.CLIJ2_pointIndexListToMesh(Image pointlist, Image indexList, ByRef Image mesh_destination);
```


### Usage in Java
```
// init CLIJ and GPU
import net.haesleinhuepf.clij2.CLIJ2;
import net.haesleinhuepf.clij.clearcl.ClearCLBuffer;
CLIJ2 clij2 = CLIJ2.getInstance();

// get input parameters
ClearCLBuffer pointlist = clij2.push(pointlistImagePlus);
ClearCLBuffer indexList = clij2.push(indexListImagePlus);
mesh_destination = clij.create(pointlist);
```

```
// Execute operation on GPU
clij2.pointIndexListToMesh(clij, pointlist, indexList, mesh_destination);
```

```
//show result
mesh_destinationImagePlus = clij2.pull(mesh_destination);
mesh_destinationImagePlus.show();

// cleanup memory on GPU
clij2.release(pointlist);
clij2.release(indexList);
clij2.release(mesh_destination);
```


[Back to CLIJ documentation](https://clij.github.io/)

[Imprint](https://clij.github.io/imprint)

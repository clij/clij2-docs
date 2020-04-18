## averageAngleBetweenAdjacentTriangles
<img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_clijx_logo.png"/>

Takes a pointlist and a touch matrix to determine the average angle of adjacent triangles in a surface mesh. For every point, the average angle of adjacent triangles is saved.

### Usage in ImageJ macro
```
Ext.CLIJx_averageAngleBetweenAdjacentTriangles(Image pointlist, Image touch_matrix, ByRef Image average_distancelist_destination);
```


### Usage in Java
```
// init CLIJ and GPU
import net.haesleinhuepf.clijx.CLIJx;
import net.haesleinhuepf.clij.clearcl.ClearCLBuffer;
CLIJx clijx = CLIJx.getInstance();

// get input parameters
ClearCLBuffer pointlist = clijx.push(pointlistImagePlus);
ClearCLBuffer touch_matrix = clijx.push(touch_matrixImagePlus);
average_distancelist_destination = clij.create(pointlist);
```

```
// Execute operation on GPU
clijx.averageAngleBetweenAdjacentTriangles(clij, pointlist, touch_matrix, average_distancelist_destination);
```

```
//show result
average_distancelist_destinationImagePlus = clijx.pull(average_distancelist_destination);
average_distancelist_destinationImagePlus.show();

// cleanup memory on GPU
clijx.release(pointlist);
clijx.release(touch_matrix);
clijx.release(average_distancelist_destination);
```


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

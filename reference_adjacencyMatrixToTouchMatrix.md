## adjacencyMatrixToTouchMatrix
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_empty_logo.png"/>

Converts a adjacency matrix in a touch matrix

### Usage in ImageJ macro
```
Ext.CLIJ2_adjacencyMatrixToTouchMatrix(Image adjacency_matrix, ByRef Image touch_matrix);
```


### Usage in Matlab
```
// init CLIJ and GPU
clij2 = init_clatlab();

% get input parameters
adjacency_matrix = clij2.pushMat(adjacency_matrix);
touch_matrix = clij2.pushMat(touch_matrix);
```

```
% Execute operation on GPU
clij2.adjacencyMatrixToTouchMatrix(clij, adjacency_matrix, touch_matrix);
```

```
% show result

% cleanup memory on GPU
clij2.release(adjacency_matrix);
clij2.release(touch_matrix);
```


### Usage in Java
```
// init CLIJ and GPU
import net.haesleinhuepf.clij2.CLIJ2;
import net.haesleinhuepf.clij.clearcl.ClearCLBuffer;
CLIJ2 clij2 = CLIJ2.getInstance();

// get input parameters
ClearCLBuffer adjacency_matrix = clij2.push(adjacency_matrixImagePlus);
ClearCLBuffer touch_matrix = clij2.push(touch_matrixImagePlus);
```

```
// Execute operation on GPU
clij2.adjacencyMatrixToTouchMatrix(clij, adjacency_matrix, touch_matrix);
```

```
//show result

// cleanup memory on GPU
clij2.release(adjacency_matrix);
clij2.release(touch_matrix);
```


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

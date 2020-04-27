## averageDistanceOfNClosestPoints
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/>

Determines the average of the n closest points for every point in a distance matrix.

This corresponds to the average of the n minimum values (rows) for each column of the distance matrix.

### Usage in ImageJ macro
```
Ext.CLIJ2_averageDistanceOfNClosestPoints(Image distance_matrix, ByRef Image indexlist_destination, Number nClosestPointsTofind);
```


### Usage in Matlab
```
// init CLIJ and GPU
clij2 = init_clatlab();

% get input parameters
distance_matrix = clij2.pushMat(distance_matrix);
indexlist_destination = clij2.create(distance_matrix);
nClosestPointsTofind = 10;
```

```
% Execute operation on GPU
clij2.averageDistanceOfNClosestPoints(clij, distance_matrix, indexlist_destination, nClosestPointsTofind);
```

```
% show result
indexlist_destination = clij2.pullMat(indexlist_destination)

% cleanup memory on GPU
clij2.release(distance_matrix);
clij2.release(indexlist_destination);
```


### Usage in Java
```
// init CLIJ and GPU
import net.haesleinhuepf.clij2.CLIJ2;
import net.haesleinhuepf.clij.clearcl.ClearCLBuffer;
CLIJ2 clij2 = CLIJ2.getInstance();

// get input parameters
ClearCLBuffer distance_matrix = clij2.push(distance_matrixImagePlus);
indexlist_destination = clij2.create(distance_matrix);
int nClosestPointsTofind = 10;
```

```
// Execute operation on GPU
clij2.averageDistanceOfNClosestPoints(clij, distance_matrix, indexlist_destination, nClosestPointsTofind);
```

```
//show result
indexlist_destinationImagePlus = clij2.pull(indexlist_destination);
indexlist_destinationImagePlus.show();

// cleanup memory on GPU
clij2.release(distance_matrix);
clij2.release(indexlist_destination);
```


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

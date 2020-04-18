## shortestDistances
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/>

Determine the shortest distance from a distance matrix. 

This corresponds to the minimum for each individial column.

### shortestDistances often follows after
* <a href="reference_generateDistanceMatrix">generateDistanceMatrix</a> (2)


### Usage in ImageJ macro
```
Ext.CLIJ2_shortestDistances(Image distance_matrix, ByRef Image destination_minimum_distances);
```


### Usage in Java
```
// init CLIJ and GPU
import net.haesleinhuepf.clij2.CLIJ2;
import net.haesleinhuepf.clij.clearcl.ClearCLBuffer;
CLIJ2 clij2 = CLIJ2.getInstance();

// get input parameters
ClearCLBuffer distance_matrix = clij2.push(distance_matrixImagePlus);
destination_minimum_distances = clij.create(distance_matrix);
```

```
// Execute operation on GPU
clij2.shortestDistances(clij, distance_matrix, destination_minimum_distances);
```

```
//show result
destination_minimum_distancesImagePlus = clij2.pull(destination_minimum_distances);
destination_minimum_distancesImagePlus.show();

// cleanup memory on GPU
clij2.release(distance_matrix);
clij2.release(destination_minimum_distances);
```




### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/spot_distance_measurement.ijm"><img src="images/language_macro.png" height="20"/></a> [spot_distance_measurement.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/spot_distance_measurement.ijm)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

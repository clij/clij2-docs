## minimumOfTouchingNeighbors
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_empty_logo.png"/>

Takes a touch matrix and a vector of values to determine the minimum value among touching neighbors for every object. 



### minimumOfTouchingNeighbors often follows after
* <a href="reference_pushResultsTableColumn">pushResultsTableColumn</a> (2)
* <a href="reference_generateTouchMatrix">generateTouchMatrix</a> (2)


### minimumOfTouchingNeighbors is often followed by
* <a href="reference_replaceIntensities">replaceIntensities</a> (4)


### Usage in ImageJ macro
```
Ext.CLIJ2_minimumOfTouchingNeighbors(Image values, Image touch_matrix, ByRef Image minimum_values_destination);
```


### Usage in Matlab
```
// init CLIJ and GPU
clij2 = init_clatlab();

% get input parameters
values = clij2.pushMat(values);
touch_matrix = clij2.pushMat(touch_matrix);
minimum_values_destination = clij2.create(values);
```

```
% Execute operation on GPU
clij2.minimumOfTouchingNeighbors(clij, values, touch_matrix, minimum_values_destination);
```

```
% show result
minimum_values_destination = clij2.pullMat(minimum_values_destination)

% cleanup memory on GPU
clij2.release(values);
clij2.release(touch_matrix);
clij2.release(minimum_values_destination);
```


### Usage in Java
```
// init CLIJ and GPU
import net.haesleinhuepf.clij2.CLIJ2;
import net.haesleinhuepf.clij.clearcl.ClearCLBuffer;
CLIJ2 clij2 = CLIJ2.getInstance();

// get input parameters
ClearCLBuffer values = clij2.push(valuesImagePlus);
ClearCLBuffer touch_matrix = clij2.push(touch_matrixImagePlus);
minimum_values_destination = clij2.create(values);
```

```
// Execute operation on GPU
clij2.minimumOfTouchingNeighbors(clij, values, touch_matrix, minimum_values_destination);
```

```
//show result
minimum_values_destinationImagePlus = clij2.pull(minimum_values_destination);
minimum_values_destinationImagePlus.show();

// cleanup memory on GPU
clij2.release(values);
clij2.release(touch_matrix);
clij2.release(minimum_values_destination);
```




### Example notebooks
<a href="https://clij.github.io/clij2-docs/md/mean_of_touching_neighbors"><img src="images/language_macro.png" height="20"/></a> [mean_of_touching_neighbors](https://clij.github.io/clij2-docs/md/mean_of_touching_neighbors)  
<a href="https://clij.github.io/clij2-docs/md/superpixel_segmentation"><img src="images/language_macro.png" height="20"/></a> [superpixel_segmentation](https://clij.github.io/clij2-docs/md/superpixel_segmentation)  
<a href="https://clij.github.io/clij2-docs/md/tribolium_morphometry"><img src="images/language_macro.png" height="20"/></a> [tribolium_morphometry](https://clij.github.io/clij2-docs/md/tribolium_morphometry)  




### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/mean_of_touching_neighbors.ijm"><img src="images/language_macro.png" height="20"/></a> [mean_of_touching_neighbors.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/mean_of_touching_neighbors.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/superpixel_segmentation.ijm"><img src="images/language_macro.png" height="20"/></a> [superpixel_segmentation.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/superpixel_segmentation.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/tribolium_morphometry.ijm"><img src="images/language_macro.png" height="20"/></a> [tribolium_morphometry.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/tribolium_morphometry.ijm)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

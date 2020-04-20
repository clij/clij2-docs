## pointlistToLabelledSpots
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_empty_logo.png"/>

Takes a pointlist with dimensions n*d with n point coordinates in d dimensions and a touch matrix of 
size n*n to draw lines from all points to points if the corresponding pixel in the touch matrix is 1.

### pointlistToLabelledSpots often follows after
* <a href="reference_create2D">create2D</a> (2)


### pointlistToLabelledSpots is often followed by
* <a href="reference_labelVoronoiOctagon">labelVoronoiOctagon</a> (2)


### Usage in ImageJ macro
```
Ext.CLIJ2_pointlistToLabelledSpots(Image pointlist, ByRef Image spots_destination);
```


### Usage in Java
```
// init CLIJ and GPU
import net.haesleinhuepf.clij2.CLIJ2;
import net.haesleinhuepf.clij.clearcl.ClearCLBuffer;
CLIJ2 clij2 = CLIJ2.getInstance();

// get input parameters
ClearCLBuffer pointlist = clij2.push(pointlistImagePlus);
spots_destination = clij.create(pointlist);
```

```
// Execute operation on GPU
clij2.pointlistToLabelledSpots(clij, pointlist, spots_destination);
```

```
//show result
spots_destinationImagePlus = clij2.pull(spots_destination);
spots_destinationImagePlus.show();

// cleanup memory on GPU
clij2.release(pointlist);
clij2.release(spots_destination);
```




### Example notebooks
<a href="https://clij.github.io/clij2-docs/md/filtering_in_graphs"><img src="images/language_macro.png" height="20"/></a> [filtering_in_graphs](https://clij.github.io/clij2-docs/md/filtering_in_graphs)  




### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/filtering_in_graphs.ijm"><img src="images/language_macro.png" height="20"/></a> [filtering_in_graphs.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/filtering_in_graphs.ijm)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

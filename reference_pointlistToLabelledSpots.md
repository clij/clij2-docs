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
<details>
<summary>
clij2.pointlistToLabelledSpots(pointlist, spots_destination);
</summary>
```
// init CLIJ and GPU
import net.haesleinhuepf.clij2.CLIJ2;
import net.haesleinhuepf.clij.clearcl.ClearCLBuffer;
CLIJ2 clij2 = CLIJ2.getInstance();

// get input parameters
ClearCLBuffer pointlist = clij2.push(pointlistImagePlus);
spots_destination = clij2.create(pointlist);
```

```
// Execute operation on GPU
clij2.pointlistToLabelledSpots(pointlist, spots_destination);
```

```
//show result
spots_destinationImagePlus = clij2.pull(spots_destination);
spots_destinationImagePlus.show();

// cleanup memory on GPU
clij2.release(pointlist);
clij2.release(spots_destination);
```
</details>


### Usage in Matlab
<details>
<summary>
clij2.pointlistToLabelledSpots(pointlist, spots_destination);
</summary>
```
% init CLIJ and GPU
clij2 = init_clatlab();

% get input parameters
pointlist = clij2.pushMat(pointlist_matrix);
spots_destination = clij2.create(pointlist);
```

```
% Execute operation on GPU
clij2.pointlistToLabelledSpots(pointlist, spots_destination);
```

```
% show result
spots_destination = clij2.pullMat(spots_destination)

% cleanup memory on GPU
clij2.release(pointlist);
clij2.release(spots_destination);
```
</details>


### Usage in Icy
<details>
<summary>
clij2.pointlistToLabelledSpots(pointlist, spots_destination);
</summary>
```
// init CLIJ and GPU
importClass(net.haesleinhuepf.clicy.CLICY);
importClass(Packages.icy.main.Icy);

clij2 = CLICY.getInstance();

// get input parameters
pointlist_sequence = getSequence();pointlist = clij2.pushSequence(pointlist_sequence);
spots_destination = clij2.create(pointlist);
```

```
// Execute operation on GPU
clij2.pointlistToLabelledSpots(pointlist, spots_destination);
```

```
// show result
spots_destination_sequence = clij2.pullSequence(spots_destination)
Icy.addSequence(spots_destination_sequence
// cleanup memory on GPU
clij2.release(pointlist);
clij2.release(spots_destination);
```
</details>




### Example notebooks
<a href="https://clij.github.io/clij2-docs/md/filtering_in_graphs"><img src="images/language_macro.png" height="20"/></a> [filtering_in_graphs](https://clij.github.io/clij2-docs/md/filtering_in_graphs)  




### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/filtering_in_graphs.ijm"><img src="images/language_macro.png" height="20"/></a> [filtering_in_graphs.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/filtering_in_graphs.ijm)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

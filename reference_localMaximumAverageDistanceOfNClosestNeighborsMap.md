## localMaximumAverageDistanceOfNClosestNeighborsMap
<img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_clijx_logo.png"/>

Takes a label map, determines distances between all centroids, the mean distance of the n closest points for every point
 and replaces every label with the maximum distance of touching labels.

Categories: [Graphs](https://clij.github.io/clij2-docs/reference__graph), [Labels](https://clij.github.io/clij2-docs/reference__label), [Measurements](https://clij.github.io/clij2-docs/reference__measurement), Visualisation

### Usage in ImageJ macro
```
Ext.CLIJx_localMaximumAverageDistanceOfNClosestNeighborsMap(Image input, Image destination, Number n);
```


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

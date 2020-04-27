## detectLabelEdges
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/>

Takes a labelmap and returns an image where all pixels on label edges are set to 1 and all other pixels to 0.

### Usage in ImageJ macro
```
Ext.CLIJ2_detectLabelEdges(Image label_map, ByRef Image edge_image_destination);
```


### Usage in Matlab
```
// init CLIJ and GPU
clij2 = init_clatlab();

% get input parameters
label_map = clij2.pushMat(label_map);
edge_image_destination = clij2.create(label_map);
```

```
% Execute operation on GPU
clij2.detectLabelEdges(clij, label_map, edge_image_destination);
```

```
% show result
edge_image_destination = clij2.pullMat(edge_image_destination)

% cleanup memory on GPU
clij2.release(label_map);
clij2.release(edge_image_destination);
```


### Usage in Java
```
// init CLIJ and GPU
import net.haesleinhuepf.clij2.CLIJ2;
import net.haesleinhuepf.clij.clearcl.ClearCLBuffer;
CLIJ2 clij2 = CLIJ2.getInstance();

// get input parameters
ClearCLBuffer label_map = clij2.push(label_mapImagePlus);
edge_image_destination = clij2.create(label_map);
```

```
// Execute operation on GPU
clij2.detectLabelEdges(clij, label_map, edge_image_destination);
```

```
//show result
edge_image_destinationImagePlus = clij2.pull(edge_image_destination);
edge_image_destinationImagePlus.show();

// cleanup memory on GPU
clij2.release(label_map);
clij2.release(edge_image_destination);
```


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

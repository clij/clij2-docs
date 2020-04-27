## greater
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/>

Determines if two images A and B greater pixel wise.

f(a, b) = 1 if a > b; 0 otherwise. 

### Usage in ImageJ macro
```
Ext.CLIJ2_greater(Image source1, Image source2, ByRef Image destination);
```


### Usage in Matlab
```
// init CLIJ and GPU
clij2 = init_clatlab();

% get input parameters
source1 = clij2.pushMat(source1);
source2 = clij2.pushMat(source2);
destination = clij2.create(source1);
```

```
% Execute operation on GPU
clij2.greater(clij, source1, source2, destination);
```

```
% show result
destination = clij2.pullMat(destination)

% cleanup memory on GPU
clij2.release(source1);
clij2.release(source2);
clij2.release(destination);
```


### Usage in Java
```
// init CLIJ and GPU
import net.haesleinhuepf.clij2.CLIJ2;
import net.haesleinhuepf.clij.clearcl.ClearCLBuffer;
CLIJ2 clij2 = CLIJ2.getInstance();

// get input parameters
ClearCLBuffer source1 = clij2.push(source1ImagePlus);
ClearCLBuffer source2 = clij2.push(source2ImagePlus);
destination = clij2.create(source1);
```

```
// Execute operation on GPU
clij2.greater(clij, source1, source2, destination);
```

```
//show result
destinationImagePlus = clij2.pull(destination);
destinationImagePlus.show();

// cleanup memory on GPU
clij2.release(source1);
clij2.release(source2);
clij2.release(destination);
```




### Example notebooks
<a href="https://clij.github.io/clij2-docs/md/superpixel_segmentation"><img src="images/language_macro.png" height="20"/></a> [superpixel_segmentation](https://clij.github.io/clij2-docs/md/superpixel_segmentation)  




### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/superpixel_segmentation.ijm"><img src="images/language_macro.png" height="20"/></a> [superpixel_segmentation.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/superpixel_segmentation.ijm)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

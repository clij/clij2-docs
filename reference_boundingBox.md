## boundingBox
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/>

Determines the bounding box of all non-zero pixels in a binary image. 

If called from macro, the positions will be stored in a new row of ImageJs Results table in the columns 'BoundingBoxX', 'BoundingBoxY', 'BoundingBoxZ', 'BoundingBoxWidth', 'BoundingBoxHeight' 'BoundingBoxDepth'.In case of 2D images Z and depth will be zero.

### Usage in ImageJ macro
```
Ext.CLIJ2_boundingBox(Image source);
```


### Usage in Matlab
```
// init CLIJ and GPU
clij2 = init_clatlab();

% get input parameters
source = clij2.pushMat(source);
```

```
% Execute operation on GPU
double[] resultBoundingBox = clij2.boundingBox(clij, source);
```

```
% show result
System.out.println(resultBoundingBox);

% cleanup memory on GPU
clij2.release(source);
```


### Usage in Java
```
// init CLIJ and GPU
import net.haesleinhuepf.clij2.CLIJ2;
import net.haesleinhuepf.clij.clearcl.ClearCLBuffer;
CLIJ2 clij2 = CLIJ2.getInstance();

// get input parameters
ClearCLBuffer source = clij2.push(sourceImagePlus);
```

```
// Execute operation on GPU
double[] resultBoundingBox = clij2.boundingBox(clij, source);
```

```
//show result
System.out.println(resultBoundingBox);

// cleanup memory on GPU
clij2.release(source);
```


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

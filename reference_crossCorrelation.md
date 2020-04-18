## crossCorrelation
<img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_clijx_logo.png"/>

Performs cross correlation analysis between two images. 

The second image is shifted by deltaPos in the given dimension. The cross correlation coefficient is calculated for each pixel in a range around the given pixel with given radius in the given dimension. Together with the original images it is recommended to hand over mean filtered images using the same radius.  

### Usage in ImageJ macro
```
Ext.CLIJx_crossCorrelation(Image input1, Image meanInput1, Image input2, Image meanInput2, ByRef Image destination, Number radius, Number deltaPos, Number dimension);
```


### Usage in Java
```
// init CLIJ and GPU
import net.haesleinhuepf.clijx.CLIJx;
import net.haesleinhuepf.clij.clearcl.ClearCLBuffer;
CLIJx clijx = CLIJx.getInstance();

// get input parameters
ClearCLBuffer input1 = clijx.push(input1ImagePlus);
ClearCLBuffer meanInput1 = clijx.push(meanInput1ImagePlus);
ClearCLBuffer input2 = clijx.push(input2ImagePlus);
ClearCLBuffer meanInput2 = clijx.push(meanInput2ImagePlus);
destination = clij.create(input1);
int radius = 10;
int deltaPos = 20;
int dimension = 30;
```

```
// Execute operation on GPU
clijx.crossCorrelation(clij, input1, meanInput1, input2, meanInput2, destination, radius, deltaPos, dimension);
```

```
//show result
destinationImagePlus = clijx.pull(destination);
destinationImagePlus.show();

// cleanup memory on GPU
clijx.release(input1);
clijx.release(meanInput1);
clijx.release(input2);
clijx.release(meanInput2);
clijx.release(destination);
```


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

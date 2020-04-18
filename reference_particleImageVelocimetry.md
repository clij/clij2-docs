## particleImageVelocimetry
<img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_clijx_logo.png"/>

For every pixel in source image 1, determine the pixel with the most similar intensity in 
 the local neighborhood with a given radius in source image 2. Write the distance in 
X and Y in the two corresponding destination images.

### Usage in ImageJ macro
```
Ext.CLIJx_particleImageVelocimetry(Image source1, Image source2, Image destinationDeltaX, Image destinationDeltaY, Image destinationDeltaZ, Number maxDeltaX, Number maxDeltaY, Number maxDeltaZ, Boolean correctLocalShift);
```


### Usage in Java
```
// init CLIJ and GPU
import net.haesleinhuepf.clijx.CLIJx;
import net.haesleinhuepf.clij.clearcl.ClearCLBuffer;
CLIJx clijx = CLIJx.getInstance();

// get input parameters
ClearCLBuffer source1 = clijx.push(source1ImagePlus);
ClearCLBuffer source2 = clijx.push(source2ImagePlus);
destinationDeltaX = clij.create(source1);
destinationDeltaY = clij.create(source1);
destinationDeltaZ = clij.create(source1);
int maxDeltaX = 10;
int maxDeltaY = 20;
int maxDeltaZ = 30;
boolean correctLocalShift = true;
```

```
// Execute operation on GPU
clijx.particleImageVelocimetry(clij, source1, source2, destinationDeltaX, destinationDeltaY, destinationDeltaZ, maxDeltaX, maxDeltaY, maxDeltaZ, correctLocalShift);
```

```
//show result
destinationDeltaXImagePlus = clijx.pull(destinationDeltaX);
destinationDeltaXImagePlus.show();
destinationDeltaYImagePlus = clijx.pull(destinationDeltaY);
destinationDeltaYImagePlus.show();
destinationDeltaZImagePlus = clijx.pull(destinationDeltaZ);
destinationDeltaZImagePlus.show();

// cleanup memory on GPU
clijx.release(source1);
clijx.release(source2);
clijx.release(destinationDeltaX);
clijx.release(destinationDeltaY);
clijx.release(destinationDeltaZ);
```




### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/jython/crossCorrelationPIV.py"><img src="images/language_jython.png" height="20"/></a> [crossCorrelationPIV.py](https://github.com/clij/clij2-docs/blob/master/src/main/jython/crossCorrelationPIV.py)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

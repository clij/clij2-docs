## subtractImages
<img src="images/mini_clij1_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/>

Subtracts one image X from another image Y pixel wise.

<pre>f(x, y) = x - y</pre>

### subtractImages often follows after
* <a href="reference_automaticThreshold">automaticThreshold</a> (2)
* <a href="reference_gaussianBlur3D">gaussianBlur3D</a> (2)
* <a href="reference_medianSliceBySliceSphere">medianSliceBySliceSphere</a> (2)
* <a href="reference_maximum3DBox">maximum3DBox</a> (2)
* <a href="reference_dilateBox">dilateBox</a> (2)


### subtractImages is often followed by
* <a href="reference_downsample2D">downsample2D</a> (2)


### Usage in ImageJ macro
```
Ext.CLIJ2_subtractImages(Image subtrahend, Image minuend, Image destination);
```


### Usage in Java
```
// init CLIJ and GPU
import net.haesleinhuepf.clij2.CLIJ2;
import net.haesleinhuepf.clij.clearcl.ClearCLBuffer;
CLIJ2 clij2 = CLIJ2.getInstance();

// get input parameters
ClearCLBuffer subtrahend = clij2.push(subtrahendImagePlus);
ClearCLBuffer minuend = clij2.push(minuendImagePlus);
destination = clij.create(subtrahend);
```

```
// Execute operation on GPU
clij2.subtractImages(clij, subtrahend, minuend, destination);
```

```
//show result
destinationImagePlus = clij2.pull(destination);
destinationImagePlus.show();

// cleanup memory on GPU
clij2.release(subtrahend);
clij2.release(minuend);
clij2.release(destination);
```




### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/backgroundSubtraction.ijm"><img src="images/language_macro.png" height="20"/></a> [backgroundSubtraction.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/backgroundSubtraction.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/topHat.ijm"><img src="images/language_macro.png" height="20"/></a> [topHat.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/topHat.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/workflow.ijm"><img src="images/language_macro.png" height="20"/></a> [workflow.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/workflow.ijm)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

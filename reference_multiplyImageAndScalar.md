## multiplyImageAndScalar
<img src="images/mini_clij1_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/>

Multiplies all pixels value x in a given image X with a constant scalar s.

<pre>f(x, s) = x * s</pre>

### multiplyImageAndScalar often follows after
* <a href="reference_touchMatrixToMesh">touchMatrixToMesh</a> (2)


### multiplyImageAndScalar is often followed by
* <a href="reference_convertUInt16">convertUInt16</a> (2)


### Usage in ImageJ macro
```
Ext.CLIJ2_multiplyImageAndScalar(Image source, Image destination, Number scalar);
```


### Usage in Java
```
// init CLIJ and GPU
import net.haesleinhuepf.clij2.CLIJ2;
import net.haesleinhuepf.clij.clearcl.ClearCLBuffer;
CLIJ2 clij2 = CLIJ2.getInstance();

// get input parameters
ClearCLBuffer source = clij2.push(sourceImagePlus);
destination = clij.create(source);
float scalar = 1.0;
```

```
// Execute operation on GPU
clij2.multiplyImageAndScalar(clij, source, destination, scalar);
```

```
//show result
destinationImagePlus = clij2.pull(destination);
destinationImagePlus.show();

// cleanup memory on GPU
clij2.release(source);
clij2.release(destination);
```




### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/bitdepthConversion.ijm"><img src="images/language_macro.png" height="20"/></a> [bitdepthConversion.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/bitdepthConversion.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/interactive_webcam_acquisition_analysis.ijm"><img src="images/language_macro.png" height="20"/></a> [interactive_webcam_acquisition_analysis.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/interactive_webcam_acquisition_analysis.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/rgb_invert_black_white.ijm"><img src="images/language_macro.png" height="20"/></a> [rgb_invert_black_white.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/rgb_invert_black_white.ijm)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

## applyVectorField2D
<img src="images/mini_clij1_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/>

Deforms an image according to distances provided in the given vector images. It is recommended to use 32-bit images for input, output and vector images. 

### applyVectorField2D often follows after
* <a href="reference_affineTransform2D">affineTransform2D</a> (7)
* <a href="reference_copySlice">copySlice</a> (2)


### applyVectorField2D is often followed by
* <a href="reference_copySlice">copySlice</a> (4)


### Usage in ImageJ macro
```
Ext.CLIJ2_applyVectorField2D(Image source, Image vectorX, Image vectorY, Image destination);
```


### Usage in Java
```
// init CLIJ and GPU
import net.haesleinhuepf.clij2.CLIJ2;
import net.haesleinhuepf.clij.clearcl.ClearCLBuffer;
CLIJ2 clij2 = CLIJ2.getInstance();

// get input parameters
ClearCLBuffer source = clij2.push(sourceImagePlus);
ClearCLBuffer vectorX = clij2.push(vectorXImagePlus);
ClearCLBuffer vectorY = clij2.push(vectorYImagePlus);
destination = clij.create(source);
```

```
// Execute operation on GPU
clij2.applyVectorField2D(clij, source, vectorX, vectorY, destination);
```

```
//show result
destinationImagePlus = clij2.pull(destination);
destinationImagePlus.show();

// cleanup memory on GPU
clij2.release(source);
clij2.release(vectorX);
clij2.release(vectorY);
clij2.release(destination);
```




### Example notebooks
<a href="https://github.com/clij/clij2-docs/md/applyVectorFieldMD"><img src="images/language_macro.png" height="20"/></a> [applyVectorFieldMD](https://github.com/clij/clij2-docs/md/applyVectorFieldMD)  




### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/virtual_ablation.ijm"><img src="images/language_macro.png" height="20"/></a> [virtual_ablation.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/virtual_ablation.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/applyVectorField.ijm"><img src="images/language_macro.png" height="20"/></a> [applyVectorField.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/applyVectorField.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/applyVectorFieldMD.ijm"><img src="images/language_macro.png" height="20"/></a> [applyVectorFieldMD.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/applyVectorFieldMD.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/warpCat.ijm"><img src="images/language_macro.png" height="20"/></a> [warpCat.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/warpCat.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/warpCat_RGB.ijm"><img src="images/language_macro.png" height="20"/></a> [warpCat_RGB.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/warpCat_RGB.ijm)  


[Back to CLIJ documentation](https://clij.github.io/)

[Imprint](https://clij.github.io/imprint)

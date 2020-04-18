## centerOfMass
<img src="images/mini_clij1_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/>

Determines the center of mass of an image or image stack and writes the result in the results table
in the columns MassX, MassY and MassZ.

### centerOfMass often follows after
* <a href="reference_automaticThreshold">automaticThreshold</a> (2)
* <a href="reference_threshold">threshold</a> (3)


### Usage in ImageJ macro
```
Ext.CLIJ2_centerOfMass(Image source);
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
double[] resultCenterOfMass = clij2.centerOfMass(clij, source);
```

```
//show result
System.out.println(resultCenterOfMass);

// cleanup memory on GPU
clij2.release(source);
```




### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/motionCorrection.ijm"><img src="images/language_macro.png" height="20"/></a> [motionCorrection.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/motionCorrection.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/motionCorrection_compare_stackreg.ijm"><img src="images/language_macro.png" height="20"/></a> [motionCorrection_compare_stackreg.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/motionCorrection_compare_stackreg.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/statistics.ijm"><img src="images/language_macro.png" height="20"/></a> [statistics.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/statistics.ijm)  


[Back to CLIJ documentation](https://clij.github.io/)

[Imprint](https://clij.github.io/imprint)

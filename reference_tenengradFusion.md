## tenengradFusion
<img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_clijx_logo.png"/>

Fuses #n# image stacks using Tenengrads algorithm.

### Usage in ImageJ macro
```
Ext.CLIJx_tenengradFusion(Image input, Image destination, Number number_of_substacks, Number sigmaX, Number sigmaY, Number sigmaZ, Number exponent);
```


### Usage in Java
```
// init CLIJ and GPU
import net.haesleinhuepf.clijx.CLIJx;
import net.haesleinhuepf.clij.clearcl.ClearCLBuffer;
CLIJx clijx = CLIJx.getInstance();

// get input parameters
ClearCLBuffer input = clijx.push(inputImagePlus);
destination = clij.create(input);
int number_of_substacks = 10;
float sigmaX = 1.0;
float sigmaY = 2.0;
float sigmaZ = 3.0;
float exponent = 4.0;
```

```
// Execute operation on GPU
clijx.tenengradFusion(clij, input, destination, number_of_substacks, sigmaX, sigmaY, sigmaZ, exponent);
```

```
//show result
destinationImagePlus = clijx.pull(destination);
destinationImagePlus.show();

// cleanup memory on GPU
clijx.release(input);
clijx.release(destination);
```




### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/fusion.ijm"><img src="images/language_macro.png" height="20"/></a> [fusion.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/fusion.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/fusion_x.ijm"><img src="images/language_macro.png" height="20"/></a> [fusion_x.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/fusion_x.ijm)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

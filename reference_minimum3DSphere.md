## minimum3DSphere
<img src="images/mini_clij1_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/>

Computes the local minimum of a pixels spherical neighborhood. The spheres size is specified by 
its half-width, half-height and half-depth (radius).

### minimum3DSphere often follows after
* <a href="reference_crop3D">crop3D</a> (2)


### Usage in ImageJ macro
```
Ext.CLIJ2_minimum3DSphere(Image source, Image destination, Number radiusX, Number radiusY, Number radiusZ);
```


### Usage in Matlab
```
// init CLIJ and GPU
clij2 = init_clatlab();

% get input parameters
source = clij2.pushMat(source);
destination = clij2.create(source);
radiusX = 10;
radiusY = 20;
radiusZ = 30;
```

```
% Execute operation on GPU
clij2.minimum3DSphere(clij, source, destination, radiusX, radiusY, radiusZ);
```

```
% show result
destination = clij2.pullMat(destination)

% cleanup memory on GPU
clij2.release(source);
clij2.release(destination);
```


### Usage in Java
```
// init CLIJ and GPU
import net.haesleinhuepf.clij2.CLIJ2;
import net.haesleinhuepf.clij.clearcl.ClearCLBuffer;
CLIJ2 clij2 = CLIJ2.getInstance();

// get input parameters
ClearCLBuffer source = clij2.push(sourceImagePlus);
destination = clij2.create(source);
int radiusX = 10;
int radiusY = 20;
int radiusZ = 30;
```

```
// Execute operation on GPU
clij2.minimum3DSphere(clij, source, destination, radiusX, radiusY, radiusZ);
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
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/minimumOctagon.ijm"><img src="images/language_macro.png" height="20"/></a> [minimumOctagon.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/minimumOctagon.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/oddEven.ijm"><img src="images/language_macro.png" height="20"/></a> [oddEven.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/oddEven.ijm)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

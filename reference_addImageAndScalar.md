## addImageAndScalar
<img src="images/mini_clij1_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/>

Adds a scalar value s to all pixels x of a given image X.

<pre>f(x, s) = x + s</pre>

### addImageAndScalar often followes after
* <a href="reference_invert">invert</a> (2)


### addImageAndScalar is often followed by
* <a href="reference_invert">invert</a> (2)
* <a href="reference_absolute">absolute</a> (2)


### Usage in ImageJ macro
```
Ext.CLIJ2_addImageAndScalar(Image source, Image destination, Number scalar);
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
clij2.addImageAndScalar(clij, source, destination, scalar);
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
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/absolute.ijm"><img src="images/language_macro.png" height="20"/></a> [absolute.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/absolute.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/rgb_invert_black_white.ijm"><img src="images/language_macro.png" height="20"/></a> [rgb_invert_black_white.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/rgb_invert_black_white.ijm)  


[Back to CLIJ documentation](https://clij.github.io/)

[Imprint](https://clij.github.io/imprint)

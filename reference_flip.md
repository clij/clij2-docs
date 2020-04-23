## flip
<img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/>

Flips an image in X and/or Y direction depending on boolean flags.

### Usage in ImageJ macro
```
Ext.CLIJ2_flip(Image source, Image destination, Boolean flipX, Boolean flipY);
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
boolean flipX = true;
boolean flipY = false;
```

```
// Execute operation on GPU
clij2.flip(clij, source, destination, flipX, flipY);
```

```
//show result
destinationImagePlus = clij2.pull(destination);
destinationImagePlus.show();

// cleanup memory on GPU
clij2.release(source);
clij2.release(destination);
```




### Example notebooks
<a href="https://clij.github.io/clij2-docs/md/crop_and_paste"><img src="images/language_macro.png" height="20"/></a> [crop_and_paste](https://clij.github.io/clij2-docs/md/crop_and_paste)  




### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/crop_and_paste.ijm"><img src="images/language_macro.png" height="20"/></a> [crop_and_paste.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/crop_and_paste.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/flip.ijm"><img src="images/language_macro.png" height="20"/></a> [flip.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/flip.ijm)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

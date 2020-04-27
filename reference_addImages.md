## addImages
<img src="images/mini_clij1_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/>

Calculates the sum of pairs of pixels x and y of two images X and Y.

<pre>f(x, y) = x + y</pre>

### Usage in ImageJ macro
```
Ext.CLIJ2_addImages(Image summand1, Image summand2, Image destination);
```


### Usage in Matlab
```
// init CLIJ and GPU
clij2 = init_clatlab();

% get input parameters
summand1 = clij2.pushMat(summand1);
summand2 = clij2.pushMat(summand2);
destination = clij2.create(summand1);
```

```
% Execute operation on GPU
clij2.addImages(clij, summand1, summand2, destination);
```

```
% show result
destination = clij2.pullMat(destination)

% cleanup memory on GPU
clij2.release(summand1);
clij2.release(summand2);
clij2.release(destination);
```


### Usage in Java
```
// init CLIJ and GPU
import net.haesleinhuepf.clij2.CLIJ2;
import net.haesleinhuepf.clij.clearcl.ClearCLBuffer;
CLIJ2 clij2 = CLIJ2.getInstance();

// get input parameters
ClearCLBuffer summand1 = clij2.push(summand1ImagePlus);
ClearCLBuffer summand2 = clij2.push(summand2ImagePlus);
destination = clij2.create(summand1);
```

```
// Execute operation on GPU
clij2.addImages(clij, summand1, summand2, destination);
```

```
//show result
destinationImagePlus = clij2.pull(destination);
destinationImagePlus.show();

// cleanup memory on GPU
clij2.release(summand1);
clij2.release(summand2);
clij2.release(destination);
```




### Example notebooks
<a href="https://clij.github.io/clij2-docs/md/clij1_clij2_combination"><img src="images/language_macro.png" height="20"/></a> [clij1_clij2_combination](https://clij.github.io/clij2-docs/md/clij1_clij2_combination)  




### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/addImages.ijm"><img src="images/language_macro.png" height="20"/></a> [addImages.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/addImages.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/addImages3D.ijm"><img src="images/language_macro.png" height="20"/></a> [addImages3D.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/addImages3D.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/clij1_clij2_combination.ijm"><img src="images/language_macro.png" height="20"/></a> [clij1_clij2_combination.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/clij1_clij2_combination.ijm)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

## setRandom
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_empty_logo.png"/>

Fills an image or image stack with uniformly distributed random numbers between given minimum and maximum values.
Recommendation: For the seed, use getTime().

### Usage in ImageJ macro
```
Ext.CLIJ2_setRandom(Image source, Number minimumValue, Number maximumValue, Number seed);
```


### Usage in Java
```
// init CLIJ and GPU
import net.haesleinhuepf.clij2.CLIJ2;
import net.haesleinhuepf.clij.clearcl.ClearCLBuffer;
CLIJ2 clij2 = CLIJ2.getInstance();

// get input parameters
ClearCLBuffer source = clij2.push(sourceImagePlus);
float minimumValue = 1.0;
float maximumValue = 2.0;
float seed = 3.0;
```

```
// Execute operation on GPU
clij2.setRandom(clij, source, minimumValue, maximumValue, seed);
```

```
//show result

// cleanup memory on GPU
clij2.release(source);
```


[Back to CLIJ documentation](https://clij.github.io/)

[Imprint](https://clij.github.io/imprint)

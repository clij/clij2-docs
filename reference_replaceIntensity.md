## replaceIntensity
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/>

Replaces a specific intensity in an image with a given new value.

### Usage in ImageJ macro
```
Ext.CLIJ2_replaceIntensity(Image input, ByRef Image destination, Number oldValue, Number newValue);
```


### Usage in Matlab
```
// init CLIJ and GPU
clij2 = init_clatlab();

% get input parameters
input = clij2.pushMat(input);
destination = clij2.create(input);
oldValue = 1.0;
newValue = 2.0;
```

```
% Execute operation on GPU
clij2.replaceIntensity(clij, input, destination, oldValue, newValue);
```

```
% show result
destination = clij2.pullMat(destination)

% cleanup memory on GPU
clij2.release(input);
clij2.release(destination);
```


### Usage in Java
```
// init CLIJ and GPU
import net.haesleinhuepf.clij2.CLIJ2;
import net.haesleinhuepf.clij.clearcl.ClearCLBuffer;
CLIJ2 clij2 = CLIJ2.getInstance();

// get input parameters
ClearCLBuffer input = clij2.push(inputImagePlus);
destination = clij2.create(input);
float oldValue = 1.0;
float newValue = 2.0;
```

```
// Execute operation on GPU
clij2.replaceIntensity(clij, input, destination, oldValue, newValue);
```

```
//show result
destinationImagePlus = clij2.pull(destination);
destinationImagePlus.show();

// cleanup memory on GPU
clij2.release(input);
clij2.release(destination);
```


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

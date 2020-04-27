## differenceOfGaussian2D
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/>

Applies Gaussian blur to the input image twice with different sigma values resulting in two images which are then subtracted from each other.

It is recommended to apply this operation to images of type Float (32 bit) as results might be negative.

### Usage in ImageJ macro
```
Ext.CLIJ2_differenceOfGaussian2D(Image input, ByRef Image destination, Number sigma1x, Number sigma1y, Number sigma2x, Number sigma2y);
```


### Usage in Matlab
```
// init CLIJ and GPU
clij2 = init_clatlab();

% get input parameters
input = clij2.pushMat(input);
destination = clij2.create(input);
sigma1x = 1.0;
sigma1y = 2.0;
sigma2x = 3.0;
sigma2y = 4.0;
```

```
% Execute operation on GPU
clij2.differenceOfGaussian2D(clij, input, destination, sigma1x, sigma1y, sigma2x, sigma2y);
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
float sigma1x = 1.0;
float sigma1y = 2.0;
float sigma2x = 3.0;
float sigma2y = 4.0;
```

```
// Execute operation on GPU
clij2.differenceOfGaussian2D(clij, input, destination, sigma1x, sigma1y, sigma2x, sigma2y);
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

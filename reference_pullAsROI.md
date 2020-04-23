## pullAsROI
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/>

Pulls a binary image from the GPU memory and puts it on the currently active ImageJ window as region of interest.

### Usage in ImageJ macro
```
Ext.CLIJ2_pullAsROI(Image binary_input);
```


### Usage in Java
```
// init CLIJ and GPU
import net.haesleinhuepf.clij2.CLIJ2;
import net.haesleinhuepf.clij.clearcl.ClearCLBuffer;
CLIJ2 clij2 = CLIJ2.getInstance();

// get input parameters
ClearCLBuffer binary_input = clij2.push(binary_inputImagePlus);
```

```
// Execute operation on GPU
Roi resultPullAsROI = clij2.pullAsROI(clij, binary_input);
```

```
//show result
System.out.println(resultPullAsROI);

// cleanup memory on GPU
clij2.release(binary_input);
```


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

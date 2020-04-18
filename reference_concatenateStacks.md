## concatenateStacks
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/>

Concatenates two stacks in Z.

### Usage in ImageJ macro
```
Ext.CLIJ2_concatenateStacks(Image stack1, Image stack2, ByRef Image destination);
```


### Usage in Java
```
// init CLIJ and GPU
import net.haesleinhuepf.clij2.CLIJ2;
import net.haesleinhuepf.clij.clearcl.ClearCLBuffer;
CLIJ2 clij2 = CLIJ2.getInstance();

// get input parameters
ClearCLBuffer stack1 = clij2.push(stack1ImagePlus);
ClearCLBuffer stack2 = clij2.push(stack2ImagePlus);
destination = clij.create(stack1);
```

```
// Execute operation on GPU
clij2.concatenateStacks(clij, stack1, stack2, destination);
```

```
//show result
destinationImagePlus = clij2.pull(destination);
destinationImagePlus.show();

// cleanup memory on GPU
clij2.release(stack1);
clij2.release(stack2);
clij2.release(destination);
```


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

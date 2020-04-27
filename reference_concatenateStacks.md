## concatenateStacks
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/>

Concatenates two stacks in Z.

### Usage in ImageJ macro
```
Ext.CLIJ2_concatenateStacks(Image stack1, Image stack2, ByRef Image destination);
```


### Usage in Java
<details>
<summary>
clij2.concatenateStacks(stack1, stack2, destination);
</summary>
```
// init CLIJ and GPU
import net.haesleinhuepf.clij2.CLIJ2;
import net.haesleinhuepf.clij.clearcl.ClearCLBuffer;
CLIJ2 clij2 = CLIJ2.getInstance();

// get input parameters
ClearCLBuffer stack1 = clij2.push(stack1ImagePlus);
ClearCLBuffer stack2 = clij2.push(stack2ImagePlus);
destination = clij2.create(stack1);
```

```
// Execute operation on GPU
clij2.concatenateStacks(stack1, stack2, destination);
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
</details>


### Usage in Matlab
<details>
<summary>
clij2.concatenateStacks(stack1, stack2, destination);
</summary>
```
% init CLIJ and GPU
clij2 = init_clatlab();

% get input parameters
stack1 = clij2.pushMat(stack1_matrix);
stack2 = clij2.pushMat(stack2_matrix);
destination = clij2.create(stack1);
```

```
% Execute operation on GPU
clij2.concatenateStacks(stack1, stack2, destination);
```

```
% show result
destination = clij2.pullMat(destination)

% cleanup memory on GPU
clij2.release(stack1);
clij2.release(stack2);
clij2.release(destination);
```
</details>


### Usage in Icy
<details>
<summary>
clij2.concatenateStacks(stack1, stack2, destination);
</summary>
```
// init CLIJ and GPU
importClass(net.haesleinhuepf.clicy.CLICY);
importClass(Packages.icy.main.Icy);

clij2 = CLICY.getInstance();

// get input parameters
stack1_sequence = getSequence();stack1 = clij2.pushSequence(stack1_sequence);
stack2_sequence = getSequence();stack2 = clij2.pushSequence(stack2_sequence);
destination = clij2.create(stack1);
```

```
// Execute operation on GPU
clij2.concatenateStacks(stack1, stack2, destination);
```

```
// show result
destination_sequence = clij2.pullSequence(destination)
Icy.addSequence(destination_sequence
// cleanup memory on GPU
clij2.release(stack1);
clij2.release(stack2);
clij2.release(destination);
```
</details>


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

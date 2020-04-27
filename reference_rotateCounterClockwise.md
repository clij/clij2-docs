## rotateCounterClockwise
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/>

Rotates a given input image by 90 degrees counter-clockwise. 

For that, X and Y axis of an image stack
are flipped. This operation is similar to ImageJs 'Reslice [/]' method but offers less flexibility 
such as interpolation.

### Usage in ImageJ macro
```
Ext.CLIJ2_rotateCounterClockwise(Image source, ByRef Image destination);
```


### Usage in Java


<details>

<summary>
clij2.rotateCounterClockwise(source, destination);
</summary>
```
// init CLIJ and GPU
import net.haesleinhuepf.clij2.CLIJ2;
import net.haesleinhuepf.clij.clearcl.ClearCLBuffer;
CLIJ2 clij2 = CLIJ2.getInstance();

// get input parameters
ClearCLBuffer source = clij2.push(sourceImagePlus);
destination = clij2.create(source);
```

```
// Execute operation on GPU
clij2.rotateCounterClockwise(source, destination);
```

```
//show result
destinationImagePlus = clij2.pull(destination);
destinationImagePlus.show();

// cleanup memory on GPU
clij2.release(source);
clij2.release(destination);
```


</details>



### Usage in Matlab


<details>

<summary>
clij2.rotateCounterClockwise(source, destination);
</summary>
```
% init CLIJ and GPU
clij2 = init_clatlab();

% get input parameters
source = clij2.pushMat(source_matrix);
destination = clij2.create(source);
```

```
% Execute operation on GPU
clij2.rotateCounterClockwise(source, destination);
```

```
% show result
destination = clij2.pullMat(destination)

% cleanup memory on GPU
clij2.release(source);
clij2.release(destination);
```


</details>



### Usage in Icy


details>

<summary>
clij2.rotateCounterClockwise(source, destination);
</summary>
```
// init CLIJ and GPU
importClass(net.haesleinhuepf.clicy.CLICY);
importClass(Packages.icy.main.Icy);

clij2 = CLICY.getInstance();

// get input parameters
source_sequence = getSequence();source = clij2.pushSequence(source_sequence);
destination = clij2.create(source);
```

```
// Execute operation on GPU
clij2.rotateCounterClockwise(source, destination);
```

```
// show result
destination_sequence = clij2.pullSequence(destination)
Icy.addSequence(destination_sequence
// cleanup memory on GPU
clij2.release(source);
clij2.release(destination);
```


</details>





### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/rotate.ijm"><img src="images/language_macro.png" height="20"/></a> [rotate.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/rotate.ijm)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

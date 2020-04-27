## detectMaximaSliceBySliceBox
<img src="images/mini_clij1_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/>

Detects local maxima in a given square neighborhood of an input image stack. The input image stack is 
processed slice by slice. Pixels in the resulting image are set to 1 if there is no other pixel in a 
given radius which has a higher intensity, and to 0 otherwise.

### Usage in ImageJ macro
```
Ext.CLIJ2_detectMaximaSliceBySliceBox(Image source, Image destination, Number radius);
```


### Usage in Java


<details>

<summary>
clij2.detectMaximaSliceBySliceBox(source, destination, radius);
</summary>
```
// init CLIJ and GPU
import net.haesleinhuepf.clij2.CLIJ2;
import net.haesleinhuepf.clij.clearcl.ClearCLBuffer;
CLIJ2 clij2 = CLIJ2.getInstance();

// get input parameters
ClearCLBuffer source = clij2.push(sourceImagePlus);
destination = clij2.create(source);
int radius = 10;
```

```
// Execute operation on GPU
clij2.detectMaximaSliceBySliceBox(source, destination, radius);
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
clij2.detectMaximaSliceBySliceBox(source, destination, radius);
</summary>
```
% init CLIJ and GPU
clij2 = init_clatlab();

% get input parameters
source = clij2.pushMat(source_matrix);
destination = clij2.create(source);
radius = 10;
```

```
% Execute operation on GPU
clij2.detectMaximaSliceBySliceBox(source, destination, radius);
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
clij2.detectMaximaSliceBySliceBox(source, destination, radius);
</summary>
```
// init CLIJ and GPU
importClass(net.haesleinhuepf.clicy.CLICY);
importClass(Packages.icy.main.Icy);

clij2 = CLICY.getInstance();

// get input parameters
source_sequence = getSequence();source = clij2.pushSequence(source_sequence);
destination = clij2.create(source);
radius = 10;
```

```
// Execute operation on GPU
clij2.detectMaximaSliceBySliceBox(source, destination, radius);
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



[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

## setColumn
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/>

Sets all pixel values x of a given column in X to a constant value v.

<pre>f(x) = v</pre>

### Usage in ImageJ macro
```
Ext.CLIJ2_setColumn(Image source, Number columnIndex, Number value);
```


### Usage in Java


<details>

<summary>
clij2.setColumn(source, columnIndex, value);
</summary>
```
// init CLIJ and GPU
import net.haesleinhuepf.clij2.CLIJ2;
import net.haesleinhuepf.clij.clearcl.ClearCLBuffer;
CLIJ2 clij2 = CLIJ2.getInstance();

// get input parameters
ClearCLBuffer source = clij2.push(sourceImagePlus);
int columnIndex = 10;
float value = 1.0;
```

```
// Execute operation on GPU
clij2.setColumn(source, columnIndex, value);
```

```
//show result

// cleanup memory on GPU
clij2.release(source);
```


</details>



### Usage in Matlab


<details>

<summary>
clij2.setColumn(source, columnIndex, value);
</summary>
```
% init CLIJ and GPU
clij2 = init_clatlab();

% get input parameters
source = clij2.pushMat(source_matrix);
columnIndex = 10;
value = 1.0;
```

```
% Execute operation on GPU
clij2.setColumn(source, columnIndex, value);
```

```
% show result

% cleanup memory on GPU
clij2.release(source);
```


</details>



### Usage in Icy


details>

<summary>
clij2.setColumn(source, columnIndex, value);
</summary>
```
// init CLIJ and GPU
importClass(net.haesleinhuepf.clicy.CLICY);
importClass(Packages.icy.main.Icy);

clij2 = CLICY.getInstance();

// get input parameters
source_sequence = getSequence();source = clij2.pushSequence(source_sequence);
columnIndex = 10;
value = 1.0;
```

```
// Execute operation on GPU
clij2.setColumn(source, columnIndex, value);
```

```
// show result

// cleanup memory on GPU
clij2.release(source);
```


</details>





### Example notebooks
<a href="https://clij.github.io/clij2-docs/md/tribolium_morphometry"><img src="images/language_macro.png" height="20"/></a> [tribolium_morphometry](https://clij.github.io/clij2-docs/md/tribolium_morphometry)  




### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/rotating_sphere.ijm"><img src="images/language_macro.png" height="20"/></a> [rotating_sphere.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/rotating_sphere.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/tribolium_morphometry.ijm"><img src="images/language_macro.png" height="20"/></a> [tribolium_morphometry.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/tribolium_morphometry.ijm)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

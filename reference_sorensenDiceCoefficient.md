## sorensenDiceCoefficient
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/>

Determines the overlap of two binary images using the Sorensen-Dice coefficent. 

A value of 0 suggests no overlap, 1 means perfect overlap.
The Sorensen-Dice coefficient is saved in the colum 'Sorensen_Dice_coefficient'.
Note that the Sorensen-Dice coefficient s can be calculated from the Jaccard index j using this formula:
<pre>s = f(j) = 2 j / (j + 1)</pre>

### Usage in ImageJ macro
```
Ext.CLIJ2_sorensenDiceCoefficient(Image source1, Image source2);
```


### Usage in Java


<details>

<summary>
clij2.sorensenDiceCoefficient(source1, source2);
</summary>
```
// init CLIJ and GPU
import net.haesleinhuepf.clij2.CLIJ2;
import net.haesleinhuepf.clij.clearcl.ClearCLBuffer;
CLIJ2 clij2 = CLIJ2.getInstance();

// get input parameters
ClearCLBuffer source1 = clij2.push(source1ImagePlus);
ClearCLBuffer source2 = clij2.push(source2ImagePlus);
```

```
// Execute operation on GPU
double resultSorensenDiceCoefficient = clij2.sorensenDiceCoefficient(source1, source2);
```

```
//show result
System.out.println(resultSorensenDiceCoefficient);

// cleanup memory on GPU
clij2.release(source1);
clij2.release(source2);
```


</details>



### Usage in Matlab


<details>

<summary>
clij2.sorensenDiceCoefficient(source1, source2);
</summary>
```
% init CLIJ and GPU
clij2 = init_clatlab();

% get input parameters
source1 = clij2.pushMat(source1_matrix);
source2 = clij2.pushMat(source2_matrix);
```

```
% Execute operation on GPU
double resultSorensenDiceCoefficient = clij2.sorensenDiceCoefficient(source1, source2);
```

```
% show result
System.out.println(resultSorensenDiceCoefficient);

% cleanup memory on GPU
clij2.release(source1);
clij2.release(source2);
```


</details>



### Usage in Icy


details>

<summary>
clij2.sorensenDiceCoefficient(source1, source2);
</summary>
```
// init CLIJ and GPU
importClass(net.haesleinhuepf.clicy.CLICY);
importClass(Packages.icy.main.Icy);

clij2 = CLICY.getInstance();

// get input parameters
source1_sequence = getSequence();source1 = clij2.pushSequence(source1_sequence);
source2_sequence = getSequence();source2 = clij2.pushSequence(source2_sequence);
```

```
// Execute operation on GPU
double resultSorensenDiceCoefficient = clij2.sorensenDiceCoefficient(source1, source2);
```

```
// show result
System.out.println(resultSorensenDiceCoefficient);

// cleanup memory on GPU
clij2.release(source1);
clij2.release(source2);
```


</details>





### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/jython/jaccardIndex.py"><img src="images/language_jython.png" height="20"/></a> [jaccardIndex.py](https://github.com/clij/clij2-docs/blob/master/src/main/jython/jaccardIndex.py)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

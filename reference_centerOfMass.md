## centerOfMass
<img src="images/mini_clij1_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/>

Determines the center of mass of an image or image stack and writes the result in the results table
in the columns MassX, MassY and MassZ.

### centerOfMass often follows after
* <a href="reference_threshold">threshold</a> (3)


### Usage in ImageJ macro
```
Ext.CLIJ2_centerOfMass(Image source);
```




### Usage in Java


<details>

<summary>
clij2.centerOfMass(source);
</summary>
<pre class="highlight">// init CLIJ and GPU
import net.haesleinhuepf.clij2.CLIJ2;
import net.haesleinhuepf.clij.clearcl.ClearCLBuffer;
CLIJ2 clij2 = CLIJ2.getInstance();

// get input parameters
ClearCLBuffer source = clij2.push(sourceImagePlus);
</pre>

<pre class="highlight">
// Execute operation on GPU
double[] resultCenterOfMass = clij2.centerOfMass(source);
</pre>

<pre class="highlight">
//show result
System.out.println(resultCenterOfMass);

// cleanup memory on GPU
clij2.release(source);
</pre>

</details>





### Usage in Matlab


<details>

<summary>
clij2.centerOfMass(source);
</summary>
<pre class="highlight">% init CLIJ and GPU
clij2 = init_clatlab();

% get input parameters
source = clij2.pushMat(source_matrix);
</pre>

<pre class="highlight">
% Execute operation on GPU
double[] resultCenterOfMass = clij2.centerOfMass(source);
</pre>

<pre class="highlight">
% show result
System.out.println(resultCenterOfMass);

% cleanup memory on GPU
clij2.release(source);
</pre>

</details>





### Usage in Icy


<details>

<summary>
clij2.centerOfMass(source);
</summary>
<pre class="highlight">// init CLIJ and GPU
importClass(net.haesleinhuepf.clicy.CLICY);
importClass(Packages.icy.main.Icy);

clij2 = CLICY.getInstance();

// get input parameters
source_sequence = getSequence();source = clij2.pushSequence(source_sequence);
</pre>

<pre class="highlight">
// Execute operation on GPU
double[] resultCenterOfMass = clij2.centerOfMass(source);
</pre>

<pre class="highlight">
// show result
System.out.println(resultCenterOfMass);

// cleanup memory on GPU
clij2.release(source);
</pre>

</details>





### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/motionCorrection.ijm"><img src="images/language_macro.png" height="20"/></a> [motionCorrection.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/motionCorrection.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/motionCorrection_compare_stackreg.ijm"><img src="images/language_macro.png" height="20"/></a> [motionCorrection_compare_stackreg.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/motionCorrection_compare_stackreg.ijm)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

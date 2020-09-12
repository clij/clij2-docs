## maximum2DSphere
<img src="images/mini_clij1_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/>

Computes the local maximum of a pixels ellipsoidal neighborhood. 

The ellipses size is specified by 
its half-width and half-height (radius).

Category: [Filter](https://clij.github.io/clij2-docs/reference__filter)

### maximum2DSphere often follows after
* <a href="reference_writeValuesToPositions">writeValuesToPositions</a> (2)


### maximum2DSphere is often followed by
* <a href="reference_release">release</a> (2)
* <a href="reference_generateTouchMatrix">generateTouchMatrix</a> (2)


### Usage in ImageJ macro
```
Ext.CLIJ2_maximum2DSphere(Image source, Image destination, Number radiusX, Number radiusY);
```


### Usage in object oriented programming languages



<details>

<summary>
Java
</summary>
<pre class="highlight">// init CLIJ and GPU
import net.haesleinhuepf.clij2.CLIJ2;
import net.haesleinhuepf.clij.clearcl.ClearCLBuffer;
CLIJ2 clij2 = CLIJ2.getInstance();

// get input parameters
ClearCLBuffer source = clij2.push(sourceImagePlus);
destination = clij2.create(source);
int radiusX = 10;
int radiusY = 20;
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.maximum2DSphere(source, destination, radiusX, radiusY);
</pre>

<pre class="highlight">
// show result
destinationImagePlus = clij2.pull(destination);
destinationImagePlus.show();

// cleanup memory on GPU
clij2.release(source);
clij2.release(destination);
</pre>

</details>



<details>

<summary>
Matlab
</summary>
<pre class="highlight">% init CLIJ and GPU
clij2 = init_clatlab();

% get input parameters
source = clij2.pushMat(source_matrix);
destination = clij2.create(source);
radiusX = 10;
radiusY = 20;
</pre>

<pre class="highlight">
% Execute operation on GPU
clij2.maximum2DSphere(source, destination, radiusX, radiusY);
</pre>

<pre class="highlight">
% show result
destination = clij2.pullMat(destination)

% cleanup memory on GPU
clij2.release(source);
clij2.release(destination);
</pre>

</details>



<details>

<summary>
Icy JavaScript
</summary>
<pre class="highlight">// init CLIJ and GPU
importClass(net.haesleinhuepf.clicy.CLICY);
importClass(Packages.icy.main.Icy);

clij2 = CLICY.getInstance();

// get input parameters
source_sequence = getSequence();
source = clij2.pushSequence(source_sequence);
destination = clij2.create(source);
radiusX = 10;
radiusY = 20;
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.maximum2DSphere(source, destination, radiusX, radiusY);
</pre>

<pre class="highlight">
// show result
destination_sequence = clij2.pullSequence(destination)
Icy.addSequence(destination_sequence);
// cleanup memory on GPU
clij2.release(source);
clij2.release(destination);
</pre>

</details>





### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/localMaximum.ijm"><img src="images/language_macro.png" height="20"/></a> [localMaximum.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/localMaximum.ijm)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

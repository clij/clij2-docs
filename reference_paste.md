## paste
<img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/>

Pastes an image into another image at a given position.

### Usage in ImageJ macro
```
Ext.CLIJ2_paste(Image source, ByRef Image destination, Number destinationX, Number destinationY);
```




### Usage in Java


<details>

<summary>
clij2.paste(source, destination, destinationX, destinationY);
</summary>
<pre class="highlight">// init CLIJ and GPU
import net.haesleinhuepf.clij2.CLIJ2;
import net.haesleinhuepf.clij.clearcl.ClearCLBuffer;
CLIJ2 clij2 = CLIJ2.getInstance();

// get input parameters
ClearCLBuffer source = clij2.push(sourceImagePlus);
destination = clij2.create(source);
int destinationX = 10;
int destinationY = 20;
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.paste(source, destination, destinationX, destinationY);
</pre>

<pre class="highlight">
//show result
destinationImagePlus = clij2.pull(destination);
destinationImagePlus.show();

// cleanup memory on GPU
clij2.release(source);
clij2.release(destination);
</pre>

</details>





### Usage in Matlab


<details>

<summary>
clij2.paste(source, destination, destinationX, destinationY);
</summary>
<pre class="highlight">% init CLIJ and GPU
clij2 = init_clatlab();

% get input parameters
source = clij2.pushMat(source_matrix);
destination = clij2.create(source);
destinationX = 10;
destinationY = 20;
</pre>

<pre class="highlight">
% Execute operation on GPU
clij2.paste(source, destination, destinationX, destinationY);
</pre>

<pre class="highlight">
% show result
destination = clij2.pullMat(destination)

% cleanup memory on GPU
clij2.release(source);
clij2.release(destination);
</pre>

</details>





### Usage in Icy


<details>

<summary>
clij2.paste(source, destination, destinationX, destinationY);
</summary>
<pre class="highlight">// init CLIJ and GPU
importClass(net.haesleinhuepf.clicy.CLICY);
importClass(Packages.icy.main.Icy);

clij2 = CLICY.getInstance();

// get input parameters
source_sequence = getSequence();
source = clij2.pushSequence(source_sequence);
destination = clij2.create(source);
destinationX = 10;
destinationY = 20;
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.paste(source, destination, destinationX, destinationY);
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





### Example notebooks
<a href="https://clij.github.io/clij2-docs/md/crop_and_paste"><img src="images/language_macro.png" height="20"/></a> [crop_and_paste](https://clij.github.io/clij2-docs/md/crop_and_paste)  




### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/allocateBig2DImages.ijm"><img src="images/language_macro.png" height="20"/></a> [allocateBig2DImages.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/allocateBig2DImages.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/crop_and_paste.ijm"><img src="images/language_macro.png" height="20"/></a> [crop_and_paste.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/crop_and_paste.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/make_super_blobs.ijm"><img src="images/language_macro.png" height="20"/></a> [make_super_blobs.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/make_super_blobs.ijm)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

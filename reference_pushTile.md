## pushTile
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_empty_logo.png"/>

Push a tile in an image specified by its name, position and size to GPU memory in order to process it there later.

Availability: Available in Fiji by activating the update sites clij and clij2.
This function is part of clij2_-2.3.0.6.jar.

### Usage in ImageJ macro
```
Ext.CLIJ2_pushTile(String image, Number tileIndexX, Number tileIndexY, Number tileIndexZ, Number width, Number height, Number depth, Number marginWidth, Number marginHeight, Number marginDepth);
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
ClearCLBuffer image = clij2.push(imageImagePlus);
int tileIndexX = 10;
int tileIndexY = 20;
int tileIndexZ = 30;
int width = 40;
int height = 50;
int depth = 60;
int marginWidth = 70;
int marginHeight = 80;
int image0 = 90;
</pre>

<pre class="highlight">
// Execute operation on GPU
ClearCLBuffer resultPushTile = clij2.pushTile(image, tileIndexX, tileIndexY, tileIndexZ, width, height, depth, marginWidth, marginHeight, image0);
</pre>

<pre class="highlight">
// show result
System.out.println(resultPushTile);

// cleanup memory on GPU
clij2.release(image);
</pre>

</details>



<details>

<summary>
Matlab
</summary>
<pre class="highlight">% init CLIJ and GPU
clij2 = init_clatlab();

% get input parameters
image = clij2.pushMat(image_matrix);
tileIndexX = 10;
tileIndexY = 20;
tileIndexZ = 30;
width = 40;
height = 50;
depth = 60;
marginWidth = 70;
marginHeight = 80;
image0 = 90;
</pre>

<pre class="highlight">
% Execute operation on GPU
ClearCLBuffer resultPushTile = clij2.pushTile(image, tileIndexX, tileIndexY, tileIndexZ, width, height, depth, marginWidth, marginHeight, image0);
</pre>

<pre class="highlight">
% show result
System.out.println(resultPushTile);

% cleanup memory on GPU
clij2.release(image);
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
image_sequence = getSequence();
image = clij2.pushSequence(image_sequence);
tileIndexX = 10;
tileIndexY = 20;
tileIndexZ = 30;
width = 40;
height = 50;
depth = 60;
marginWidth = 70;
marginHeight = 80;
image0 = 90;
</pre>

<pre class="highlight">
// Execute operation on GPU
ClearCLBuffer resultPushTile = clij2.pushTile(image, tileIndexX, tileIndexY, tileIndexZ, width, height, depth, marginWidth, marginHeight, image0);
</pre>

<pre class="highlight">
// show result
System.out.println(resultPushTile);

// cleanup memory on GPU
clij2.release(image);
</pre>

</details>



[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

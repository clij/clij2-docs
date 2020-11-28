## pushTile
<img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_empty_logo.png"/>

Push a tile in an image specified by its name, position and size to GPU memory in order to process it there later.

### Usage in ImageJ macro
```
Ext.CLIJx_pushTile(String image, Number tileIndexX, Number tileIndexY, Number tileIndexZ, Number width, Number height, Number depth, Number marginWidth, Number marginHeight, Number marginDepth);
```


### Usage in object oriented programming languages



<details>

<summary>
Java
</summary>
<pre class="highlight">// init CLIJ and GPU
import net.haesleinhuepf.clijx.CLIJx;
import net.haesleinhuepf.clij.clearcl.ClearCLBuffer;
CLIJx clijx = CLIJx.getInstance();

// get input parameters
ClearCLBuffer image = clijx.push(imageImagePlus);
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
ClearCLBuffer resultPushTile = clijx.pushTile(image, tileIndexX, tileIndexY, tileIndexZ, width, height, depth, marginWidth, marginHeight, image0);
</pre>

<pre class="highlight">
// show result
System.out.println(resultPushTile);

// cleanup memory on GPU
clijx.release(image);
</pre>

</details>



<details>

<summary>
Matlab
</summary>
<pre class="highlight">% init CLIJ and GPU
clijx = init_clatlabx();

% get input parameters
image = clijx.pushMat(image_matrix);
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
ClearCLBuffer resultPushTile = clijx.pushTile(image, tileIndexX, tileIndexY, tileIndexZ, width, height, depth, marginWidth, marginHeight, image0);
</pre>

<pre class="highlight">
% show result
System.out.println(resultPushTile);

% cleanup memory on GPU
clijx.release(image);
</pre>

</details>



[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

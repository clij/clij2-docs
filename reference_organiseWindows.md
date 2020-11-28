## organiseWindows
<img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_empty_logo.png"/>

Organises windows on screen.

### Usage in ImageJ macro
```
Ext.CLIJx_organiseWindows(Number startX, Number startY, Number tilesX, Number tilesY, Number tileWidth, Number tileHeight);
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
int startX = 10;
int startY = 20;
int tilesX = 30;
int tilesY = 40;
int tileWidth = 50;
int tileHeight = 60;
</pre>

<pre class="highlight">
// Execute operation on GPU
clijx.organiseWindows(startX, startY, tilesX, tilesY, tileWidth, tileHeight);
</pre>

<pre class="highlight">
// show result

// cleanup memory on GPU
</pre>

</details>



<details>

<summary>
Matlab
</summary>
<pre class="highlight">% init CLIJ and GPU
clijx = init_clatlabx();

% get input parameters
startX = 10;
startY = 20;
tilesX = 30;
tilesY = 40;
tileWidth = 50;
tileHeight = 60;
</pre>

<pre class="highlight">
% Execute operation on GPU
clijx.organiseWindows(startX, startY, tilesX, tilesY, tileWidth, tileHeight);
</pre>

<pre class="highlight">
% show result

% cleanup memory on GPU
</pre>

</details>



[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

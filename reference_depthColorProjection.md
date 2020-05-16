## depthColorProjection
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_empty_logo.png"/>

Determines a maximum projection of an image stack and does a color coding of the determined arg Z (position of the found maximum). 

Second parameter is a Lookup-Table in the form of an 8-bit image stack 255 pixels wide, 1 pixel high with 3 planes representing red, green and blue intensities.
Resulting image is a 3D image with three Z-planes representing red, green and blue channels.

### Usage in ImageJ macro
```
Ext.CLIJ2_depthColorProjection(Image source, Image lookup_table, ByRef Image destination_max, Number min_display_intensity, Number max_display_intensity);
```




### Usage in Java


<details>

<summary>
clij2.depthColorProjection(source, lookup_table, destination_max, min_display_intensity, max_display_intensity);
</summary>
<pre class="highlight">// init CLIJ and GPU
import net.haesleinhuepf.clij2.CLIJ2;
import net.haesleinhuepf.clij.clearcl.ClearCLBuffer;
CLIJ2 clij2 = CLIJ2.getInstance();

// get input parameters
ClearCLBuffer source = clij2.push(sourceImagePlus);
ClearCLBuffer lookup_table = clij2.push(lookup_tableImagePlus);
destination_max = clij2.create(source);
float min_display_intensity = 1.0;
float max_display_intensity = 2.0;
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.depthColorProjection(source, lookup_table, destination_max, min_display_intensity, max_display_intensity);
</pre>

<pre class="highlight">
//show result
destination_maxImagePlus = clij2.pull(destination_max);
destination_maxImagePlus.show();

// cleanup memory on GPU
clij2.release(source);
clij2.release(lookup_table);
clij2.release(destination_max);
</pre>

</details>





### Usage in Matlab


<details>

<summary>
clij2.depthColorProjection(source, lookup_table, destination_max, min_display_intensity, max_display_intensity);
</summary>
<pre class="highlight">% init CLIJ and GPU
clij2 = init_clatlab();

% get input parameters
source = clij2.pushMat(source_matrix);
lookup_table = clij2.pushMat(lookup_table_matrix);
destination_max = clij2.create(source);
min_display_intensity = 1.0;
max_display_intensity = 2.0;
</pre>

<pre class="highlight">
% Execute operation on GPU
clij2.depthColorProjection(source, lookup_table, destination_max, min_display_intensity, max_display_intensity);
</pre>

<pre class="highlight">
% show result
destination_max = clij2.pullMat(destination_max)

% cleanup memory on GPU
clij2.release(source);
clij2.release(lookup_table);
clij2.release(destination_max);
</pre>

</details>





### Usage in Icy


<details>

<summary>
clij2.depthColorProjection(source, lookup_table, destination_max, min_display_intensity, max_display_intensity);
</summary>
<pre class="highlight">// init CLIJ and GPU
importClass(net.haesleinhuepf.clicy.CLICY);
importClass(Packages.icy.main.Icy);

clij2 = CLICY.getInstance();

// get input parameters
source_sequence = getSequence();
source = clij2.pushSequence(source_sequence);
lookup_table_sequence = getSequence();
lookup_table = clij2.pushSequence(lookup_table_sequence);
destination_max = clij2.create(source);
min_display_intensity = 1.0;
max_display_intensity = 2.0;
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.depthColorProjection(source, lookup_table, destination_max, min_display_intensity, max_display_intensity);
</pre>

<pre class="highlight">
// show result
destination_max_sequence = clij2.pullSequence(destination_max)
Icy.addSequence(destination_max_sequence);
// cleanup memory on GPU
clij2.release(source);
clij2.release(lookup_table);
clij2.release(destination_max);
</pre>

</details>





### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/depth_colour_projection.ijm"><img src="images/language_macro.png" height="20"/></a> [depth_colour_projection.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/depth_colour_projection.ijm)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

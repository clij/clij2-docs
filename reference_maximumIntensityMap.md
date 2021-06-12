## maximumIntensityMap
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/>

Takes an image and a corresponding label map, determines the maximum intensity per label and replaces every label with the that number.

This results in a parametric image expressing mean object intensity.

Categories: [Labels](https://clij.github.io/clij2-docs/reference__label), [Measurements](https://clij.github.io/clij2-docs/reference__measurement), Visualisation

Availability: Available in Fiji by activating the update sites clij and clij2.
This function is part of clij2_-2.5.0.1.jar.

### Usage in ImageJ macro
```
Ext.CLIJ2_maximumIntensityMap(Image intensity_image, Image label_map, Image destination);
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
ClearCLBuffer intensity_image = clij2.push(intensity_imageImagePlus);
ClearCLBuffer label_map = clij2.push(label_mapImagePlus);
destination = clij2.create(intensity_image);
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.maximumIntensityMap(intensity_image, label_map, destination);
</pre>

<pre class="highlight">
// show result
destinationImagePlus = clij2.pull(destination);
destinationImagePlus.show();

// cleanup memory on GPU
clij2.release(intensity_image);
clij2.release(label_map);
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
intensity_image = clij2.pushMat(intensity_image_matrix);
label_map = clij2.pushMat(label_map_matrix);
destination = clij2.create(intensity_image);
</pre>

<pre class="highlight">
% Execute operation on GPU
clij2.maximumIntensityMap(intensity_image, label_map, destination);
</pre>

<pre class="highlight">
% show result
destination = clij2.pullMat(destination)

% cleanup memory on GPU
clij2.release(intensity_image);
clij2.release(label_map);
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
intensity_image_sequence = getSequence();
intensity_image = clij2.pushSequence(intensity_image_sequence);
label_map_sequence = getSequence();
label_map = clij2.pushSequence(label_map_sequence);
destination = clij2.create(intensity_image);
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.maximumIntensityMap(intensity_image, label_map, destination);
</pre>

<pre class="highlight">
// show result
destination_sequence = clij2.pullSequence(destination)
Icy.addSequence(destination_sequence);
// cleanup memory on GPU
clij2.release(intensity_image);
clij2.release(label_map);
clij2.release(destination);
</pre>

</details>



[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

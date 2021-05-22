## voronoiOtsuLabeling
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_cle_logo.png"/>

Labeles objects directly from grey-value images.

The two sigma parameters allow tuning the segmentation result. The first sigma controls how close detected cells can be (spot_sigma) and the second controls how precise segmented objects are outlined (outline_sigma).Under the hood, this filter applies two Gaussian blurs, spot detection, Otsu-thresholding and Voronoi-labeling.
The thresholded binary image is flooded using the Voronoi approach starting from the found local maxima.
Noise-removal sigma for spot detection and thresholding can be configured separately.

Category: [Labels](https://clij.github.io/clij2-docs/reference__label)

Availability: Available in Fiji by activating the update sites clij and clij2.
This function is part of clij2_-2.3.0.6.jar.

### Usage in ImageJ macro
```
Ext.CLIJ2_voronoiOtsuLabeling(Image input, Image destination, Number spot_sigma, Number outline_sigma);
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
ClearCLBuffer input = clij2.push(inputImagePlus);
destination = clij2.create(input);
float spot_sigma = 1.0;
float outline_sigma = 2.0;
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.voronoiOtsuLabeling(input, destination, spot_sigma, outline_sigma);
</pre>

<pre class="highlight">
// show result
destinationImagePlus = clij2.pull(destination);
destinationImagePlus.show();

// cleanup memory on GPU
clij2.release(input);
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
input = clij2.pushMat(input_matrix);
destination = clij2.create(input);
spot_sigma = 1.0;
outline_sigma = 2.0;
</pre>

<pre class="highlight">
% Execute operation on GPU
clij2.voronoiOtsuLabeling(input, destination, spot_sigma, outline_sigma);
</pre>

<pre class="highlight">
% show result
destination = clij2.pullMat(destination)

% cleanup memory on GPU
clij2.release(input);
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
input_sequence = getSequence();
input = clij2.pushSequence(input_sequence);
destination = clij2.create(input);
spot_sigma = 1.0;
outline_sigma = 2.0;
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.voronoiOtsuLabeling(input, destination, spot_sigma, outline_sigma);
</pre>

<pre class="highlight">
// show result
destination_sequence = clij2.pullSequence(destination)
Icy.addSequence(destination_sequence);
// cleanup memory on GPU
clij2.release(input);
clij2.release(destination);
</pre>

</details>



<details>

<summary>
clEsperanto Python (experimental)
</summary>
<pre class="highlight">import pyclesperanto_prototype as cle

cle.voronoi_otsu_labeling(input, destination, spot_sigma, outline_sigma)

</pre>



</details>





### Example notebooks
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/segmentation/Segmentation_3D.ipynb"><img src="images/language_python.png" height="20"/></a> [Segmentation_3D.ipynb](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/segmentation/Segmentation_3D.ipynb)  
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/segmentation/voronoi_otsu_labeling.ipynb"><img src="images/language_python.png" height="20"/></a> [voronoi_otsu_labeling.ipynb](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/segmentation/voronoi_otsu_labeling.ipynb)  




### Example scripts
<a href="https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/napari_gui/napari_performance_demo.py"><img src="images/language_python.png" height="20"/></a> [napari_performance_demo.py](https://github.com/clEsperanto/pyclesperanto_prototype/tree/master/demo/napari_gui/napari_performance_demo.py)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

## histogram
<img src="images/mini_clij1_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_cle_logo.png"/>

By Robert Haase adapted work from Aaftab Munshi, Benedict Gaster, Timothy Mattson, James Fung, Dan Ginsburg

Determines the histogram of a given image.

The histogram image is of dimensions number_of_bins/1/1; a 3D image with height=1 and depth=1. 
Histogram bins contain the number of pixels with intensity in this corresponding bin. 
The histogram bins are uniformly distributed between given minimum and maximum grey value intensity. 
If the flag determine_min_max is set, minimum and maximum intensity will be determined. 
When calling this operation many times, it is recommended to determine minimum and maximum intensity 
once at the beginning and handing over these values.

Category: [Measurements](https://clij.github.io/clij2-docs/reference__measurement)

Availability: Available in Fiji by activating the update sites clij and clij2.
This function is part of clij2_-2.2.0.19.jar.

### Usage in ImageJ macro
```
Ext.CLIJ2_histogram(Image source, Image destination, Number number_of_bins, Number minimum_intensity, Number maximum_intensity, Boolean determine_min_max);
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
int number_of_bins = 10;
float minimum_intensity = 1.0;
float maximum_intensity = 2.0;
boolean determine_min_max = true;
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.histogram(source, destination, number_of_bins, minimum_intensity, maximum_intensity, determine_min_max);
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
number_of_bins = 10;
minimum_intensity = 1.0;
maximum_intensity = 2.0;
determine_min_max = true;
</pre>

<pre class="highlight">
% Execute operation on GPU
clij2.histogram(source, destination, number_of_bins, minimum_intensity, maximum_intensity, determine_min_max);
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
number_of_bins = 10;
minimum_intensity = 1.0;
maximum_intensity = 2.0;
determine_min_max = true;
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.histogram(source, destination, number_of_bins, minimum_intensity, maximum_intensity, determine_min_max);
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



<details>

<summary>
clEsperanto Python (experimental)
</summary>
<pre class="highlight">import pyclesperanto_prototype as cle

cle.histogram(source, destination, number_of_bins, minimum_intensity, maximum_intensity, determine_min_max)

</pre>



</details>





### License terms
// adapted code from  
// https://github.com/bgaster/opencl-book-samples/blob/master/src/Chapter_14/histogram/histogram_image.cl  
//  
// It was published unter BSD license according to  
// https://code.google.com/archive/p/opencl-book-samples/  
//  
// Book:      OpenCL(R) Programming Guide  
// Authors:   Aaftab Munshi, Benedict Gaster, Timothy Mattson, James Fung, Dan Ginsburg  
// ISBN-10:   0-321-74964-2  
// ISBN-13:   978-0-321-74964-2  
// Publisher: Addison-Wesley Professional  
// URLs:      http://safari.informit.com/9780132488006/  
//            http://www.openclprogrammingguide.com

[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

## histogram
<img src="images/mini_clij1_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/>

Determines the histogram of a given image.
The histogram image is of dimensions number_of_bins/1/1; a 3D image with height=1 and depth=1. 
Histogram bins contain the number of pixels with intensity in this corresponding bin.  
The histogram bins are uniformly distributed between given minimum and maximum grey value intensity. 
If the flag determine_min_max is set, minimum and maximum intensity will be determined. 
When calling this operation many times, it is recommended to determine minimum and maximum intensity once at the beginning and handing over these values.

### Usage in ImageJ macro
```
Ext.CLIJ2_histogram(Image source, Image destination, Number numberOfBins, Number minimumGreyValue, Number maximumGreyValue, Boolean determineMinAndMax);
```




### Usage in Java


<details>

<summary>
clij2.histogram(source, destination, numberOfBins, minimumGreyValue, maximumGreyValue, determineMinAndMax);
</summary>
<pre class="highlight">// init CLIJ and GPU
import net.haesleinhuepf.clij2.CLIJ2;
import net.haesleinhuepf.clij.clearcl.ClearCLBuffer;
CLIJ2 clij2 = CLIJ2.getInstance();

// get input parameters
ClearCLBuffer source = clij2.push(sourceImagePlus);
destination = clij2.create(source);
int numberOfBins = 10;
float minimumGreyValue = 1.0;
float maximumGreyValue = 2.0;
boolean determineMinAndMax = true;
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.histogram(source, destination, numberOfBins, minimumGreyValue, maximumGreyValue, determineMinAndMax);
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
clij2.histogram(source, destination, numberOfBins, minimumGreyValue, maximumGreyValue, determineMinAndMax);
</summary>
<pre class="highlight">% init CLIJ and GPU
clij2 = init_clatlab();

% get input parameters
source = clij2.pushMat(source_matrix);
destination = clij2.create(source);
numberOfBins = 10;
minimumGreyValue = 1.0;
maximumGreyValue = 2.0;
determineMinAndMax = true;
</pre>

<pre class="highlight">
% Execute operation on GPU
clij2.histogram(source, destination, numberOfBins, minimumGreyValue, maximumGreyValue, determineMinAndMax);
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
clij2.histogram(source, destination, numberOfBins, minimumGreyValue, maximumGreyValue, determineMinAndMax);
</summary>
<pre class="highlight">// init CLIJ and GPU
importClass(net.haesleinhuepf.clicy.CLICY);
importClass(Packages.icy.main.Icy);

clij2 = CLICY.getInstance();

// get input parameters
source_sequence = getSequence();
source = clij2.pushSequence(source_sequence);
destination = clij2.create(source);
numberOfBins = 10;
minimumGreyValue = 1.0;
maximumGreyValue = 2.0;
determineMinAndMax = true;
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.histogram(source, destination, numberOfBins, minimumGreyValue, maximumGreyValue, determineMinAndMax);
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



[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

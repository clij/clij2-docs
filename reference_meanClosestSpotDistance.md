## meanClosestSpotDistance
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_empty_logo.png"/>

Determines the distance between pairs of closest spots in two binary images. 

Takes two binary images A and B with marked spots and determines for each spot in image A the closest spot in image B. Afterwards, it saves the average shortest distances from image A to image B as 'mean_closest_spot_distance_A_B' and from image B to image A as 'mean_closest_spot_distance_B_A' to the results table. The distance between B and A is only determined if the `bidirectional` checkbox is checked.

Category: [Measurements](https://clij.github.io/clij2-docs/reference__measurement)

Availability: Available in Fiji by activating the update sites clij and clij2.
This function is part of clij2_-2.3.0.6.jar.

### Usage in ImageJ macro
```
Ext.CLIJ2_meanClosestSpotDistance(Image spotsA, Image spotsB, Boolean bidirectional);
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
ClearCLBuffer spotsA = clij2.push(spotsAImagePlus);
ClearCLBuffer spotsB = clij2.push(spotsBImagePlus);
boolean bidirectional = true;
</pre>

<pre class="highlight">
// Execute operation on GPU
double[] resultMeanClosestSpotDistance = clij2.meanClosestSpotDistance(spotsA, spotsB, bidirectional);
</pre>

<pre class="highlight">
// show result
System.out.println(resultMeanClosestSpotDistance);

// cleanup memory on GPU
clij2.release(spotsA);
clij2.release(spotsB);
</pre>

</details>



<details>

<summary>
Matlab
</summary>
<pre class="highlight">% init CLIJ and GPU
clij2 = init_clatlab();

% get input parameters
spotsA = clij2.pushMat(spotsA_matrix);
spotsB = clij2.pushMat(spotsB_matrix);
bidirectional = true;
</pre>

<pre class="highlight">
% Execute operation on GPU
double[] resultMeanClosestSpotDistance = clij2.meanClosestSpotDistance(spotsA, spotsB, bidirectional);
</pre>

<pre class="highlight">
% show result
System.out.println(resultMeanClosestSpotDistance);

% cleanup memory on GPU
clij2.release(spotsA);
clij2.release(spotsB);
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
spotsA_sequence = getSequence();
spotsA = clij2.pushSequence(spotsA_sequence);
spotsB_sequence = getSequence();
spotsB = clij2.pushSequence(spotsB_sequence);
bidirectional = true;
</pre>

<pre class="highlight">
// Execute operation on GPU
double[] resultMeanClosestSpotDistance = clij2.meanClosestSpotDistance(spotsA, spotsB, bidirectional);
</pre>

<pre class="highlight">
// show result
System.out.println(resultMeanClosestSpotDistance);

// cleanup memory on GPU
clij2.release(spotsA);
clij2.release(spotsB);
</pre>

</details>



[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

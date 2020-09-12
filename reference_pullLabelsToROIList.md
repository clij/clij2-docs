## pullLabelsToROIList
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_empty_logo.png"/>

Pulls all labels in a label map as ROIs to a list. 

From ImageJ macro this list is written to the log 
window. From ImageJ macro conside using pullLabelsToROIManager.

Category: [Labels](https://clij.github.io/clij2-docs/reference__label)

### Usage in ImageJ macro
```
Ext.CLIJ2_pullLabelsToROIList(Image labelmap_input);
```




### Usage in Java


<details>

<summary>
clij2.pullLabelsToROIList(labelmap_input);
</summary>
<pre class="highlight">// init CLIJ and GPU
import net.haesleinhuepf.clij2.CLIJ2;
import net.haesleinhuepf.clij.clearcl.ClearCLBuffer;
CLIJ2 clij2 = CLIJ2.getInstance();

// get input parameters
ClearCLBuffer labelmap_input = clij2.push(labelmap_inputImagePlus);
</pre>

<pre class="highlight">
// Execute operation on GPU
ArrayList resultPullLabelsToROIList = clij2.pullLabelsToROIList(labelmap_input);
</pre>

<pre class="highlight">
//show result
System.out.println(resultPullLabelsToROIList);

// cleanup memory on GPU
clij2.release(labelmap_input);
</pre>

</details>





### Usage in Matlab


<details>

<summary>
clij2.pullLabelsToROIList(labelmap_input);
</summary>
<pre class="highlight">% init CLIJ and GPU
clij2 = init_clatlab();

% get input parameters
labelmap_input = clij2.pushMat(labelmap_input_matrix);
</pre>

<pre class="highlight">
% Execute operation on GPU
ArrayList resultPullLabelsToROIList = clij2.pullLabelsToROIList(labelmap_input);
</pre>

<pre class="highlight">
% show result
System.out.println(resultPullLabelsToROIList);

% cleanup memory on GPU
clij2.release(labelmap_input);
</pre>

</details>





### Usage in Icy


<details>

<summary>
clij2.pullLabelsToROIList(labelmap_input);
</summary>
<pre class="highlight">// init CLIJ and GPU
importClass(net.haesleinhuepf.clicy.CLICY);
importClass(Packages.icy.main.Icy);

clij2 = CLICY.getInstance();

// get input parameters
labelmap_input_sequence = getSequence();
labelmap_input = clij2.pushSequence(labelmap_input_sequence);
</pre>

<pre class="highlight">
// Execute operation on GPU
ArrayList resultPullLabelsToROIList = clij2.pullLabelsToROIList(labelmap_input);
</pre>

<pre class="highlight">
// show result
System.out.println(resultPullLabelsToROIList);

// cleanup memory on GPU
clij2.release(labelmap_input);
</pre>

</details>



[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

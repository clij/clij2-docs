

# Maximum Projections

This macro shows how maximum projection 
can be done in the GPU.

Author: Robert Haase
        April 2020

## Start
Let's clean up first and load some 3D example data.

<pre class="highlight">
run ("Close All");

// Get test data
run("T1 Head (2.4M, 16-bits)");

</pre>
<a href="image_1587404231900.png"><img src="image_1587404231900.png" width="250" alt="t1-head.tif"/></a>

We then initialize the GPU and send the image to its memory.

<pre class="highlight">
run("CLIJ2 Macro Extensions", "cl_device=");
Ext.CLIJ2_clear();

// push images to GPU
input = getTitle();
Ext.CLIJ2_push(input);

// CleanUp ImageJ
close();
</pre>

## Maximum projecitons
We can use the classical maximum intensity projection in Z:

<pre class="highlight">
Ext.<a href="https://clij.github.io/clij2-docs/reference_maximumZProjection">CLIJ2_maximumZProjection</a>(input, maximum_z_projected);
Ext.CLIJ2_pull(maximum_z_projected);
</pre>
<a href="image_1587404232000.png"><img src="image_1587404232000.png" width="250" alt="CLIJ2_maximumZProjection_result71"/></a>

But we can also project in X and Y direction:

<pre class="highlight">
Ext.<a href="https://clij.github.io/clij2-docs/reference_maximumYProjection">CLIJ2_maximumYProjection</a>(input, maximum_y_projected);
Ext.CLIJ2_pull(maximum_y_projected);

Ext.<a href="https://clij.github.io/clij2-docs/reference_maximumXProjection">CLIJ2_maximumXProjection</a>(input, maximum_x_projected);
Ext.CLIJ2_pull(maximum_x_projected);
</pre>
<a href="image_1587404232083.png"><img src="image_1587404232083.png" width="250" alt="CLIJ2_maximumYProjection_result72"/></a>
<a href="image_1587404232097.png"><img src="image_1587404232097.png" width="250" alt="CLIJ2_maximumXProjection_result73"/></a>

Furthermore, we can frame the range from which the projection is drawn:

<pre class="highlight">
min_z = 90;
max_z = 100;
Ext.<a href="https://clij.github.io/clij2-docs/reference_maximumZProjectionBounded">CLIJ2_maximumZProjectionBounded</a>(input, bound_projection, min_z, max_z);
Ext.CLIJ2_pull(bound_projection);
</pre>
<a href="image_1587404232142.png"><img src="image_1587404232142.png" width="250" alt="CLIJ2_maximumZProjectionBounded_result74"/></a>

Cleanup by the end

<pre class="highlight">
Ext.CLIJ2_clear();
</pre>



</pre>
</pre>

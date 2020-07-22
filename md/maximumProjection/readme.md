

# Maximum projections
Authors: Robert Haase, Daniela Vorkel, April 2020

[Source](https://github.com/clij/clij2-docs/tree/master/src/main/macro/maximumProjection.ijm)


This macro shows how a maximum projection 
can be done in the GPU.


## Start
Let's clean up first and load some 3D example data:

<pre class="highlight">
run ("Close All");

// get test data
run("T1 Head (2.4M, 16-bits)");

</pre>
<a href="image_1588706991489.png"><img src="image_1588706991489.png" width="224" alt="t1-head.tif"/></a>

We then initialize the GPU and send the image to its memory:

<pre class="highlight">
run("CLIJ2 Macro Extensions", "cl_device=");
Ext.<a href="https://clij.github.io/clij2-docs/reference_clear">CLIJ2_clear</a>();

// push images to GPU
input = getTitle();
Ext.<a href="https://clij.github.io/clij2-docs/reference_push">CLIJ2_push</a>(input);

// clean up ImageJ
close();
</pre>

## Maximum projections
We can use the classic maximum intensity projection in Z:

<pre class="highlight">
Ext.<a href="https://clij.github.io/clij2-docs/reference_maximumZProjection">CLIJ2_maximumZProjection</a>(input, maximum_z_projected);
Ext.<a href="https://clij.github.io/clij2-docs/reference_pull">CLIJ2_pull</a>(maximum_z_projected);
</pre>
<a href="image_1588706991671.png"><img src="image_1588706991671.png" width="224" alt="CLIJ2_maximumZProjection_result47"/></a>

But also, we can project maximum intensity in X and Y direction:

<pre class="highlight">
Ext.<a href="https://clij.github.io/clij2-docs/reference_maximumYProjection">CLIJ2_maximumYProjection</a>(input, maximum_y_projected);
Ext.<a href="https://clij.github.io/clij2-docs/reference_pull">CLIJ2_pull</a>(maximum_y_projected);

Ext.<a href="https://clij.github.io/clij2-docs/reference_maximumXProjection">CLIJ2_maximumXProjection</a>(input, maximum_x_projected);
Ext.<a href="https://clij.github.io/clij2-docs/reference_pull">CLIJ2_pull</a>(maximum_x_projected);
</pre>
<a href="image_1588706991780.png"><img src="image_1588706991780.png" width="224" alt="CLIJ2_maximumYProjection_result48"/></a>
<a href="image_1588706991793.png"><img src="image_1588706991793.png" width="224" alt="CLIJ2_maximumXProjection_result49"/></a>

Furthermore, we can frame the range from which the projection is drawn:

<pre class="highlight">
min_z = 90;
max_z = 100;
Ext.<a href="https://clij.github.io/clij2-docs/reference_maximumZProjectionBounded">CLIJ2_maximumZProjectionBounded</a>(input, bound_projection, min_z, max_z);
Ext.<a href="https://clij.github.io/clij2-docs/reference_pull">CLIJ2_pull</a>(bound_projection);
</pre>
<a href="image_1588706991845.png"><img src="image_1588706991845.png" width="224" alt="CLIJ2_maximumZProjectionBounded_result50"/></a>

At the end of the macro, clean up:

<pre class="highlight">
Ext.<a href="https://clij.github.io/clij2-docs/reference_clear">CLIJ2_clear</a>();
</pre>





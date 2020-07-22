

# Multiply vectors and matrices
Authors: Robert Haase, Daniela Vorkel, April 2020

[Source](https://github.com/clij/clij2-docs/tree/master/src/main/macro/anisotropic_coordinates.ijm)

When dealing with three dimensional point coordinates, it is mandatory to 
take the voxel size into account, e.g. for measuring distances between points.
This example shows how to multiply a list of coordinates by a given voxel size.

## Initialize GPU

<pre class="highlight">
run("CLIJ2 Macro Extensions", "cl_device=[gfx900]");
Ext.<a href="https://clij.github.io/clij2-docs/reference_clear">CLIJ2_clear</a>();
</pre>

## Get test data 
We define the voxel size as an ImageJ macro array and push it to the GPU:

<pre class="highlight">
Ext.<a href="https://clij.github.io/clij2-docs/reference_pushArray">CLIJ2_pushArray</a>(voxel_size, newArray(0.2, 0.2, 0.5), 1, 3, 1);
Ext.<a href="https://clij.github.io/clij2-docs/reference_print">CLIJ2_print</a>(voxel_size);
</pre>
<pre>
> 0.2
> 0.2
> 0.5
</pre>

We also define a CLIJ-matrix of XYZ coordinates:

<pre class="highlight">
number_of_coordinates = 4;
number_of_dimensions = 3;
Ext.<a href="https://clij.github.io/clij2-docs/reference_pushArray">CLIJ2_pushArray</a>(pointlist, newArray(
	1, 3, 5, 11, // X
	0, 6, 1, 2,  // Y
	9, 11, 6, 2  // Z
	), number_of_coordinates, number_of_dimensions, 1);
Ext.<a href="https://clij.github.io/clij2-docs/reference_print">CLIJ2_print</a>(pointlist);
</pre>
<pre>
> 1.0 3.0 5.0 11.0
> 0.0 6.0 1.0 2.0
> 9.0 11.0 6.0 2.0
</pre>

## Multiplying images element by element
When multiplying images of different size, the 
[clamp-to-edge (CLK_ADDRESS_CLAMP_TO_EDGE)](https://www.khronos.org/registry/OpenCL/sdk/1.2/docs/man/xhtml/sampler_t.html) 
strategy is used: to access a pixel outside the image, the value of a closest pixel at the image boundary is used, instead.
This enables to multiply a vector by a matrix, like shown above:

<pre class="highlight">
Ext.<a href="https://clij.github.io/clij2-docs/reference_multiplyImages">CLIJ2_multiplyImages</a>(pointlist, voxel_size, transformed_pointlist);
Ext.<a href="https://clij.github.io/clij2-docs/reference_print">CLIJ2_print</a>(transformed_pointlist);
</pre>
<pre>
> 0.2 0.6 1.0 2.2
> 0.0 1.2 0.2 0.4
> 4.5 5.5 3.0 1.0
</pre>

Note: If the resulting image does not exist in first place, CLIJ has to guess
its size. Thus, it takes the input size of the first image to operate. So, 
if you permute the input parameters, the resulting matrix size will be 'wrong':

<pre class="highlight">
Ext.<a href="https://clij.github.io/clij2-docs/reference_multiplyImages">CLIJ2_multiplyImages</a>(voxel_size, pointlist, transformed_pointlist2);
Ext.<a href="https://clij.github.io/clij2-docs/reference_print">CLIJ2_print</a>(transformed_pointlist2);
</pre>
<pre>
> 0.2
> 0.0
> 4.5
</pre>

At the end of the macro, clean up:

<pre class="highlight">
Ext.<a href="https://clij.github.io/clij2-docs/reference_clear">CLIJ2_clear</a>();

</pre>





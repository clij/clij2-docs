

# Combining CLIJ and CLIJ2 
Author: Robert Haase
        February 2020

[Source](https://github.com/clij/clij2-docs/tree/master/src/main/macro/clij1_clij2_combination.ijm)

This macro shows how to combine CLIJ and CLIJ2

Initially, we define two input images we would like to combine by adding.

<pre class="highlight">
// clean up first 
run("Close All"); 
 
// Get test data 
run("Blobs (25K)"); 
run("8-bit");
rename("original");
getDimensions(width, height, channels, slices, frames)
original = getTitle();

newImage("background", "16-bit ramp", width, height, slices);
 background = getTitle();
</pre>
<a href="image_1588140560261.png"><img src="image_1588140560261.png" width="224" alt="original"/></a>
<a href="image_1588140560355.png"><img src="image_1588140560355.png" width="224" alt="background"/></a>

## Initialize GPU and push image data to GPU memory
When combining CLIJ and CLIJ2, it is important to initialize CLIJ2 like in the following example. 
CLIJ2 takes care of initializing CLIJ in the background:

<pre class="highlight">
run("CLIJ2 Macro Extensions", "cl_device="); 
Ext.CLIJ2_clear(); 
</pre>

## Pushing images to GPU memory
Afterwards, all methods from CLIJ and CLIJ2 are available, for example for pushing images to the GPU:

<pre class="highlight">
// push images to GPU using CLIJ2
Ext.CLIJ2_push(original);
// push images to GPU using CLIJ
Ext.CLIJ_push(background);

// cleanup imagej 
run("Close All"); 

</pre>

... and for creating an output image with 32 bits using CLIJ:

<pre class="highlight">
originalWithBackground = "originalWithBackground";
Ext.CLIJ_create2D(originalWithBackground, width, height, 32);

</pre>

## Combining images managed by CLIJ and CLIJ2
Images which have been pushed and or creaated by CLIJ or CLIJ2 can be combined with any command:

<pre class="highlight">
 Ext.<a href="https://clij.github.io/clij2-docs/reference_addImagesWeighted">CLIJ2_addImagesWeighted</a>(original, background, originalWithBackground, 1, 0.01);
 
// show result  using CLIJ2
Ext.CLIJ2_pull(originalWithBackground); 
run("Invert LUT"); 

</pre>
<a href="image_1588140562657.png"><img src="image_1588140562657.png" width="224" alt="originalWithBackground"/></a>

## Clean up finally using CLIJ2
As in every workflow, clean up by the end:

<pre class="highlight">
Ext.CLIJ2_clear();

</pre>





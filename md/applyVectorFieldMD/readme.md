

# Warp images
Authors: Robert Haase, Daniela Vorkel, April 2020

[Source](https://github.com/clij/clij2-docs/tree/master/src/main/macro/applyVectorFieldMD.ijm)

This script demonstrates how to apply a vector field
to an image, in order to transform it non-rigidly.


Get test data:

<pre class="highlight">
run("Close All");

// get test image
run("Blobs (25K)");
input = getTitle();

</pre>
<a href="image_1588705395527.png"><img src="image_1588705395527.png" width="224" alt="blobs.gif"/></a>

Create two images describing a local shift:

<pre class="highlight">
shiftX = "shiftX";
shiftY = "shiftY";
newImage(shiftX, "32-bit black", 256, 254, 1);
newImage(shiftY, "32-bit black", 256, 254, 1);

// blur the shift to smooth it in space
selectImage("shiftX");
makeOval(20, 98, 72, 68);
run("Add...", "value=25");
run("Select None");
run("Gaussian Blur...", "sigma=15");
run("Enhance Contrast", "saturated=0.35");

</pre>
<a href="image_1588705395688.png"><img src="image_1588705395688.png" width="224" alt="shiftX"/></a>
<a href="image_1588705395699.png"><img src="image_1588705395699.png" width="224" alt="shiftY"/></a>

## Initialize GPU and push images to GPU memory

<pre class="highlight">
run("CLIJ2 Macro Extensions", "cl_device=");
Ext.<a href="https://clij.github.io/clij2-docs/reference_push">CLIJ2_push</a>(input);
Ext.<a href="https://clij.github.io/clij2-docs/reference_push">CLIJ2_push</a>(shiftX);
Ext.<a href="https://clij.github.io/clij2-docs/reference_push">CLIJ2_push</a>(shiftY);

</pre>

## Apply a shift, rotate it, and apply as loop

<pre class="highlight">
for (i = 0; i < 36; i += 6) {

	// change the shift from slice to slice
	Ext.<a href="https://clij.github.io/clij2-docs/reference_affineTransform2D">CLIJ2_affineTransform2D</a>(shiftX, rotatedShiftX, "-center rotate=" + (i * 10) + " center");
	
	// apply transform
	Ext.<a href="https://clij.github.io/clij2-docs/reference_applyVectorField2D">CLIJ2_applyVectorField2D</a>(input, rotatedShiftX, shiftY, transformed);

	// get result back from GPU
	Ext.<a href="https://clij.github.io/clij2-docs/reference_pull">CLIJ2_pull</a>(transformed);
	rename("Angle " + (i * 10) + " deg");
}

</pre>
<a href="image_1588705395903.png"><img src="image_1588705395903.png" width="224" alt="Angle 0 deg"/></a>
<a href="image_1588705395967.png"><img src="image_1588705395967.png" width="224" alt="Angle 60 deg"/></a>
<a href="image_1588705396027.png"><img src="image_1588705396027.png" width="224" alt="Angle 120 deg"/></a>
<a href="image_1588705396088.png"><img src="image_1588705396088.png" width="224" alt="Angle 180 deg"/></a>
<a href="image_1588705396149.png"><img src="image_1588705396149.png" width="224" alt="Angle 240 deg"/></a>
<a href="image_1588705396209.png"><img src="image_1588705396209.png" width="224" alt="Angle 300 deg"/></a>

At the end of the macro, clean up:

<pre class="highlight">
Ext.<a href="https://clij.github.io/clij2-docs/reference_clear">CLIJ2_clear</a>();
</pre>





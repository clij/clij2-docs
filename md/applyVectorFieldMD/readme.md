

# CLIJ Example: applyVectorFieldMD.ijm

This script demonstrates how to apply a vector field
to an image in order to transform it non-rigidly

Author: Robert Haase, rhaase@mpi-cbg.de
March 2019

Get test data

<pre class="highlight">
run("Close All");

// get test image
run("Blobs (25K)");
input = getTitle();

</pre>
<a href="image_1587212184330.png"><img src="image_1587212184330.png" width="250" alt="blobs.gif"/></a>

Create two images describing local shift

<pre class="highlight">
shiftX = "shiftX";
shiftY = "shiftY";
newImage(shiftX, "32-bit black", 256, 254, 1);
newImage(shiftY, "32-bit black", 256, 254, 1);

// Blur the shift to make it smooth in space
selectImage("shiftX");
makeOval(20, 98, 72, 68);
run("Add...", "value=25");
run("Select None");
run("Gaussian Blur...", "sigma=15");
run("Enhance Contrast", "saturated=0.35");

</pre>
<a href="image_1587212188199.png"><img src="image_1587212188199.png" width="250" alt="shiftX"/></a>
<a href="image_1587212188209.png"><img src="image_1587212188209.png" width="250" alt="shiftY"/></a>

## Initialize GPU and push images to GPU memory

<pre class="highlight">
run("CLIJ2 Macro Extensions", "cl_device=");
Ext.CLIJ2_push(input);
Ext.CLIJ2_push(shiftX);
Ext.CLIJ2_push(shiftY);

</pre>

## Apply shift; rotate it; apply again in a loop

<pre class="highlight">
for (i = 0; i < 36; i += 6) {

	// change the shift from slice to slice
	Ext.<a href="https://clij.github.io/clij2-docs/reference_affineTransform2D">CLIJ2_affineTransform2D</a>(shiftX, rotatedShiftX, "-center rotate=" + (i * 10) + " center");
	
	// apply transform
	Ext.<a href="https://clij.github.io/clij2-docs/reference_applyVectorField2D">CLIJ2_applyVectorField2D</a>(input, rotatedShiftX, shiftY, transformed);

	// get result back from GPU
	Ext.CLIJ2_pull(transformed);
	rename("Angle " + (i * 10) + " deg");
}

</pre>
<a href="image_1587212192189.png"><img src="image_1587212192189.png" width="250" alt="Angle 0 deg"/></a>
<a href="image_1587212192239.png"><img src="image_1587212192239.png" width="250" alt="Angle 60 deg"/></a>
<a href="image_1587212192294.png"><img src="image_1587212192294.png" width="250" alt="Angle 120 deg"/></a>
<a href="image_1587212192343.png"><img src="image_1587212192343.png" width="250" alt="Angle 180 deg"/></a>
<a href="image_1587212192392.png"><img src="image_1587212192392.png" width="250" alt="Angle 240 deg"/></a>
<a href="image_1587212192452.png"><img src="image_1587212192452.png" width="250" alt="Angle 300 deg"/></a>

Cleanup by the end

<pre class="highlight">
Ext.CLIJ2_clear();
</pre>



</pre>
</pre>

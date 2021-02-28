/*
# Tubeness
This notebooks shows how to detect and visualize tubes in an image.

Let's start by cleaaning up. For this, we use ImageJ-functions:
*/
// clean up first
run("Close All");
run("Clear Results");
/*
We now initialize the GPU and push the image as explained in the [basics of clij tutorial](https://clij.github.io/clij2-docs/md/basics/).
*/
run("CLIJ2 Macro Extensions", "cl_device=");
Ext.CLIJ2_clear();
/*
We'll mke our own example image by drawning some boxes, spheres and tubes in 3D:
*/

Ext.CLIJ2_create3D(input, 100, 100, 100, 8);

// draw boxes             x,  y,  z,  w,  h,  d, value
Ext.CLIJ2_drawBox(input, 10, 10, 10, 10, 20, 10, 1);
Ext.CLIJ2_drawBox(input, 20, 30, 50, 20, 10, 20, 1);

// draw wpheres               x,  y,  z, rx, ry, rz, value
Ext.CLIJ2_drawSphere(input, 50, 50, 50, 10, 10, 20, 1);
Ext.CLIJ2_drawSphere(input, 100, 100, 50, 10, 20, 20, 1);

// draw line              x1, y1, z1, x2, y2, z2, thickness, value
Ext.CLIJ2_drawLine(input, 70, 10, 10, 70, 60, 60, 5, 1);
Ext.CLIJ2_drawLine(input, 30, 30, 10, 0, 0, 30, 5, 1);
Ext.CLIJ2_drawLine(input, 20, 10, 50, 70, 10, 50, 5, 1);

// draw tubes
Ext.CLIJ2_drawLine(input, 20, 80, 50, 70, 80, 50, 10, 1);
Ext.CLIJ2_drawLine(input, 20, 80, 50, 70, 80, 50, 5, 0);

Ext.CLIJ2_drawLine(input, 80, 20, 30, 80, 80, 60, 7, 1);
Ext.CLIJ2_drawLine(input, 80, 20, 30, 80, 80, 60, 5, 0);

Ext.CLIJ2_drawLine(input, 15, 70, 0, 15, 70, 100, 9, 1);
Ext.CLIJ2_drawLine(input, 15, 70, 0, 15, 70, 100, 4, 0);


/*
Next, we visualize three planes close to the center of the dataset 
*/
function visualize(input) {
	Ext.CLIJ2_copySlice(input, example_slice, 45);
	Ext.CLIJ2_pull(example_slice);
	Ext.CLIJ2_copySlice(input, example_slice, 50);
	Ext.CLIJ2_pull(example_slice);
	Ext.CLIJ2_copySlice(input, example_slice, 55);
	Ext.CLIJ2_pull(example_slice);
	Ext.CLIJ2_release(example_slice);
}
visualize(input);
/*
Next, we scale the intensity of the image, blur it and add noise.
Afterwards, we save it in the input variable again and release memory for all the other intermediate results.
*/
Ext.CLIJ2_multiplyImageAndScalar(input, brighter, 255);
Ext.CLIJ2_gaussianBlur3D(brighter, blurred, 1, 1, 1);
Ext.CLIJ2_create3D(noise, 100, 100, 100, 8);
Ext.CLIJ2_setRandom(noise, 0, 100, 0);
Ext.CLIJ2_addImages(blurred, noise, input);
// release memory of intermediate results
Ext.CLIJ2_release(blurred);
Ext.CLIJ2_release(brighter);
Ext.CLIJ2_release(noise);

visualize(input);


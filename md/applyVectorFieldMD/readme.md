

# CLIJ Example: applyVectorFieldMD.ijm
Author: Robert Haase, rhaase@mpi-cbg.de
March 2019

[Source](https://github.com/clij/clij2-docs/tree/master/src/main/macro/applyVectorFieldMD.ijm)

This script demonstrates how to apply a vector field
to an image in order to transform it non-rigidly


Get test data

```java
run("Close All");

// get test image
run("Blobs (25K)");
input = getTitle();

```
<a href="image_1587650767562.png"><img src="image_1587650767562.png" width="250" alt="blobs.gif"/></a>

Create two images describing local shift

```java
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

```
<a href="image_1587650767726.png"><img src="image_1587650767726.png" width="250" alt="shiftX"/></a>
<a href="image_1587650767736.png"><img src="image_1587650767736.png" width="250" alt="shiftY"/></a>

## Initialize GPU and push images to GPU memory

```java
run("CLIJ2 Macro Extensions", "cl_device=");
Ext.CLIJ2_push(input);
Ext.CLIJ2_push(shiftX);
Ext.CLIJ2_push(shiftY);

```

## Apply shift; rotate it; apply again in a loop

```java
for (i = 0; i < 36; i += 6) {

	// change the shift from slice to slice
	Ext.CLIJ2_affineTransform2D(shiftX, rotatedShiftX, "-center rotate=" + (i * 10) + " center");
	
	// apply transform
	Ext.CLIJ2_applyVectorField2D(input, rotatedShiftX, shiftY, transformed);

	// get result back from GPU
	Ext.CLIJ2_pull(transformed);
	rename("Angle " + (i * 10) + " deg");
}

```
<a href="image_1587650768013.png"><img src="image_1587650768013.png" width="250" alt="Angle 0 deg"/></a>
<a href="image_1587650768064.png"><img src="image_1587650768064.png" width="250" alt="Angle 60 deg"/></a>
<a href="image_1587650768117.png"><img src="image_1587650768117.png" width="250" alt="Angle 120 deg"/></a>
<a href="image_1587650768168.png"><img src="image_1587650768168.png" width="250" alt="Angle 180 deg"/></a>
<a href="image_1587650768221.png"><img src="image_1587650768221.png" width="250" alt="Angle 240 deg"/></a>
<a href="image_1587650768273.png"><img src="image_1587650768273.png" width="250" alt="Angle 300 deg"/></a>

Cleanup by the end

```java
Ext.CLIJ2_clear();
```



```
```

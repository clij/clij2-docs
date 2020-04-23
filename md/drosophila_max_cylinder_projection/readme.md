

# Drosophila embryo cell counting
Author: Robert Haase, Myers lab, MPI CBG, rhaase@mpi-cbg.de
        April 2020

[Source](https://github.com/clij/clij2-docs/tree/master/src/main/macro/drosophila_max_cylinder_projection.ijm)

In this example workflow we estimate nuclei count in a Droshophila melanogaster 
using spot detection on a cylindrical maximum intensity projection.

The workflow was originally published with the [CLIJ paper](https://doi.org/10.1038/s41592-019-0650-1).
This is an adapted version using CLIJ2.

The workflow mainly processed 3D image stacks. For visualisation purposes, this
notebook shows maximum projections.

Initialize GPU

```java

run("CLIJ2 Macro Extensions", "cl_device=");
Ext.CLIJ2_clear();

```

## The dataset
We process a dataset of a Drosophila melanogaster embryo expressing histone-RFP 
([Flybase 23651](http://flybase.org/reports/FBst0023651)). 
It was acquired using a custom multiview light sheet microscope from two opposing
perspectives. The data was fused and downsampled by a factor of two on the fly 
resulting in a voxel size of 0.52x0.52x2 microns. The image is taken from a timelapse
recording where three embryos in an FEP tube where acquired subsequently.
The full dataset is available 
[online](https://bds.mpi-cbg.de/CLIJ_benchmarking_data/000300.raw.tif).

Load data and push it to GPU memory

```java
// Clean up first
run("Close All");

// load a specific time point
timepoint = 300;
folder = "C:/Users/Rober/Downloads/";
strNumber = "000000" + timepoint;
filename = substring(strNumber, lengthOf(strNumber) - 6) + ".raw.tif";
print(folder + filename);
open(folder + filename);
input = getTitle();

// Measure start time of the whole workflow
startTime = getTime();

// Push the image to GPU memory
Ext.CLIJ2_push(input);
Ext.CLIJ2_reportMemory();

// Close the window showing the dataset
close();

```
<pre>
> C:/Users/Rober/Downloads/000300.raw.tif
> GPU contains 1 images.
> - 000300.raw.tif[net.haesleinhuepf.clij.clearcl.ClearCLPeerPointer@4f92ed54] 121.0 Mb
> = 121.0 Mb
>  
</pre>

## Bit-Depth conversion
We convert the image to 32-bit float in order to make subsequent processing 
steps deliver smooth results.

```java
Ext.CLIJ2_convertFloat(input, input_float);
Ext.CLIJ2_reportMemory();
show(input_float, "Input image");

```
<pre>
> GPU contains 2 images.
> - CLIJ2_convertFloat_result171[net.haesleinhuepf.clij.clearcl.ClearCLPeerPointer@b196c7e] 242.0 Mb
> - 000300.raw.tif[net.haesleinhuepf.clij.clearcl.ClearCLPeerPointer@4f92ed54] 121.0 Mb
> = 363.0 Mb
>  
</pre>
<a href="image_1587652222401.png"><img src="image_1587652222401.png" width="250" alt="CLIJ2_maximumZProjection_result172"/></a>

## Noise and background removal
We use the difference-of-Gaussian (DoG) technique to remove noise and 
background intensity. As the voxel size is quite different in X/Y compared to Z,
we only perform the Gaussian blur in X/Y-plane. We do this by setting both sigmas
in Z to 0:

```java
sigma1 = 2;
sigma2 = 6;
Ext.CLIJ2_differenceOfGaussian3D(input_float, background_subtracted, sigma1, sigma1, 0, sigma2, sigma2, 0);
show(background_subtracted, "Background subtracted");
```
<a href="image_1587652222915.png"><img src="image_1587652222915.png" width="250" alt="CLIJ2_maximumZProjection_result174"/></a>

We remove negative and zero pixel intensities so that later only maxima above zero intensity are detected. 

```java
Ext.CLIJ2_maximumImageAndScalar(background_subtracted, positive_stack, 1.0);
show(positive_stack, "Positive stack");
```
<a href="image_1587652223595.png"><img src="image_1587652223595.png" width="250" alt="CLIJ2_maximumZProjection_result176"/></a>

## Resampling
All following transforms become mathematically easier to perform by resampling the
dataset initially so that it consists of isotropic voxels. Therefore, we resample
it with the voxel dimensions:

```java
resampleX = 1.0 / 0.52;
resampleY = 1.0 / 0.52;
resampleZ = 1.0 / 2.0;
linearInterpolation = true;

Ext.CLIJ2_resample(positive_stack, resampled, resampleX, resampleY, resampleZ, linearInterpolation);
show(resampled, "Resampled")
```
<a href="image_1587652224025.png"><img src="image_1587652224025.png" width="250" alt="CLIJ2_maximumZProjection_result178"/></a>

## Spatial trnansforms 
Goal of this workflow is to perform a maximum projection from the center of the embryo to the surface. 
Therefore we interpret the embryo as a cylinder with the axis in anterior-posterior direction.
The maximum projection from the center to the hull consists of a radial projection and a maximum projection.
In order to apply a radial projection, which is performed in X-Y plane, we need to rotate the embryo first.

### Rescling X-Y planes along anterior-posterior direction

```java
Ext.CLIJ2_resliceTop(resampled, reslicedFromTop);
show(reslicedFromTop, "Resliced from top");

```
<a href="image_1587652224173.png"><img src="image_1587652224173.png" width="250" alt="CLIJ2_maximumZProjection_result180"/></a>

### Radial reslicing

```java
number_of_angles = 360;
angle_step = 1;
startAngleDegrees = 0;
Ext.CLIJ2_getDimensions(reslicedFromTop, width, height, depth);
// we do this off-center because the embryo is not centered in the dataset
centerX = width / 2 - 50; 
centerY = height / 2;
scaleFactorX = 1.0;
scaleFactorY = 1.0;
Ext.CLIJ2_resliceRadial(reslicedFromTop, radialResliced, number_of_angles, angle_step, startAngleDegrees, centerX, centerY, scaleFactorX, scaleFactorY);
show(radialResliced, "Radial projection");

```
<a href="image_1587652224286.png"><img src="image_1587652224286.png" width="250" alt="CLIJ2_maximumZProjection_result182"/></a>

### Reslicing from inside to outside

```java
Ext.CLIJ2_resliceLeft(radialResliced, reslicedFromLeft);
show(reslicedFromLeft, "Resliced from inside to outside");

```
<a href="image_1587652224403.png"><img src="image_1587652224403.png" width="250" alt="CLIJ2_maximumZProjection_result184"/></a>

## Maximum projection

```java

Ext.CLIJ2_maximumZProjection(reslicedFromLeft, maxProjected);

```

## Spot detection
Before we count the spots we need to get
the image back from GPU memory to CPU memory.

```java

// pull result image back from GPU
Ext.CLIJ_pull(maxProjected);

```
<a href="image_1587652224510.png"><img src="image_1587652224510.png" width="250" alt="CLIJ2_maximumZProjection_result185"/></a>

For spot detection we use ImageJs `Find Maxima` method.

```java
noiseThreshold = 5;
run("Find Maxima...", "noise=" + noiseThreshold + " output=[Point Selection]");

// Count spots
run("Clear Results");
run("Measure");
print("Number of spots found:" + nResults());
run("Clear Results");

run("Flatten");

```
<pre>
> Number of spots found:2454
</pre>
<a href="image_1587652225764.png"><img src="image_1587652225764.png" width="250" alt="CLIJ2_maximumZProjection_result185-1"/></a>

# Performance evaluation
Finally a time measurement. Note that performing this workflow with ImageJ macro markdown is slower 
as intermediate results are save to disc.

```java
print("The whole workflow took " + (getTime() - startTime) + " msec");

```
<pre>
> The whole workflow took 3950 msec
</pre>

Also let's see how much memory this workflow used. Cleaning up by the end is also important.

```java
Ext.CLIJ2_reportMemory();

// clean up finally.
Ext.CLIJ2_clear();

```
<pre>
> GPU contains 9 images.
> - CLIJ2_convertFloat_result171[net.haesleinhuepf.clij.clearcl.ClearCLPeerPointer@b196c7e] 242.0 Mb
> - CLIJ2_differenceOfGaussian3D_result173[net.haesleinhuepf.clij.clearcl.ClearCLPeerPointer@7dda1103] 242.0 Mb
> - CLIJ2_resliceLeft_result183[net.haesleinhuepf.clij.clearcl.ClearCLPeerPointer@41446712] 130.8 Mb
> - CLIJ2_resliceTop_result179[net.haesleinhuepf.clij.clearcl.ClearCLPeerPointer@70384b0a] 130.6 Mb
> - CLIJ2_resample_result177[net.haesleinhuepf.clij.clearcl.ClearCLPeerPointer@32f920e4] 130.6 Mb
> - 000300.raw.tif[net.haesleinhuepf.clij.clearcl.ClearCLPeerPointer@4f92ed54] 121.0 Mb
> - CLIJ2_maximumImageAndScalar_result175[net.haesleinhuepf.clij.clearcl.ClearCLPeerPointer@1f866db1] 242.0 Mb
> - CLIJ2_maximumZProjection_result185[net.haesleinhuepf.clij.clearcl.ClearCLPeerPointer@7d98f5a4] 748.1 kb
> - CLIJ2_resliceRadial_result181[net.haesleinhuepf.clij.clearcl.ClearCLPeerPointer@4fca9106] 130.8 Mb
> = 1.3 Gb
>  
</pre>

The following are convienence methods for proper visualisation in a noteboook:

```java
function show(input, text) {
	Ext.CLIJ2_maximumZProjection(input, max_projection);
	Ext.CLIJ2_pull(max_projection);
	setColor(100000);
	drawString(text, 20, 20);
	Ext.CLIJ2_release(max_projection);
}
```



```
```

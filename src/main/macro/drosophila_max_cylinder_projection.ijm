/*
# Drosophila embryo cell counting
Author: Robert Haase, Myers lab, MPI CBG, rhaase@mpi-cbg.de
        April 2020

In this example workflow we estimate nuclei count in a Droshophila melanogaster 
using spot detection on a cylindrical maximum intensity projection.

The workflow was originally published with the [CLIJ paper](https://doi.org/10.1038/s41592-019-0650-1).
This is an adapted version using CLIJ2.

The workflow mainly processed 3D image stacks. For visualisation purposes, this
notebook shows maximum projections.

Initialize GPU
*/

run("CLIJ2 Macro Extensions", "cl_device=");
Ext.CLIJ2_clear();

/*
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
*/
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

/*
## Bit-Depth conversion
We convert the image to 32-bit float in order to make subsequent processing 
steps deliver smooth results.
*/
Ext.CLIJ2_convertFloat(input, input_float);
Ext.CLIJ2_reportMemory();
show(input_float, "Input image");

/*
## Noise and background removal
We use the difference-of-Gaussian (DoG) technique to remove noise and 
background intensity. As the voxel size is quite different in X/Y compared to Z,
we only perform the Gaussian blur in X/Y-plane. We do this by setting both sigmas
in Z to 0:
*/
sigma1 = 2;
sigma2 = 6;
Ext.CLIJ2_differenceOfGaussian3D(input_float, background_subtracted, sigma1, sigma1, 0, sigma2, sigma2, 0);
show(background_subtracted, "Background subtracted");
/*
We remove negative and zero pixel intensities so that later only maxima above zero intensity are detected. 
*/
Ext.CLIJ2_maximumImageAndScalar(background_subtracted, positive_stack, 1.0);
show(positive_stack, "Positive stack");
/*
## Resampling
All following transforms become mathematically easier to perform by resampling the
dataset initially so that it consists of isotropic voxels. Therefore, we resample
it with the voxel dimensions:
*/
resampleX = 1.0 / 0.52;
resampleY = 1.0 / 0.52;
resampleZ = 1.0 / 2.0;
linearInterpolation = true;

Ext.CLIJ2_resample(positive_stack, resampled, resampleX, resampleY, resampleZ, linearInterpolation);
show(resampled, "Resampled")
/*
## Spatial trnansforms 
Goal of this workflow is to perform a maximum projection from the center of the embryo to the surface. 
Therefore we interpret the embryo as a cylinder with the axis in anterior-posterior direction.
The maximum projection from the center to the hull consists of a radial projection and a maximum projection.
In order to apply a radial projection, which is performed in X-Y plane, we need to rotate the embryo first.

### Rescling X-Y planes along anterior-posterior direction
*/
Ext.CLIJ2_resliceTop(resampled, reslicedFromTop);
show(reslicedFromTop, "Resliced from top");

/*
### Radial reslicing
*/
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

/*
### Reslicing from inside to outside
*/
Ext.CLIJ2_resliceLeft(radialResliced, reslicedFromLeft);
show(reslicedFromLeft, "Resliced from inside to outside");

/*
## Maximum projection
*/

Ext.CLIJ2_maximumZProjection(reslicedFromLeft, maxProjected);

/*
## Spot detection
Before we count the spots we need to get
the image back from GPU memory to CPU memory.
*/

// pull result image back from GPU
Ext.CLIJ_pull(maxProjected);

/*
For spot detection we use ImageJs `Find Maxima` method.
*/
noiseThreshold = 5;
run("Find Maxima...", "noise=" + noiseThreshold + " output=[Point Selection]");

// Count spots
run("Clear Results");
run("Measure");
print("Number of spots found:" + nResults());
run("Clear Results");

run("Flatten");

/*
# Performance evaluation
Finally a time measurement. Note that performing this workflow with ImageJ macro markdown is slower 
as intermediate results are save to disc.
*/
print("The whole workflow took " + (getTime() - startTime) + " msec");

/*
Also let's see how much memory this workflow used. Cleaning up by the end is also important.
*/
Ext.CLIJ2_reportMemory();

// clean up finally.
Ext.CLIJ2_clear();

/*
The following are convienence methods for proper visualisation in a noteboook:
*/
function show(input, text) {
	Ext.CLIJ2_maximumZProjection(input, max_projection);
	Ext.CLIJ2_pull(max_projection);
	setColor(100000);
	drawString(text, 20, 20);
	Ext.CLIJ2_release(max_projection);
}

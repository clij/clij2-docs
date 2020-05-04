/*
# Drosophila embryo cell counting
Author: Robert Haase, Daniela Vorkel, April 2020

[Source](https://github.com/clij/clij2-docs/tree/master/src/main/macro/drosophila_max_cylinder_projection.ijm)

In this example workflow, we estimate a nuclei count in Droshophila melanogaster, 
using spot detection on a cylindrical maximum intensity projection.

The workflow got originally published in the [CLIJ paper](https://doi.org/10.1038/s41592-019-0650-1).
Now, this is an adapted version using CLIJ2.

The workflow mainly processes 3D image stacks. For visualisation purpose, this
notebook shows maximum projections.

Initialize GPU:
*/

run("CLIJ2 Macro Extensions", "cl_device=");
Ext.CLIJ2_clear();

/*
## The dataset
We process a dataset of a Drosophila melanogaster embryo, expressing histone-RFP 
([Flybase 23651](http://flybase.org/reports/FBst0023651)). 
It was acquired from two opposing perspectives, using a custom multi-view light sheet microscope. 
Afterwards ans "on the fly", the data was fused and downsampled by a factor of two, 
resulting in a voxel size of 0.52x0.52x2 microns. The images were taken from a time-lapse
recording, while three embryos were mounted in an FEP tube at once and got subsequently acquired.
The full dataset is available 
[online](https://bds.mpi-cbg.de/CLIJ_benchmarking_data/000300.raw.tif).

Load data and push it to GPU memory:
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
We convert the dataset into a 32-bit float, in order to deliver smooth results while
performing subsequent processing steps. 
steps deliver smooth results.
*/
Ext.CLIJ2_convertFloat(input, input_float);
Ext.CLIJ2_reportMemory();
show(input_float, "Input image");

/*
## Noise and background removal
We use the difference-of-Gaussian (DoG) technique to remove noise and background 
intensity. As the voxel size is different in X/Y compared to Z, we only perform 
the Gaussian blur in X/Y-plane. We achieve this by setting both sigmas to "0" 
in Z-plane:
*/
sigma1 = 2;
sigma2 = 6;
Ext.CLIJ2_differenceOfGaussian3D(input_float, background_subtracted, sigma1, sigma1, 0, sigma2, sigma2, 0);
show(background_subtracted, "Background subtracted");
/*
We remove all negative and zero pixel intensities to detect maxima intensity above zero, only. 
*/
Ext.CLIJ2_maximumImageAndScalar(background_subtracted, positive_stack, 1.0);
show(positive_stack, "Positive stack");
/*
## Resampling
All following transformations become mathematically easier to perform, when we change 
the dataset to consist only of isotropic voxels. Therefore, we initially resample the 
voxel dimensions as following:
*/
resampleX = 1.0 / 0.52;
resampleY = 1.0 / 0.52;
resampleZ = 1.0 / 2.0;
linearInterpolation = true;

Ext.CLIJ2_resample(positive_stack, resampled, resampleX, resampleY, resampleZ, linearInterpolation);
show(resampled, "Resampled")
/*
## Spatial transformations
Goal of this workflow is to perform a maximum projection from the center of the embryo to the surface. 
Therefore we interpret the embryo as a cylinder with its axis along the anterior-posterior direction.
The maximum projection, from the center to the hull, consists of a radial and a maximum projection.
In order to apply the radial projection, which assigns to the X/Y-plane, we need to rotate the embryo first.

### Reslicing X/Y-planes along anterior-posterior direction
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
Before counting spots, we need to retrieve
the image back from GPU memory to CPU memory.
*/

// pull result image back from GPU
Ext.CLIJ_pull(maxProjected);

/*
For spot detection we use the ImageJs `Find Maxima` method.
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
Finally a time measurement. Note that performing this workflow as a ImageJ macro markdown 
is slower, because intermediate results are saved to disc.
*/
print("The whole workflow took " + (getTime() - startTime) + " msec");

/*
Let's also see how much memory this workflow used. By the end, cleaning up remains important.
*/
Ext.CLIJ2_reportMemory();

// clean up finally.
Ext.CLIJ2_clear();

/*
The following methods are convenient for a proper visualisation in a notebook:
*/
function show(input, text) {
	Ext.CLIJ2_maximumZProjection(input, max_projection);
	Ext.CLIJ2_pull(max_projection);
	setColor(100000);
	drawString(text, 20, 20);
	Ext.CLIJ2_release(max_projection);
}

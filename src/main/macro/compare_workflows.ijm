/*
# Comparing Workflows: ImageJ versus CLIJ
Robert Haase, March 2020

[Source](https://github.com/clij/clij2-docs/tree/master/src/main/macro/compare_workflows.ijm)

This page shows how to compare ImageJ based workflow with their 
translations using CLIJ. 

Let's start with ImageJ. We have a workflow loading an image, 
processing with background subtracting and thresholding. Note 
the two lines using the `getTime()`.
*/
run("Close All");

// Get test data
open("https://github.com/clij/clij2-docs/raw/master/src/main/resources/Lund_MAX_001300.tif");
rename("input_imagej");

start_time_imagej = getTime();

// subtract background in the image
run("Duplicate...", "title=background_subtracted_imagej");
run("Subtract Background...", "rolling=25");

// theshold the image
run("Duplicate...", "title=thresholded_imagej");
setAutoThreshold("Default dark");
setOption("BlackBackground", true);
run("Convert to Mask");

end_time_imagej = getTime();
/*

Now we run the same workflow with CLIJ
*/

// Get test data
open("https://github.com/clij/clij2-docs/raw/master/src/main/resources/Lund_MAX_001300.tif");
input_clij = getTitle();

start_time_clij = getTime();

// Init GPU
run("CLIJ2 Macro Extensions", "cl_device=RTX");
Ext.CLIJ2_clear();

// push data to GPU
Ext.CLIJ2_push(input_clij);

// subtract background in the image
radius = 25;
background_subtracted_clij = "background_subtracted_clij";
Ext.CLIJ2_topHatBox(input_clij, background_subtracted_clij, 25, 25, 0);
Ext.CLIJ2_pull(background_subtracted_clij);

// threshold the image
thresholded_clij = "thresholded_clij";
Ext.CLIJ2_automaticThreshold(background_subtracted_clij, thresholded_clij, "Default");
Ext.CLIJ2_pullBinary(thresholded_clij);

end_time_clij = getTime();

/*
The results look similar. There are difference because the 
implementation of ImageJ background subtraction is close to but
not identical to CLIJs topHatBox filter. Furthermore, CPU and GPUs
do computation a bit differently.

## Quantitative image comparison

You may have noticed already, all intermediate images got new names. 
This allows us now to compare them.

Let's start with quantitative measurements on the images and 
processing durations.
*/
// configure measurents, clean up before
run("Set Measurements...", "area mean standard min redirect=None decimal=3");
run("Clear Results");

// measure in the image from the imagej workflow
selectWindow("background_subtracted_imagej");
run("Measure");
selectWindow("thresholded_imagej");
run("Measure");

// measure in the image from the imagej workflow
selectWindow("background_subtracted_clij");
run("Measure");
selectWindow("thresholded_clij");
run("Measure");

//Table.rename("Results", "Quantitative measurements");

/*
From these measurements we can conclude that there are small differences 
between the background subtracted images, but apparently smaller differences 
between the binary result images. 

We can verify that by visualising 
differences visually. Note that we choose to save the subtraction images 
in 32-bit because 8-bit images don't support negative values.

## Visual differences between background_subtracted images
*/
imageCalculator("Subtract create 32-bit", "background_subtracted_imagej", background_subtracted_clij);

/*
## Visual differences between thresholded images
*/
imageCalculator("Subtract create 32-bit", "thresholded_imagej", thresholded_clij);

/*
This confirms visually our assumption: The background_subtracted images 
are a bit different while the binary result images are not.

## Comparing processing time

Let`s now also compare the different processing times:
*/

print("ImageJ took " + (end_time_imagej - start_time_imagej) + "ms.");
print("CLIJ took " + (end_time_clij - start_time_clij) + "ms.");

/*
The numbers shown here depend on used GPU hardware. Let's therefore it's
good practice to document which GPU was used:
*/

Ext.CLIJ2_getGPUProperties(gpu, memory, opencl_version);
print("GPU: " + gpu);
print("Memory in GB: " + (memory / 1024 / 1024 / 1024) );
print("OpenCL version: " + opencl_version);

/*
Note: If you run this script a second time, numbers may be a bit different,
especially CLIJ becomes faster because the so called warmup period is over.
During this period, code is compiled. This compilation takes time and thus,
when doing it a second time, processing can be significantly faster. 
Furthermore, there are always fluctations in time measurements. Thus,
it is recommended to run such workflows many times in a loop and doing
statistics on derived measurements.

Last but not least, let's clean up by closing all windows and emptying
GPU memory:
*/

run("Close All");
Ext.CLIJ2_clear();

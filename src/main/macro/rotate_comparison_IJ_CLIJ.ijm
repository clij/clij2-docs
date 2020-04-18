/* 
# CLIJ example macro: rotate_comparison_IJ_CLIJ.ijm

This macro shows how stacks can be rotated in the GPU
and how different results are between CLIJ and ImageJ.

Author: Robert Haase
July 2019

## Get test data
*/
run("Close All");

run("Blobs (25K)");
run("Invert LUT");

input = getTitle();

/* 
## Initialize GPU and push image data to GPU memory
*/
run("CLIJ Macro Extensions", "cl_device=1070");
Ext.CLIJ2_clear();

// push data to GPU
Ext.CLIJ2_push(input);

/*
## Rotate image on CPU
*/
run("Duplicate...", " ");
run("Rotate... ", "angle=45 grid=1 interpolation=Bilinear");
rotated_cpu = getTitle();

/*
## Rotate image on GPU
*/
Ext.CLIJ2_affineTransform2D(input, rotated_gpu, "-center rotate=45 center");

// show results
Ext.CLIJ2_pull(rotated_gpu);


/* 
## Calculate difference image between CPU and GPU
*/
imageCalculator("Subtract create 32-bit", rotated_cpu, rotated_gpu);

/*
Clean up by the end
*/
Ext.CLIJ2_clear();

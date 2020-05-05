/* 
# Comparing image rotation: ImageJ vs CLIJ
Authors: Robert Haase, Daniela Vorkel, July 2019

This macro shows how to rotate stacks in the GPU,
and how different the results are when using CLIJ or ImageJ.


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
## Rotate image in CPU
*/
run("Duplicate...", " ");
run("Rotate... ", "angle=45 grid=1 interpolation=Bilinear");
rotated_cpu = getTitle();

/*
## Rotate image in GPU
*/
Ext.CLIJ2_affineTransform2D(input, rotated_gpu, "-center rotate=45 center");

// show results
Ext.CLIJ2_pull(rotated_gpu);


/* 
## Calculate the difference of images rotated in CPU and GPU
*/
imageCalculator("Subtract create 32-bit", rotated_cpu, rotated_gpu);

/*
Clean up at the end:
*/
Ext.CLIJ2_clear();

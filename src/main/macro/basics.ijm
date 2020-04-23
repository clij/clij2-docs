/*
# CLIJ2 basics

Author: Robert Haase
        April 2020
        
[Source](https://github.com/clij/clij2-docs/tree/master/src/main/macro/basics.ijm)

This macro explains basics for image processing on graphics processing units (GPUs) using CLIJ2.



## How to start
Before accessing CLIJ2 methods, every macro must contain the following line. The parameter `cl_device`
is empty in this case asking CLIJ to automatically select a GPU. If you have a GPU, e.g. named
"nVendor Awesomed Intelligent 3000", you can enter its full name behind, written in brakets like 
`[nVendor Awesomed Intelligent 3000]` but you can also just enter a part of the name such as `nVendor` 
or `some`. CLIJ will select this GPU in case the is no other GPU containing that part of the name.
*/
run("CLIJ2 Macro Extensions", "cl_device=");
/*

## Cleaning up at the beginning
Furthermore, to make sure that the memory of the GPU is empty, you can call `clear()`. This makes especially 
sense in case you develop a new workflow. In case your macro crashes, it leaves behind images in 
GPU memory. Thus, you want to clean up first before starting:
*/
Ext.CLIJ2_clear();
/*
## Loading images and pushing it to GPU memory

For loading images, we use ImageJs functionality. Then, we use CLIJs `push()` method to send the 
image to the GPU memory.
*/
run("Cell Colony (31K)");

input_image = getTitle();
Ext.CLIJ2_push(input_image);
/*
The image is now named in the GPU like it its image on screen. We can ask the GPU to tell us 
which images it knows right now: 
*/
Ext.CLIJ2_reportMemory();
/*
## Processing an image
If we blur the input image, another `result` image is allocated in GPU memory.
*/
sigma = 5;
//// you can, but you don't have to define the result image name:
//result = "blurred_image"; 
Ext.CLIJ2_gaussianBlur2D(input_image, result, sigma, sigma);
/*
## Showing a result image
If we would stop the program here using the `exit();` method, no result would be shown.

In order to get the `result` back from the GPU, we need to pull it:
*/
Ext.CLIJ2_pull(result);
/*
Furthermore, let's ask again which images are now in GPU memory:
*/
Ext.CLIJ2_reportMemory();
/*
## Free memory when possible
Obviously, memory is limited. If we would continue, processing images, more and more of 
them would be allocated in GPU memory until it's full and a red error message 
`CL_OUT_OF_RESOURCES` or `CL_OUT_OF_HOST_MEMORY`
shows up. Thus, we need to release an image to free memory. 
*/
Ext.CLIJ2_release(input_image);

Ext.CLIJ2_reportMemory();
/*
It is a good strategy to remove image A as soon as B has be processed out of it and A isn't needed anymore. 
However, it's also a bit annoying to release images all the time. Thus, as long as GPU memory isn't full,
one can just continue processing by creating new images. As soon as you run into trouble, use the 
`reportMemory()` method to find out which are the big images currently in memory and release some of them
when needed in your workflow. 

## Clean up when you're done
Furthermore, by the end of your macro, be a good programmer and clean up. ;-)
*/

Ext.CLIJ2_clear();
Ext.CLIJ2_reportMemory();


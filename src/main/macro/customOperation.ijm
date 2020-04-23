// CLIJ example macro: addImages.ijm
//
// This macro shows how add images of different bit-type
//
// Author: Robert Haase
// January 2019
// ---------------------------------------------

run("Close All");

// Get test data
run("Blobs (25K)");
run("8-bit");
original = getTitle();
getDimensions(width, height, channels, slices, frames)

background = "background";
newImage(background, "16-bit ramp", width, height, slices);

// init GPU
run("CLIJ2 Macro Extensions", "cl_device=[] automatic_output_naming");
Ext.CLIJ2_clear();

// push images to GPU
Ext.CLIJ2_push(original);
Ext.CLIJ2_push(background);

Ext.CLIJ2_getDimensions(original, width, height, depth);

Ext.CLIJ2_create2D(result, width, height, 8);

Ext.CLIJ2_getSize(result);

// cleanup imagej
run("Close All");

// add images with custom OpenCL code
opencl_code = 
"float value_original = READ_IMAGE(original, sampler, POS_original_INSTANCE(x, y, z, 0)).x;\n" +
"float value_background = READ_IMAGE(background, sampler, POS_background_INSTANCE(x, y, z, 0)).x;\n" + 
"float value_result = value_original + value_background * 0.005;\n" +
"WRITE_IMAGE(result, POS_result_INSTANCE(x, y, z, 0), CONVERT_result_PIXEL_TYPE(value_result));\n";

// list parameter names and parameters alternating
// the order of parameters doesn't matter
parameters = newArray(6);
parameters[0] = "result";
parameters[1] = result;

parameters[2] = "original";
parameters[3] = original;

parameters[4] = "background";
parameters[5] = background;

// invalidate cache while developing the kernel. Comment this line out if you run the kernel in routine
Ext.CLIJ2_invalidateKernelCache();
Ext.CLIJ2_customOperation(opencl_code, "", parameters);

// show result
Ext.CLIJ2_pull(result);

run("Invert LUT");

// CLIJ example macro: custom_opencl.ijm
//
// This macro shows how get run custom opencl
// code on the GPU.
//
// Author: Robert Haase
//         March 2020
// ---------------------------------------------

run("Close All");

// Get test data
run("Blobs (25K)");
original = "original";
rename(original);

// init GPU
run("CLIJ Macro Extensions", "cl_device=");
Ext.CLIJ2_clear();

// push images to GPU
Ext.CLIJ2_push(original);
// create output image
result = "result";
getDimensions(width, height, channels, slices, frames);
Ext.CLIJ2_create2D(result, width, height, bitDepth());

opencl_code = "" +
  "const int x = get_global_id(0);" +
  "const int y = get_global_id(1);" +
  "const int2 pos = (int2)(x, y);" +
  "float value = READ_IMAGE(image1, sampler, pos).x;\n" +
  "value = value - 100;\n" +
  "WRITE_IMAGE(image2, pos, CONVERT_image2_PIXEL_TYPE(value));";

Ext.CLIJx_customBinaryOperation(original, result, opencl_code);

// show result
Ext.CLIJ2_pull(result);


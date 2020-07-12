// This example script shows how to process 5D images
// stack-by-stack on the GPU
// 
// Author: Robert Haase, rhaase@mpi-cbg.de
//         July 2020
// ---------------------------------------------------

run("Mitosis (26MB, 5D stack)");
input = getTitle();

// determine size in space, wavelength and time
getDimensions(width, height, channels, slices, frames);

// init GPU
run("CLIJ2 Macro Extensions", "cl_device=[gfx902]");
Ext.CLIJ2_clear();

// generate output 3D-stack: for each channel/frame combination have one plane
Ext.CLIJ2_create3D(result_stack, width, height, channels * frames, bitDepth());

for (c = 0; c < channels; c++) {
	Stack.setChannel(c + 1);
	for (f = 0; f < frames; f++) {
		Stack.setFrame(f + 1);

		// push a 3D stack to GPU memory
		Ext.CLIJ2_pushCurrentZStack(input);

		// generate a maximum intensity projection
		Ext.CLIJ2_maximumZProjection(input, slice);

		// copy the projection into the result stack
		Ext.CLIJ2_copySlice(slice, result_stack, f * channels + c);
	}
}

// get result back from GPU
Ext.CLIJ2_pull(result_stack);

// convert the 3D stack to a multi-channel timelapse
run("Stack to Hyperstack...", "order=xyczt(default) channels=" + channels + " slices=1 frames=" + frames + " display=Composite");

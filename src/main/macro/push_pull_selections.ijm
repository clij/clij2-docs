// CLIJ example macro: push_pull_slices.ijm
//
// This macro shows how to push the current selection 
// to the GPU, process it ther and pull it back 
// to the original image stack. 
//
// Author: Robert Haase
//         May 2020
// ---------------------------------------------

run("Close All");

// Get test data
run("T1 Head (2.4M, 16-bits)");
input = getTitle();
getDimensions(width, height, channels, slices, frames);

makeRectangle(100, 100, 50, 50);

// Init GPU
run("CLIJ2 Macro Extensions", "cl_device=");
Ext.CLIJ2_clear();

// blur all slices with different sigmas
for(z = 64; z < slices; z++) {
	Stack.setSlice(z + 1);
	
	// push current selection
	Ext.CLIJ2_pushCurrentSliceSelection(input);

	// process it
	Ext.CLIJ2_gaussianBlur2D(input, blurred, z-64, z-64);

	// pull it back 
	Ext.CLIJ2_pullToCurrentSliceSelection(blurred, input);
}

Stack.setSlice(64);



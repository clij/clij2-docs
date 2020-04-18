// CLIJ example macro: workflow.ijm
//
// A massive loop to check long-term stability
//
// Author: Robert Haase
//         September 2018
// ---------------------------------------------


// Get test data
run("Blobs (25K)");
//open("C:/structure/data/blobs.gif");
getDimensions(width, height, channels, slices, frames);
input = getTitle();

mask = "Mask";

// Init GPU
run("CLIJ2 Macro Extensions", "cl_device=");
Ext.CLIJ2_clear();

for (i = 0; i < 10000; i++) {
	IJ.log(i);

	input = "input" + i;
	
	rename(input);
	
	// push data to GPU
	Ext.CLIJ2_push(input);
	
	// cleanup ImageJ
	//run("Close All");
	
	// create a mask using a fixed threshold
	Ext.CLIJ2_automaticThreshold(input, mask, "Otsu");
	
	eroded = "eroded" + i;
	Ext.CLIJ2_erodeBox(mask, eroded);
	
	dilated = "dilated" + i;
	Ext.CLIJ2_dilateBox(eroded, dilated);
	
	subtracted = "subtracted" + i;
	Ext.CLIJ2_subtractImages(mask, dilated, subtracted);
	
	downsampled = "downsampled" + i;
	Ext.CLIJ2_downsample2D(subtracted, downsampled, 0.5, 0.5);
	
	// show result
	Ext.CLIJ2_pullBinary(downsampled);
	Ext.CLIJ2_reportMemory();
	//Ext.CLIJ_clear();
	
	close();
	//break;
}

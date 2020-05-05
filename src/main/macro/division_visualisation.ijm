/* 
# Cell division visualisation
Author: Robert Haase, April 2020

[Source](https://github.com/clij/clij2-docs/tree/master/src/main/macro/division_visualisation.ijm)

This macro shows how to apply an get a
voronoi image of a binary image in the GPU.

Clean up first and get test data
*/
run("Close All");

open("C:/structure/teaching/clij2_example_data/CalibZAPWfixed_000154_max.tif");
input_stack = getTitle();

sigma1 = 1;
sigma2 = 5;

/* 
Init GPU and data
*/
run("CLIJ2 Macro Extensions", "cl_device=");
Ext.CLIJ2_clear();

getDimensions(width, height, channels, slices, frames);
Ext.CLIJ2_create3D(stack, width, height, frames, 32);

// push data to GPU
Ext.CLIJ2_push(input_stack);

/*
Create a mask using the Otsu threshold algorithm
*/
for (i = 0; i < frames; i+=1) { 

	Ext.CLIJ2_copySlice(input_stack, input, i);
	
	Ext.CLIJ2_differenceOfGaussian2D(input, blurred, sigma1, sigma1, sigma2, sigma2);
	Ext.CLIJ2_thresholdOtsu(blurred, mask);
	
	// Draw a Voronoi diagram and invert it
	Ext.CLIJ2_voronoiOctagon(mask, voronoi_diagram);
	// invert
	Ext.CLIJ2_binaryNot(voronoi_diagram, inverted_voronoi);
	
	// Generate a label map and extend it to make labels touch
	Ext.CLIJ2_connectedComponentsLabelingBox(inverted_voronoi, labelled);
	
	// Extend labels so that they touch
	Ext.CLIJ2_maximum2DBox(labelled, labelled_extended, 1, 1);
		
	// Determine touch matrix
	Ext.CLIJ2_generateTouchMatrix(labelled_extended, touch_matrix);

	// count neighbors and make a parametric image
	Ext.CLIJ2_countTouchingNeighbors(touch_matrix, intensity_values);
	Ext.CLIJ2_replaceIntensities(labelled_extended, intensity_values, intensity_map);

	// put black frames between cells
	Ext.CLIJ2_mask(intensity_map, inverted_voronoi, result);

	// save resulting image in stack
	Ext.CLIJ2_copySlice(result, stack, i);

	// partly clean up because these images may have different size in the next loop
	Ext.CLIJ2_release(touch_matrix);
	Ext.CLIJ2_release(intensity_values);
}
Ext.CLIJ2_pull(stack);
setMinAndMax(0, 10);
run("16 colors");

/*
Clean up by the end.
*/
Ext.CLIJ2_clear();
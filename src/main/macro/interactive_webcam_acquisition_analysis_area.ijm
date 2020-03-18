// CLIJ example macro: interactive_webcam_acquisition_analysis_area.ijm
//
// This macro shows how analyse images streaming 
// from a webcam to the GPU
//
// Author: Robert Haase
//         March 2020
// ---------------------------------------------

run("Close All");

// init GPU
run("CLIJ Macro Extensions", "cl_device=");
Ext.CLIJ2_clear();

// list cameras
Ext.CLIJx_listWebcams();

camera_index = getResult("Camera_Index", nResults() - 1);
image_width = getResult("Image_Width", nResults() - 1);
image_height = getResult("Image_Height", nResults() - 1);
cancelText = "Close this window to cancel acquisition";
newImage(cancelText, "8-bit", 400, 10, 1);

Ext.CLIJx_startContinuousWebcamAcquisition(camera_index, image_width, image_height);

time = getTime();
for (i = 0; i >= 0 ; i++) { // yes, this is an endless loop
	print(i);
	// measure frame delay
	deltaTime = getTime() - time;
	time = getTime();
	print("frame delay: " + deltaTime);
	
	// acquire image and send it to GPU
	input = "input";
	Ext.CLIJx_captureWebcamImage(input, camera_index, image_width, image_height);
	input_r = "input_r";
	Ext.CLIJ2_copySlice(input, input_r, 0);
	input_g = "input_g";
	Ext.CLIJ2_copySlice(input, input_g, 1);
	input_b = "input_b";
	Ext.CLIJ2_copySlice(input, input_b, 2);

	// image segmentation
	slice = "slice";
	Ext.CLIJx_convertRGBStackToGraySlice(input, slice);

	inverted = "inverted";
	Ext.CLIJ2_subtractImageFromScalar(slice, inverted, 255);

	backgroundSubtracted = "backgroundSubtracted";
	Ext.CLIJx_subtractBackground2D(inverted, backgroundSubtracted, 25, 25);
	//Ext.CLIJ2_pull(backgroundSubtracted);

	blurred = "blurred";
	Ext.CLIJ2_gaussianBlur2D(backgroundSubtracted, blurred, 3, 3);

	thresholded = "thresholded";
	Ext.CLIJ2_thresholdOtsu(blurred, thresholded);

	labelling = "labelling";
	Ext.CLIJ2_connectedComponentsLabelingBox(thresholded, labelling);

	run("Clear Results");
	Ext.CLIJ2_statisticsOfLabelledPixels(inverted, labelling);
	
	numberOfObjects = nResults();
	print("objects found: " + numberOfObjects);

	// view the image
	Ext.CLIJx_showRGB(input_r, input_g, input_b, "viewer");

	//selectWindow(texts);
	for (j = 0; j < numberOfObjects; j++) {

		x1 = getResult("CENTROID_X", j);
		y1 = getResult("CENTROID_Y", j);

		area = getResult("PIXEL_COUNT", j);
		
		setColor(255, 0, 0);
		setFont("Arial", 20);
		drawString("    " + area + " px", x1, y1);
	}	
	Ext.CLIJ2_pullAsROI(thresholded);
	

	if (!isOpen(cancelText)) {
		print("Exiting");
		break;
	}

	//Ext.CLIJx_organiseWindows(0, 150, 1, 3, 400, 300);

	if (i > 0) {
		//break;
	}
	//wait(200);
}
Ext.CLIJx_stopContinuousWebcamAcquisition(camera_index);

print("Bye");
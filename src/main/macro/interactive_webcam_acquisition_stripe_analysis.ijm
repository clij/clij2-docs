// CLIJ example macro: interactive_webcam_acquisition.ijm
//
// This macro shows how use a webcam with CLIJ.
//
// Author: Robert Haase
//         March 2020
// ---------------------------------------------

run("Close All");

// init GPU
run("CLIJ Macro Extensions", "cl_device=");
Ext.CLIJ2_clear();

// list cameras and get the last entry
Ext.CLIJx_listWebcams();
camera_index = getResult("Camera_Index", nResults() - 1);
image_width = getResult("Image_Width", nResults() - 1);
image_height = getResult("Image_Height", nResults() - 1);

// start acquisition
Ext.CLIJx_startContinuousWebcamAcquisition(camera_index, image_width, image_height);

// an empty image serves as cancel button for the acquisition
cancelText = "Close this window to cancel acquisition";
newImage(cancelText, "8-bit", 400, 10, 1);


time = getTime();

for (i = 0; i < 1000; i++) {
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

	// view the image
	Ext.CLIJx_showRGB(input_r, input_g, input_b, "viewer");


	slice = "slice";
	Ext.CLIJ2_create2D(slice, image_width, image_height, 32);
	Ext.CLIJx_convertRGBStackToGraySlice(input, slice);

	inverted = "inverted";
	//Ext.CLIJ2_subtractImageFromScalar(slice, inverted, 255);
	Ext.CLIJ2_copy(slice, inverted);

	backgroundSubtracted = "backgroundSubtracted";
	Ext.CLIJx_subtractBackground2D(inverted, backgroundSubtracted, 5, 5);

	extended = "extended";
	Ext.CLIJ2_minimum2DBox(backgroundSubtracted, extended, 2, 2);
	//Ext.CLIJ2_copy(backgroundSubtracted, extended);

	blurred = "blurred";
	Ext.CLIJ2_median2DBox(extended, blurred, 3, 3);

	thresholded = "thresholded";
	Ext.CLIJ2_thresholdHuang(blurred, thresholded);

	binary_inverted = "binary_inverted";
	Ext.CLIJ2_binaryNot(thresholded, binary_inverted);

	labelled = "labelled";
	Ext.CLIJ2_connectedComponentsLabelingBox(binary_inverted, labelled);
	Ext.CLIJx_showGrey(labelled, "labelled");
	selectWindow(labelled);
	run("glasbey");
	

	// in case the first window was closed, cancel the program
	if (!isOpen(cancelText)) {
		print("Exiting");
		break;
	}

	//break;
	
	wait(200);
}

// stop acquisition
Ext.CLIJx_stopContinuousWebcamAcquisition(camera_index);

print("Bye");
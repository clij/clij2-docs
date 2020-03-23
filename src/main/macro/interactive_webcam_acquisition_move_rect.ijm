// CLIJ example macro: interactive_webcam_acquisition_move_rect.ijm
//
// This macro shows how use a webcam with CLIJ.
// It furthermore demonstrates how to move an ROI according to 
// how the center of mass inside that ROI is changing.
// 
// To run that script, please activate the clij and clij2 update
// sites in Fiji.
// https://clij.github.io/clij-docs/installationInFiji
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

run("Set Measurements...", "center bounding redirect=None decimal=3");

time = getTime();

old_x = 0;
old_y = 0;

// define minimu / maximum shift
max_shift = 10;
min_shift = 0.1;

for (i = 0; i < 10000; i++) {
	print("\\Clear");
	print(i);

	// measure frame delay
	deltaTime = getTime() - time;
	time = getTime();
	print("frame delay: " + deltaTime);
	
	// acquire image and send it to GPU
	input = "input";
	Ext.CLIJx_captureWebcamImage(input, camera_index, image_width, image_height);

	// flip the input
	flipped = "flipped";
	Ext.CLIJ2_flip3D(input, flipped, true, false, false);
	
	input_r = "input_r";
	Ext.CLIJ2_copySlice(flipped, input_r, 0);
	input_g = "input_g";
	Ext.CLIJ2_copySlice(flipped, input_g, 1);
	input_b = "input_b";
	Ext.CLIJ2_copySlice(flipped, input_b, 2);

	// view the image
	Ext.CLIJx_showRGB(input_r, input_g, input_b, "viewer");

	// if there is any ROI
	run("Measure");
	roi_width = getResult("Width", nResults() - 1);
	roi_height = getResult("Height", nResults() - 1);
	if (image_width != roi_width || image_height != roi_height) {
		Roi.setStrokeWidth(2);

		// determine center of mass
		center_of_mass_x = getResult("XM", nResults() - 1);
		center_of_mass_y = getResult("YM", nResults() - 1);
		print("center of mass x" + center_of_mass_x);
		print("center of mass y" + center_of_mass_y);

		abs_delta_x = abs(old_x - center_of_mass_x);
		abs_delta_y = abs(old_y - center_of_mass_y);

		// if shift is large enough, reposition the ROI
		if (abs_delta_x < max_shift && abs_delta_x > min_shift && abs_delta_y < max_shift && abs_delta_y > min_shift) {
			makeRectangle(center_of_mass_x - roi_width / 2, center_of_mass_y - roi_height / 2, roi_width, roi_height);
		}

		old_x = center_of_mass_x;
		old_y = center_of_mass_y;
	}

	// in case the first window was closed, cancel the program
	if (!isOpen(cancelText)) {
		print("Exiting");
		break;
	}

	if (i > 0) {
		//break;
	}
	wait(50);
}

// stop acquisition
Ext.CLIJx_stopContinuousWebcamAcquisition(camera_index);

print("Bye");
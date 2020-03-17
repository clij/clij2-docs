// CLIJ example macro: webcamCapture.ijm
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


// acquire image and send it to GPU
input = "input";
Ext.CLIJx_captureWebcamImage(input, camera_index, image_width, image_height);

Ext.CLIJ2_pull(input);


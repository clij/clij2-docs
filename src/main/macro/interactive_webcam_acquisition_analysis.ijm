// CLIJ example macro: absolute.ijm
//
// This macro shows how get the absolute of an image
//
// Author: Robert Haase
// January 2019
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

slice_cache = "slice_cache";
pointlist_cache = "pointlist_cache";

Ext.CLIJx_startContinuousWebcamAcquisition(camera_index, image_width, image_height);

time = getTime();
for (i = 0; i >= 0; i++) {
	print(i);

	// determine frame delay
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
	statistics = "statistics";
	Ext.CLIJ2_release(statistics);
	Ext.CLIJ2_resultsTableToImage2D(statistics);

	numberOfObjects = nResults();
	print("objects found: " + numberOfObjects);
	coordinates = "coordinates";
	Ext.CLIJ2_release(coordinates);
	Ext.CLIJ2_crop2D(statistics, coordinates, 25, 0, 2, numberOfObjects);
	pointlist = "pointlist";
	Ext.CLIJ2_release(pointlist);
	Ext.CLIJ2_transposeXY(coordinates, pointlist);
	//Ext.CLIJ2_pull(pointlist);

	//texts = "texts";
	//Ext.CLIJ2_copy(slice, texts);
	//Ext.CLIJ2_set(texts, 0);
	//Ext.CLIJ2_pull(texts);

	Ext.CLIJx_showRGB(input_r, input_g, input_b, "viewer");

	mesh = "mesh";
	if (i > 0) {
		distance_matrix = "distance_matrix";
		Ext.CLIJ2_release(distance_matrix);
		Ext.CLIJ2_generateDistanceMatrix(pointlist, pointlist_cache, distance_matrix);
		//Ext.CLIJ2_pull(distance_matrix);
		indexlist = "indexlist";
		Ext.CLIJ2_setColumn(distance_matrix, 0, 1000);
		Ext.CLIJ2_setRow(distance_matrix, 0, 1000);
		Ext.CLIJ2_release(indexlist);
		Ext.CLIJ2_nClosestPoints(distance_matrix, indexlist, 1);
		run("Clear Results");
		//print("na " + nResults() );
		Ext.CLIJ2_image2DToResultsTable(pointlist);
		//print("nb " + nResults() );
		Ext.CLIJ2_image2DToResultsTable(pointlist_cache);
		//print("nc " + nResults() );
		Ext.CLIJ2_image2DToResultsTable(indexlist);
		//print("nd " + nResults() );

		//selectWindow(texts);
		for (j = 0; j < numberOfObjects; j++) {
			x1 = getResult("X" + j, 0);
			y1 = getResult("X" + j, 1);
			other_index = getResult("X" + j, 4);
			x2 = getResult("X" + other_index, 2);
			y2 = getResult("X" + other_index, 3);
			other_index_other = getResult("X" + other_index, 4);
			if (other_index_other == j) {
				//line_data = newArray(x1, y1, x2, y2);
				//Array.concat(lines, line_data);
				setColor(255, 0, 0);
				setFont("Arial", 20);
	
				distance = sqrt(pow(x1 - x2, 2) + pow(y1 - y2, 2));
				speed = distance / deltaTime * 1000;
				
				drawLine(x1, y1, x2, y2);
				drawString("   " + j + ": " + speed + "px/s", x1, y1);
			}
		}
		//Ext.CLIJ2_push(texts);
		//close("texts");
	}


	Ext.CLIJ2_release(pointlist_cache);
	Ext.CLIJ2_copy(pointlist, pointlist_cache);
	/*
	touch_matrix = touch_matrix;
	Ext.CLIJ2_create2D(touch_matrix, nResults(), nResults(), 8);
	Ext.CLIJ2_set(touch_matrix, 1);
	Ext.CLIJ2_pull(touch_matrix);

	mesh1 = "mesh1";
	mesh2 = "mesh2";
	Ext.CLIJ2_copy(slice, mesh1);
	Ext.CLIJ2_set(mesh1, 0);
	Ext.CLIJ2_touchMatrixToMesh(pointlist, touch_matrix, mesh1);
	//Ext.CLIJ2_pullBinary(mesh1);

	//break;
	

	
	Ext.CLIJ2_multiplyImageAndScalar(mesh1, mesh2, 255);
	*/

	//Ext.CLIJx_showGrey(slice, "viewer");
	
	Ext.CLIJ2_pullAsROI(thresholded);
	
	//Ext.CLIJ2_pull(slice);
	/*
	viewer = "viewer";
	Ext.CLIJx_showGrey(slice, viewer);

	if (i > 0) {
		destinationDeltaX = "destinationDeltaX";
		destinationDeltaY = "destinationDeltaY";
		maxDelta = 5;
		Ext.CLIJx_fastParticleImageVelocimetry(slice, slice_cache, destinationDeltaX, destinationDeltaY, maxDelta);
		Ext.CLIJx_showGrey(destinationDeltaX, destinationDeltaX);
		Ext.CLIJx_showRGB(destinationDeltaX, destinationDeltaY, slice, "PIV");
	}*/


	

	if (!isOpen(cancelText)) {
		print("Exiting");
		break;
	}

	Ext.CLIJ2_copy(slice, slice_cache);

	//Ext.CLIJx_organiseWindows(0, 150, 1, 3, 400, 300);

	if (i > 0) {
		//break;
	}
	//wait(200);
}
Ext.CLIJx_stopContinuousWebcamAcquisition(camera_index);

print("Bye");
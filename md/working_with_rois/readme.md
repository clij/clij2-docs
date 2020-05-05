

# Working with ROIs 
Authors: Robert Haase, Daniela Vorkel, April 2020

[Source](https://github.com/clij/clij2-docs/tree/master/src/main/macro/working_with_rois.ijm)

This macro shows how to apply an automated 
threshold method, how to use connected components labeling, 
and how to visualize / measure bounding boxes of objects .



```java
// clean up first
run("Close All");
run("Clear Results");
if (roiManager("count") > 0) {
	roiManager("deselect");
	roiManager("delete");
}


```

Get test data:

```java
run("Blobs (25K)");
run("Invert LUT");
input = getTitle();


```
<a href="image_1588708283952.png"><img src="image_1588708283952.png" width="250" alt="blobs.gif"/></a>

## Initialize GPU and push image data to GPU memory

```java
run("CLIJ2 Macro Extensions", "cl_device=");
Ext.CLIJ2_clear();

// push data to GPU
Ext.CLIJ2_push(input);

```

## Image segmentation and labelling
Together with a threshold method, we apply a connected components analysis to separate objects.

```java
Ext.CLIJ2_thresholdOtsu(input, mask);
Ext.CLIJ2_connectedComponentsLabelingBox(mask, labelmap);

```

## Visualization of labelled objects

```java
// show the image
Ext.CLIJ2_pull(input);
// show label as ROIs on top of the image
Ext.CLIJ2_pullLabelsToROIManager(labelmap);
roiManager("show all");
show();
```
<a href="image_1588708284416.png"><img src="image_1588708284416.png" width="250" alt="blobs-1.gif"/></a>

## Analyzing labelled objects from label map and measuring their bounding box area:

```java

// how many objects are in the label map?
Ext.CLIJ2_getMaximumOfAllPixels(labelmap, number_of_objects);

for (i = 0; i < number_of_objects; i++) {
	// cut label map into individual masks
	Ext.CLIJ2_labelToMask(labelmap, binaryImage, i + 1); // 0 is background, 1 is the first label
	// put bounding boxes in the ROI manager
	Ext.CLIJ2_getBoundingBox(binaryImage, x, y, z, w, h, d);

	// draw the bounding box
	makeRectangle(x, y, w, h);
	Roi.setStrokeColor("cyan");
	roiManager("add");

	// draw the ROI number of the bounding box
	makeText("" + (i + 1), x, y + h);
	Roi.setStrokeColor("cyan");
	roiManager("add");

	// save measurements as a table
	setResult("ROI_number", i, i + 1);
	setResult("Bounding_Box_Area", i, w * h);
}

```

## Bounding box visualization

```java

// show the image
Ext.CLIJ2_pull(input);

// show all label as ROIs on top of the image
roiManager("show all");
show();

```
<a href="image_1588708284963.png"><img src="image_1588708284963.png" width="250" alt="blobs-2.gif"/></a>

At the end of the macro, clean up:

```java
Ext.CLIJ2_clear();

```

This is just convenient method to show images properly in the notebook: 

```java

function show() {
	run("Flatten");
}
```



```
```

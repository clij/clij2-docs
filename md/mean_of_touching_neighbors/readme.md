

# CLIJ example macro: mean_of_touching_neighbors.ijm
Author: Robert Haase 
        March 2020

[Source](https://github.com/clij/clij2-docs/tree/master/src/main/macro/mean_of_touching_neighbors.ijm)

This macro shows how to apply an get a
voronoi image of a binary image in the GPU.

Clean up first and get test data

<pre class="highlight">
run("Close All");


run("Blobs (25K)");
//open("C:/structure/data/blobs.gif");
input = getTitle();

</pre>
<a href="image_1587652857492.png"><img src="image_1587652857492.png" width="224" alt="blobs.gif"/></a>

Init GPU
 and data

<pre class="highlight">
run("CLIJ2 Macro Extensions", "cl_device=");
Ext.CLIJ2_clear();

// push data to GPU
Ext.CLIJ2_push(input);

// cleanup ImageJ
run("Close All");

</pre>

Create a mask using the Otsu threshold algorithm

<pre class="highlight">
Ext.<a href="https://clij.github.io/clij2-docs/reference_thresholdOtsu">CLIJ2_thresholdOtsu</a>(input, mask);
Ext.CLIJ2_pull(mask);

</pre>
<a href="image_1587652857639.png"><img src="image_1587652857639.png" width="224" alt="CLIJ2_thresholdOtsu_result232"/></a>

Draw a Voronoi diagram and invert it

<pre class="highlight">

Ext.<a href="https://clij.github.io/clij2-docs/reference_voronoiOctagon">CLIJ2_voronoiOctagon</a>(mask, voronoi_diagram);
// invert
Ext.<a href="https://clij.github.io/clij2-docs/reference_binaryNot">CLIJ2_binaryNot</a>(voronoi_diagram, inverted_voronoi);

Ext.CLIJ2_pullBinary(voronoi_diagram);
Ext.CLIJ2_pullBinary(inverted_voronoi);

</pre>
<a href="image_1587652857789.png"><img src="image_1587652857789.png" width="224" alt="CLIJ2_voronoiOctagon_result233"/></a>
<a href="image_1587652857818.png"><img src="image_1587652857818.png" width="224" alt="CLIJ2_binaryNot_result234"/></a>

Generate a label map and extend it to make labels touch

<pre class="highlight">
Ext.<a href="https://clij.github.io/clij2-docs/reference_connectedComponentsLabelingBox">CLIJ2_connectedComponentsLabelingBox</a>(inverted_voronoi, labelled);

// Extend labels so that they touch
Ext.<a href="https://clij.github.io/clij2-docs/reference_maximum2DBox">CLIJ2_maximum2DBox</a>(labelled, labelled_extended, 2, 2);

Ext.CLIJ2_pull(labelled);
Ext.CLIJ2_pull(labelled_extended);

</pre>
<a href="image_1587652857959.png"><img src="image_1587652857959.png" width="224" alt="CLIJ2_connectedComponentsLabelingBox_result235"/></a>
<a href="image_1587652857977.png"><img src="image_1587652857977.png" width="224" alt="CLIJ2_maximum2DBox_result236"/></a>

Determine touch matrix

<pre class="highlight">
Ext.<a href="https://clij.github.io/clij2-docs/reference_generateTouchMatrix">CLIJ2_generateTouchMatrix</a>(labelled_extended, touch_matrix);
Ext.CLIJ2_pullBinary(touch_matrix);

</pre>
<a href="image_1587652858039.png"><img src="image_1587652858039.png" width="224" alt="CLIJ2_generateTouchMatrix_result237"/></a>

Do statistics on the label map
 and push the mean intensity column back to the GPU

<pre class="highlight">
run("Clear Results");
Ext.<a href="https://clij.github.io/clij2-docs/reference_statisticsOfBackgroundAndLabelledPixels">CLIJ2_statisticsOfBackgroundAndLabelledPixels</a>(input, labelled_extended);

Ext.<a href="https://clij.github.io/clij2-docs/reference_resultsTableColumnToImage">CLIJ2_resultsTableColumnToImage</a>(intensity_values, "MEAN_INTENSITY");

</pre>

Show Mean intensity per label as parametric image

<pre class="highlight">
Ext.<a href="https://clij.github.io/clij2-docs/reference_replaceIntensities">CLIJ2_replaceIntensities</a>(labelled_extended, intensity_values, intensity_map);
Ext.CLIJ2_pull(intensity_map);
rename("label intensity");

</pre>
<a href="image_1587652858096.png"><img src="image_1587652858096.png" width="224" alt="label intensity"/></a>

Determine mean (mean) intensity of local neighbors and draw another parametric image

<pre class="highlight">

Ext.<a href="https://clij.github.io/clij2-docs/reference_meanOfTouchingNeighbors">CLIJ2_meanOfTouchingNeighbors</a>(intensity_values, touch_matrix, local_mean_intensity_values);
Ext.<a href="https://clij.github.io/clij2-docs/reference_replaceIntensities">CLIJ2_replaceIntensities</a>(labelled_extended, local_mean_intensity_values, local_mean_intensity_map);
Ext.CLIJ2_pull(local_mean_intensity_map);
rename("mean neighbor intensity");

</pre>
<a href="image_1587652858149.png"><img src="image_1587652858149.png" width="224" alt="mean neighbor intensity"/></a>

Determine min and max (mean) intensity of local neighbors and draw two more parametric image

<pre class="highlight">

// min
Ext.<a href="https://clij.github.io/clij2-docs/reference_minimumOfTouchingNeighbors">CLIJ2_minimumOfTouchingNeighbors</a>(intensity_values, touch_matrix, local_minimum_intensity_values);
Ext.<a href="https://clij.github.io/clij2-docs/reference_replaceIntensities">CLIJ2_replaceIntensities</a>(labelled_extended, local_minimum_intensity_values, local_minimum_intensity_map);
Ext.CLIJ2_pull(local_minimum_intensity_map);
rename("minimum neighbor intensity");

// max
Ext.<a href="https://clij.github.io/clij2-docs/reference_maximumOfTouchingNeighbors">CLIJ2_maximumOfTouchingNeighbors</a>(intensity_values, touch_matrix, local_maximum_intensity_values);
Ext.<a href="https://clij.github.io/clij2-docs/reference_replaceIntensities">CLIJ2_replaceIntensities</a>(labelled_extended, local_maximum_intensity_values, local_maximum_intensity_map);
Ext.CLIJ2_pull(local_maximum_intensity_map);
rename("maximum neighbor intensity");

</pre>
<a href="image_1587652858252.png"><img src="image_1587652858252.png" width="224" alt="minimum neighbor intensity"/></a>
<a href="image_1587652858260.png"><img src="image_1587652858260.png" width="224" alt="maximum neighbor intensity"/></a>

Clean up by the end.

<pre class="highlight">
Ext.CLIJ2_clear();
</pre>





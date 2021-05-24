

# Voronoi Otsu Labeling
Author: Robert Haase, May 2021

[Source](https://github.com/clij/clij2-docs/tree/master/src/main/macro/voronoi_otsu_labeling.ijm)

This workflow for image segmentation is a rather simple and yet powerful approach, e.g. for detecting and segmenting nuclei in fluorescence micropscopy images. A nuclei marker such as nuclei-GFP, DAPI or histone-RFP in combination with various microscopy techniques can be used to generate images of suitable kind.

To demonstrate the workflow, we used image set [BBBC022v1](https://bbbc.broadinstitute.org/bbbc/BBBC022) [Gustafsdottir et al., PLOS ONE, 2013](http://dx.doi.org/10.1371/journal.pone.0080999), available from the Broad Bioimage Benchmark Collection [Ljosa et al., Nature Methods, 2012](http://dx.doi.org/10.1038/nmeth.2083).

We start by opening an example image and cropping out an interesting sub-region.

<pre class="highlight">
run("Close All");
// Init GPU
run("CLIJ2 Macro Extensions", "cl_device=");
Ext.<a href="https://clij.github.io/clij2-docs/reference_clear">CLIJ2_clear</a>();

open("C:/structure/code/clij2-docs/src/main/resources/BBBC022/IXMtest_A01_s1_w164FBEEF7-F77C-4892-86F5-72D0160D4FB2.tif");
input_image = getTitle();
run("32-bit"); // that's necessary to retrieve a reasonable spot detection result

Ext.<a href="https://clij.github.io/clij2-docs/reference_push">CLIJ2_push</a>(input_image);

// crop and visualize
Ext.<a href="https://clij.github.io/clij2-docs/reference_crop2D">CLIJ2_crop2D</a>(input_image, crop_image, 400, 00, 256, 256);
Ext.<a href="https://clij.github.io/clij2-docs/reference_pull">CLIJ2_pull</a>(crop_image);
</pre>
<a href="image_1621874721153.png"><img src="image_1621874721153.png" width="224" alt="IXMtest_A01_s1_w164FBEEF7-F77C-4892-86F5-72D0160D4FB2.tif"/></a>
<a href="image_1621874722023.png"><img src="image_1621874722023.png" width="224" alt="CLIJ2_crop2D_result206"/></a>

## Applying the algorithm
Voronoi-Otsu-labeling is a command, which asks for two sigma parameters. 
The first sigma controls how close detected cells can be (`spot_sigma`) 
and second controls how precise segmented objects are outlined (`outline_sigma`).

<pre class="highlight">
sigma_spot_detection = 5;
sigma_outline = 1;
Ext.<a href="https://clij.github.io/clij2-docs/reference_voronoiOtsuLabeling">CLIJ2_voronoiOtsuLabeling</a>(input_image, label_image, sigma_spot_detection, sigma_outline);
Ext.<a href="https://clij.github.io/clij2-docs/reference_voronoiOtsuLabeling">CLIJ2_voronoiOtsuLabeling</a>(crop_image, crop_label_image, sigma_spot_detection, sigma_outline);

Ext.<a href="https://clij.github.io/clij2-docs/reference_pull">CLIJ2_pull</a>(label_image);
run("glasbey_on_dark");
Ext.<a href="https://clij.github.io/clij2-docs/reference_pull">CLIJ2_pull</a>(crop_label_image);
run("glasbey_on_dark");
</pre>
<a href="image_1621874722333.png"><img src="image_1621874722333.png" width="224" alt="CLIJ2_voronoiOtsuLabeling_result207"/></a>
<a href="image_1621874722395.png"><img src="image_1621874722395.png" width="224" alt="CLIJ2_voronoiOtsuLabeling_result208"/></a>

## How does it work?
The Voronoi-Otsu-Labeling workflow is a combination of Gaussian blur, spot detection, 
thresholding and binary watershed. The interested reader might want to see the 
[open source code](https://github.com/clij/clij2/blob/master/src/main/java/net/haesleinhuepf/clij2/plugins/VoronoiOtsuLabeling.java).

Note: If this algorithm is applied to 3D data, it is recommended to make it isotropic first.

As a first step, we blur the image with a given sigma and detect maxima in the resulting image.

<pre class="highlight">
Ext.<a href="https://clij.github.io/clij2-docs/reference_gaussianBlur2D">CLIJ2_gaussianBlur2D</a>(crop_image, blurred_image, sigma_spot_detection, sigma_spot_detection);

// detect maxima (spots)
Ext.<a href="https://clij.github.io/clij2-docs/reference_detectMaxima2DBox">CLIJ2_detectMaxima2DBox</a>(blurred_image, detected_spots_image, 0, 0);

// count spots
Ext.<a href="https://clij.github.io/clij2-docs/reference_getSumOfAllPixels">CLIJ2_getSumOfAllPixels</a>(detected_spots_image, number_of_spots);
print("number of detected spots", number_of_spots);
// show blurred image
Ext.<a href="https://clij.github.io/clij2-docs/reference_pull">CLIJ2_pull</a>(blurred_image);
// show image with local maxima
Ext.<a href="https://clij.github.io/clij2-docs/reference_pull">CLIJ2_pull</a>(detected_spots_image);
setMinAndMax(0, 1);
</pre>
<pre>
> number of detected spots 22
</pre>
<a href="image_1621874722498.png"><img src="image_1621874722498.png" width="224" alt="CLIJ2_gaussianBlur2D_result209"/></a>
<a href="image_1621874722514.png"><img src="image_1621874722514.png" width="224" alt="CLIJ2_detectMaxima2DBox_result210"/></a>

Furthermore, we start again from the cropped image and blur it again, with a 
different sigma. Afterwards, we threshold the image using 
[Otsu's thresholding method (Otsu et al 1979)](https://doi.org/10.1109%2FTSMC.1979.4310076).

<pre class="highlight">
Ext.<a href="https://clij.github.io/clij2-docs/reference_gaussianBlur2D">CLIJ2_gaussianBlur2D</a>(crop_image, blurred_image, sigma_outline, sigma_outline);
Ext.<a href="https://clij.github.io/clij2-docs/reference_thresholdOtsu">CLIJ2_thresholdOtsu</a>(blurred_image, binary_image);

// show blurred image
Ext.<a href="https://clij.github.io/clij2-docs/reference_pull">CLIJ2_pull</a>(blurred_image);
// show binary image
Ext.<a href="https://clij.github.io/clij2-docs/reference_pull">CLIJ2_pull</a>(binary_image);
setMinAndMax(0, 1);
</pre>
<a href="image_1621874722610.png"><img src="image_1621874722610.png" width="224" alt="CLIJ2_gaussianBlur2D_result209"/></a>
<a href="image_1621874722673.png"><img src="image_1621874722673.png" width="224" alt="CLIJ2_thresholdOtsu_result211"/></a>

Afterwards, we take the binary spots image and the binary segmentation image 
and apply a binary_and operation to exclude spots which were detected in the 
background area. Those likely corresponded to noise.

<pre class="highlight">
Ext.<a href="https://clij.github.io/clij2-docs/reference_binaryAnd">CLIJ2_binaryAnd</a>(detected_spots_image, binary_image, selected_spots_image);
// count selected spots
Ext.<a href="https://clij.github.io/clij2-docs/reference_getSumOfAllPixels">CLIJ2_getSumOfAllPixels</a>(selected_spots_image, number_of_spots);
print("number of selected spots", number_of_spots);

// show selected spots image
Ext.<a href="https://clij.github.io/clij2-docs/reference_pull">CLIJ2_pull</a>(selected_spots_image);
setMinAndMax(0, 1);
</pre>
<pre>
> number of selected spots 13
</pre>
<a href="image_1621874722723.png"><img src="image_1621874722723.png" width="224" alt="CLIJ2_binaryAnd_result212"/></a>

Next, we separate the image space between the selected spots using a 
[Voronoi diagram](https://en.wikipedia.org/wiki/Voronoi_diagram#References)
which is limited to the positive pixels in the binary image.

<pre class="highlight">
Ext.<a href="https://clij.github.io/clij2-docs/reference_maskedVoronoiLabeling">CLIJ2_maskedVoronoiLabeling</a>(selected_spots_image, binary_image, voronoi_diagram );

// show binary image
Ext.<a href="https://clij.github.io/clij2-docs/reference_pull">CLIJ2_pull</a>(binary_image);
setMinAndMax(0, 1);

// show selected spots image
Ext.<a href="https://clij.github.io/clij2-docs/reference_pull">CLIJ2_pull</a>(selected_spots_image);
setMinAndMax(0, 1);

// show result
Ext.<a href="https://clij.github.io/clij2-docs/reference_pull">CLIJ2_pull</a>(voronoi_diagram );
run("glasbey_on_dark");
</pre>
<a href="image_1621874722903.png"><img src="image_1621874722903.png" width="224" alt="CLIJ2_thresholdOtsu_result211"/></a>
<a href="image_1621874722919.png"><img src="image_1621874722919.png" width="224" alt="CLIJ2_binaryAnd_result212"/></a>
<a href="image_1621874722934.png"><img src="image_1621874722934.png" width="224" alt="CLIJ2_maskedVoronoiLabeling_result213"/></a>

Finally, we clean up GPU memory.

<pre class="highlight">
Ext.<a href="https://clij.github.io/clij2-docs/reference_clear">CLIJ2_clear</a>();
</pre>





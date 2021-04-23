# CLIJ 1/2/x reference in category 'filter'
This reference contains all methods currently available in CLIJ, CLIJ2 and CLIJx for filtering images.. Read more about [CLIJs release cycle](https://clij.github.io/clij-docs/release_cycle) 

__Please note:__ CLIJ is deprecated. [Make the transition to CLIJ2](https://clij.github.io/clij2-docs/clij2_transition_notes).

<img src="images/mini_clij1_logo.png" width="18" height="18"/> Method is available in CLIJ (deprecated release)  
<img src="images/mini_clij2_logo.png" width="18" height="18"/> Method is available in CLIJ2 (stable release)  
<img src="images/mini_clijx_logo.png" width="18" height="18"/> Method is available in CLIJx (experimental release)  
<img src="images/mini_cle_logo.png" width="18" height="18"/> Method is available in clEsperanto (experimental)  



__Categories:__ [Binary](https://clij.github.io/clij2-docs/reference__binary), [Filter](https://clij.github.io/clij2-docs/reference__filter), [Graphs](https://clij.github.io/clij2-docs/reference__graph), [Labels](https://clij.github.io/clij2-docs/reference__label), [Math](https://clij.github.io/clij2-docs/reference__math), Matrices, [Measurements](https://clij.github.io/clij2-docs/reference__measurement), [Projections](https://clij.github.io/clij2-docs/reference__project), [Transformations](https://clij.github.io/clij2-docs/reference__transform), [Detection](https://clij.github.io/clij2-docs/reference__pyclesperanto), CLIc

 A,<a href="#B">\[B\]</a>,<a href="#C">\[C\]</a>,<a href="#D">\[D\]</a>,<a href="#E">\[E\]</a>,<a href="#F">\[F\]</a>,<a href="#G">\[G\]</a>, H,<a href="#I">\[I\]</a>, J, K,<a href="#L">\[L\]</a>,<a href="#M">\[M\]</a>,<a href="#N">\[N\]</a>,<a href="#O">\[O\]</a>,<a href="#P">\[P\]</a>, Q,<a href="#R">\[R\]</a>,<a href="#S">\[S\]</a>,<a href="#T">\[T\]</a>, U,<a href="#V">\[V\]</a>,<a href="#W">\[W\]</a>, X, Y, Z

<a name="B"></a>

## B
### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_bilateral">bilateral (Experimental)</a>  
Applies a bilateral filter using a box neighborhood with sigma weights for space and intensity to the input image.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_cle_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_binaryEdgeDetection">binaryEdgeDetection</a>  
Determines pixels/voxels which are on the surface of binary objects and sets only them to 1 in the  destination image. All other pixels are set to 0.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_binaryFillHoles">binaryFillHoles</a>  
Fills holes (pixels with value 0 surrounded by pixels with value 1) in a binary image.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_binaryFillHolesSliceBySlice">binaryFillHolesSliceBySlice (Experimental)</a>  
Fills holes (pixels with value 0 surrounded by pixels with value 1) in a binary image stack slice by slice.

### <img src="images/mini_clij1_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_cle_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_binaryNot">binaryNot</a>  
Computes a binary image (containing pixel values 0 and 1) from an image X by negating its pixel values x using the binary NOT operator !

### <img src="images/mini_clij1_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_blur2D">blur2D</a>  
Computes the Gaussian blurred image of an image given two sigma values in X and Y. 

### <img src="images/mini_clij1_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_blur3D">blur3D</a>  
Computes the Gaussian blurred image of an image given two sigma values in X, Y and Z. 

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_blurSliceBySlice">blurSliceBySlice (Experimental)</a>  
Computes the Gaussian blurred image of an image given two sigma values in X and Y. Thus, the filterkernel can have non-isotropic shape.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_cle_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_bottomHatBox">bottomHatBox</a>  
Apply a bottom-hat filter for background subtraction to the input image.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_cle_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_bottomHatSphere">bottomHatSphere</a>  
Applies a bottom-hat filter for background subtraction to the input image.

<a name="C"></a>

## C
### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_closingBox">closingBox</a>  
Apply a binary closing to the input image by calling n dilations and n erosions subsequenntly.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_closingDiamond">closingDiamond</a>  
Apply a binary closing to the input image by calling n dilations and n erosions subsequently.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_colorDeconvolution">colorDeconvolution (Experimental)</a>  
Computes the color deconvolution of an 8bit RGB stack color image   with a given 3x3 matrix of color vectors.  Note: The input image has to be a stack with three z-slices corresponding to the red, green and blue channel.)

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_cle_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_convolve">convolve</a>  
Convolve the image with a given kernel image.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_countNonZeroPixels">countNonZeroPixels</a>  
Determines the number of all pixels in a given image which are not equal to 0. 

### <img src="images/mini_clij1_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_countNonZeroPixels2DSphere">countNonZeroPixels2DSphere</a>  
Counts non-zero pixels in a sphere around every pixel. 

### <img src="images/mini_clij1_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_countNonZeroPixelsSliceBySliceSphere">countNonZeroPixelsSliceBySliceSphere</a>  
Counts non-zero pixels in a sphere around every pixel slice by slice in a stack. 

### <img src="images/mini_clij1_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_countNonZeroVoxels3DSphere">countNonZeroVoxels3DSphere</a>  
Counts non-zero voxels in a sphere around every voxel. 

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_crossCorrelation">crossCorrelation (Experimental)</a>  
Performs cross correlation analysis between two images. 

<a name="D"></a>

## D
### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_cle_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_detectLabelEdges">detectLabelEdges</a>  
Takes a labelmap and returns an image where all pixels on label edges are set to 1 and all other pixels to 0.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_cle_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_differenceOfGaussian2D">differenceOfGaussian2D</a>  
Applies Gaussian blur to the input image twice with different sigma values resulting in two images which are then subtracted from each other.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_cle_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_differenceOfGaussian3D">differenceOfGaussian3D</a>  
Applies Gaussian blur to the input image twice with different sigma values resulting in two images which are then subtracted from each other.

### <img src="images/mini_clij1_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_cle_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_dilateBox">dilateBox</a>  
Computes a binary image with pixel values 0 and 1 containing the binary dilation of a given input image.

### <img src="images/mini_clij1_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_cle_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_dilateBoxSliceBySlice">dilateBoxSliceBySlice</a>  
Computes a binary image with pixel values 0 and 1 containing the binary dilation of a given input image.

### <img src="images/mini_clij1_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_cle_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_dilateSphere">dilateSphere</a>  
Computes a binary image with pixel values 0 and 1 containing the binary dilation of a given input image.

### <img src="images/mini_clij1_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_cle_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_dilateSphereSliceBySlice">dilateSphereSliceBySlice</a>  
Computes a binary image with pixel values 0 and 1 containing the binary dilation of a given input image.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_distanceMap">distanceMap</a>  
Generates a distance map from a binary image. 

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_cle_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_divideByGaussianBackground">divideByGaussianBackground (Experimental)</a>  
Applies Gaussian blur to the input image and divides the original by the result.

<a name="E"></a>

## E
### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_entropyBox">entropyBox</a>  
Determines the local entropy in a box with a given radius around every pixel.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_equalizeMeanIntensitiesOfSlices">equalizeMeanIntensitiesOfSlices</a>  
Determines correction factors for each z-slice so that the average intensity in all slices can be made the same and multiplies these factors with the slices. 

### <img src="images/mini_clij1_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_cle_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_erodeBox">erodeBox</a>  
Computes a binary image with pixel values 0 and 1 containing the binary erosion of a given input image. 

### <img src="images/mini_clij1_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_cle_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_erodeBoxSliceBySlice">erodeBoxSliceBySlice</a>  
Computes a binary image with pixel values 0 and 1 containing the binary erosion of a given input image. 

### <img src="images/mini_clij1_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_cle_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_erodeSphere">erodeSphere</a>  
Computes a binary image with pixel values 0 and 1 containing the binary erosion of a given input image. 

### <img src="images/mini_clij1_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_cle_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_erodeSphereSliceBySlice">erodeSphereSliceBySlice</a>  
Computes a binary image with pixel values 0 and 1 containing the binary erosion of a given input image. 

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_cle_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_excludeLabels">excludeLabels</a>  
This operation removes labels from a labelmap and renumbers the remaining labels. 

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_cle_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_excludeLabelsOnEdges">excludeLabelsOnEdges</a>  
Removes all labels from a label map which touch the edges of the image (in X, Y and Z if the image is 3D). 

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_excludeLabelsOnSurface">excludeLabelsOnSurface</a>  
This operation follows a ray from a given position towards a label (or opposite direction) and checks if  there is another label between the label an the image border. 

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_cle_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_excludeLabelsOutsideSizeRange">excludeLabelsOutsideSizeRange (Experimental)</a>  
Removes labels from a label map which are not within a certain size range.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_excludeLabelsSubSurface">excludeLabelsSubSurface</a>  
This operation follows a ray from a given position towards a label (or opposite direction) and checks if  there is another label between the label an the image border. 

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_cle_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_excludeLabelsWithValuesOutOfRange">excludeLabelsWithValuesOutOfRange</a>  
This operation removes labels from a labelmap and renumbers the remaining labels. 

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_cle_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_excludeLabelsWithValuesWithinRange">excludeLabelsWithValuesWithinRange</a>  
This operation removes labels from a labelmap and renumbers the remaining labels. 

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_cle_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_exponential">exponential</a>  
Computes base exponential of all pixels values.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_cle_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_extendLabelingViaVoronoi">extendLabelingViaVoronoi</a>  
Takes a label map image and dilates the regions using a octagon shape until they touch. 

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_cle_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_extendLabelsWithMaximumRadius">extendLabelsWithMaximumRadius (Experimental)</a>  
Extend labels with a given radius.

<a name="F"></a>

## F
### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_flagLabelsOnEdges">flagLabelsOnEdges (Experimental)</a>  
Determines which labels in a label map touch the edges of the image (in X, Y and Z if the image is 3D). 

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_floodFillDiamond">floodFillDiamond</a>  
Replaces recursively all pixels of value a with value b if the pixels have a neighbor with value b.

<a name="G"></a>

## G
### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_cle_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_gammaCorrection">gammaCorrection (Experimental)</a>  
Applies a gamma correction to an image.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_cle_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_gaussianBlur2D">gaussianBlur2D</a>  
Computes the Gaussian blurred image of an image given two sigma values in X and Y. 

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_cle_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_gaussianBlur3D">gaussianBlur3D</a>  
Computes the Gaussian blurred image of an image given two sigma values in X, Y and Z. 

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_generateFeatureStack">generateFeatureStack (Experimental)</a>  
Generates a feature stack for Trainable Weka Segmentation. 

### <img src="images/mini_clij1_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_cle_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_gradientX">gradientX</a>  
Computes the gradient of gray values along X. 

### <img src="images/mini_clij1_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_cle_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_gradientY">gradientY</a>  
Computes the gradient of gray values along Y. 

### <img src="images/mini_clij1_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_cle_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_gradientZ">gradientZ</a>  
Computes the gradient of gray values along Z. 

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_greyLevelAtttributeFiltering">greyLevelAtttributeFiltering (Experimental)</a>  
Inspired by Grayscale attribute filtering from MorpholibJ library by David Legland & Ignacio Arganda-Carreras.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_greyscaleClosingBox">greyscaleClosingBox (Experimental)</a>  
Apply a greyscale morphological closing to the input image.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_greyscaleClosingSphere">greyscaleClosingSphere (Experimental)</a>  
Apply a greyscale morphological closing to the input image.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_greyscaleOpeningBox">greyscaleOpeningBox (Experimental)</a>  
Apply a greyscale morphological opening to the input image.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_greyscaleOpeningSphere">greyscaleOpeningSphere (Experimental)</a>  
Apply a greyscale morphological opening to the input image.

<a name="I"></a>

## I
### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_imageJ2FrangiVesselness">imageJ2FrangiVesselness (Experimental)</a>  
Apply ImageJ2 / ImageJ Ops Frangi Vesselness filter to an image.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_cle_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_imageJ2GaussianBlur">imageJ2GaussianBlur (Experimental)</a>  
Apply ImageJ2 / ImageJ Ops Gaussian Blur to an image.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_imageJ2MedianBox">imageJ2MedianBox (Experimental)</a>  
Apply ImageJ2 / ImageJ Ops Median filter with a Sphere shape to an image.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_imageJ2MedianSphere">imageJ2MedianSphere (Experimental)</a>  
Apply ImageJ2 / ImageJ Ops Median filter with a Sphere shape to an image.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_imageJ2RichardsonLucyDeconvolution">imageJ2RichardsonLucyDeconvolution (Experimental)</a>  
Apply ImageJ2 / ImageJ Ops Richardson Lucy Deconvolution to an image.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_imageJ2Tubeness">imageJ2Tubeness (Experimental)</a>  
Apply ImageJ2 / ImageJ Ops Tubeness filter to an image.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_imageJFillHoles">imageJFillHoles (Experimental)</a>  
Apply ImageJs Watershed algorithm to a binary image.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_imageJGaussianBlur">imageJGaussianBlur (Experimental)</a>  
Apply ImageJs Gaussian Blur to an image.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_imageJVariance">imageJVariance (Experimental)</a>  
Apply ImageJs Variance filter to an image.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_imageJWatershed">imageJWatershed (Experimental)</a>  
Apply ImageJs Watershed algorithm to a binary image.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_intensityCorrection">intensityCorrection (Experimental)</a>  
Determines the mean intensity of the image stack and multiplies it with a factor so that the mean intensity becomes equal to a given value.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_intensityCorrectionAboveThresholdOtsu">intensityCorrectionAboveThresholdOtsu (Experimental)</a>  
Determines the mean intensity of all pixel the image stack which are above a determined Threshold (Otsu et al. 1979) and multiplies it with a factor so that the mean intensity becomes equal to a given value.

<a name="L"></a>

## L
### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_cle_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_labelSpots">labelSpots</a>  
Transforms a binary image with single pixles set to 1 to a labelled spots image. 

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_labelVoronoiOctagon">labelVoronoiOctagon</a>  
Takes a labelled image and dilates the labels using a octagon shape until they touch. 

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_cle_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_laplaceBox">laplaceBox</a>  
Applies the Laplace operator (Box neighborhood) to an image.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_laplaceSphere">laplaceSphere (Experimental)</a>  
Applies the Laplace operator (Diamond neighborhood) to an image.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_localExtremaBox">localExtremaBox (Experimental)</a>  
Applies a local minimum and maximum filter. 

### <img src="images/mini_clij1_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_localThreshold">localThreshold</a>  
Computes a binary image with pixel values 0 and 1 depending on if a pixel value x in image X  was above of equal to the pixel value m in mask image M.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_localThresholdBernsen">localThresholdBernsen (Experimental)</a>  
Computes the local threshold based on   Auto Local Threshold (Bernsen method) see: https://imagej.net/Auto_Local_Threshold   see code in:   https://github.com/fiji/Auto_Local_Threshold/blob/master/src/main/java/fiji/threshold/Auto_Local_Threshold.java   Formular:  <pre>if (tcontrast > max - min){ if ((max + min)/2.0 >= 128) res = 0} else if (val > (max + min)/2.0) res =0</pre>

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_localThresholdContrast">localThresholdContrast (Experimental)</a>  
Computes the local threshold based on   Auto Local Threshold (Contrast method) see: https://imagej.net/Auto_Local_Threshold   see code in:   https://github.com/fiji/Auto_Local_Threshold/blob/master/src/main/java/fiji/threshold/Auto_Local_Threshold.java   Formular:  <pre>if (abs(value - min) >= abs(max - value) && (value != 0)) value = 0 </pre>

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_localThresholdMean">localThresholdMean (Experimental)</a>  
Computes the local threshold based on   Auto Local Threshold (Mean method) see: https://imagej.net/Auto_Local_Threshold   see code in:   https://github.com/fiji/Auto_Local_Threshold/blob/master/src/main/java/fiji/threshold/Auto_Local_Threshold.java   Formular:  <pre>if(value > (mean - c_value)) value = 0 </pre>

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_localThresholdMedian">localThresholdMedian (Experimental)</a>  
Computes the local threshold based on   Auto Local Threshold (Median method) see: https://imagej.net/Auto_Local_Threshold   see code in:   https://github.com/fiji/Auto_Local_Threshold/blob/master/src/main/java/fiji/threshold/Auto_Local_Threshold.java   Formular:  <pre>if(value > (median - c_value)) value = 0 </pre>

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_localThresholdMidGrey">localThresholdMidGrey (Experimental)</a>  
Computes the local threshold based on   Auto Local Threshold (MidGrey method) see: https://imagej.net/Auto_Local_Threshold   see code in:   https://github.com/fiji/Auto_Local_Threshold/blob/master/src/main/java/fiji/threshold/Auto_Local_Threshold.java   Formular:  <pre>if (value > ( (max + min)/2.0 - c_value) ) value = 0 </pre>

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_localThresholdNiblack">localThresholdNiblack (Experimental)</a>  
Computes the local threshold based on   Auto Local Threshold (Niblack method) see: https://imagej.net/Auto_Local_Threshold   see code in:   https://github.com/fiji/Auto_Local_Threshold/blob/master/src/main/java/fiji/threshold/Auto_Local_Threshold.java   Formular:  <pre>t = mean + k_value * sqrt(var - c_value) </pre>

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_localThresholdPhansalkar">localThresholdPhansalkar (Experimental)</a>  
Computes the local threshold (Fast version) based on   Auto Local Threshold (Phansalkar method) see: https://imagej.net/Auto_Local_Threshold   see code in:   https://github.com/fiji/Auto_Local_Threshold/blob/c955dc18cff58ac61df82f3f001799f7ffaec5cb/src/main/java/fiji/threshold/Auto_Local_Threshold.java#L636   Formulary:  <pre>t = mean * (1 + p * exp(-q * mean) + k * ((stdev / r) - 1))</pre>

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_localThresholdSauvola">localThresholdSauvola (Experimental)</a>  
Computes the local threshold based on   Auto Local Threshold (Sauvola method) see: https://imagej.net/Auto_Local_Threshold   see code in:   https://github.com/fiji/Auto_Local_Threshold/blob/master/src/main/java/fiji/threshold/Auto_Local_Threshold.java   Formular:  <pre>t = mean * (1.0 + k_value * (stddev / r_value - 1.0)) </pre>

<a name="M"></a>

## M
### <img src="images/mini_clij1_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_cle_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_mask">mask</a>  
Computes a masked image by applying a binary mask to an image. 

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_cle_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_maskLabel">maskLabel</a>  
Computes a masked image by applying a label mask to an image. 

### <img src="images/mini_clij1_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_maskStackWithPlane">maskStackWithPlane</a>  
Computes a masked image by applying a binary 2D mask to an image stack. 

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_cle_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_maskedVoronoiLabeling">maskedVoronoiLabeling (Experimental)</a>  
Takes a binary image, labels connected components and dilates the regions using a octagon shape until they touch and only inside another binary mask image.

### <img src="images/mini_clij1_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_cle_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_maximum2DBox">maximum2DBox</a>  
Computes the local maximum of a pixels rectangular neighborhood. 

### <img src="images/mini_clij1_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_cle_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_maximum2DSphere">maximum2DSphere</a>  
Computes the local maximum of a pixels ellipsoidal neighborhood. 

### <img src="images/mini_clij1_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_cle_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_maximum3DBox">maximum3DBox</a>  
Computes the local maximum of a pixels cube neighborhood. 

### <img src="images/mini_clij1_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_cle_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_maximum3DSphere">maximum3DSphere</a>  
Computes the local maximum of a pixels spherical neighborhood. 

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_maximumOctagon">maximumOctagon</a>  
Applies a maximum filter with kernel size 3x3 n times to an image iteratively. 

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_cle_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_maximumOfNNearestNeighborsMap">maximumOfNNearestNeighborsMap (Experimental)</a>  
Takes a label image and a parametric intensity image and will replace each labels value in the parametric image by the maximum value of neighboring labels. The distance number of nearest neighbors can be configured. Note: Values of all pixels in a label each must be identical.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_cle_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_maximumOfProximalNeighborsMap">maximumOfProximalNeighborsMap (Experimental)</a>  
Takes a label image and a parametric intensity image and will replace each labels value in the parametric image by the maximum value of neighboring labels.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_cle_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_maximumOfTouchingNeighborsMap">maximumOfTouchingNeighborsMap (Experimental)</a>  
Takes a label image and a parametric intensity image and will replace each labels value in the parametric image by the maximum value of neighboring labels. The radius of the neighborhood can be configured: * radius 0: Nothing is replaced * radius 1: direct neighbors are taken into account * radius 2: neighbors and neighbors or neighbors are taken into account * radius n: ...

### <img src="images/mini_clij1_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_cle_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_mean2DBox">mean2DBox</a>  
Computes the local mean average of a pixels rectangular neighborhood. 

### <img src="images/mini_clij1_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_cle_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_mean2DSphere">mean2DSphere</a>  
Computes the local mean average of a pixels ellipsoidal neighborhood. 

### <img src="images/mini_clij1_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_cle_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_mean3DBox">mean3DBox</a>  
Computes the local mean average of a pixels cube neighborhood. 

### <img src="images/mini_clij1_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_cle_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_mean3DSphere">mean3DSphere</a>  
Computes the local mean average of a pixels spherical neighborhood. 

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_cle_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_meanOfNNearestNeighborsMap">meanOfNNearestNeighborsMap (Experimental)</a>  
Takes a label image and a parametric intensity image and will replace each labels value in the parametric image by the minimum value of neighboring labels. The distance number of nearest neighbors can be configured. Note: Values of all pixels in a label each must be identical.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_cle_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_meanOfProximalNeighborsMap">meanOfProximalNeighborsMap (Experimental)</a>  
Takes a label image and a parametric intensity image and will replace each labels value in the parametric image by the mean average value of neighboring labels.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_cle_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_meanOfTouchingNeighborsMap">meanOfTouchingNeighborsMap (Experimental)</a>  
Takes a label image and a parametric intensity image and will replace each labels value in the parametric image by the mean average value of neighboring labels. The radius of the neighborhood can be configured: * radius 0: Nothing is replaced * radius 1: direct neighbors are taken into account * radius 2: neighbors and neighbors or neighbors are taken into account * radius n: ...

### <img src="images/mini_clij1_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_meanSliceBySliceSphere">meanSliceBySliceSphere</a>  
Computes the local mean average of a pixels ellipsoidal 2D neighborhood in an image stack  slice by slice. 

### <img src="images/mini_clij1_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_median2DBox">median2DBox</a>  
Computes the local median of a pixels rectangular neighborhood. 

### <img src="images/mini_clij1_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_median2DSphere">median2DSphere</a>  
Computes the local median of a pixels ellipsoidal neighborhood. 

### <img src="images/mini_clij1_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_median3DBox">median3DBox</a>  
Computes the local median of a pixels cuboid neighborhood. 

### <img src="images/mini_clij1_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_median3DSphere">median3DSphere</a>  
Computes the local median of a pixels spherical neighborhood. 

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_cle_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_mergeTouchingLabels">mergeTouchingLabels (Experimental)</a>  


### <img src="images/mini_clij1_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_cle_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_minimum2DBox">minimum2DBox</a>  
Computes the local minimum of a pixels rectangular neighborhood. 

### <img src="images/mini_clij1_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_cle_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_minimum2DSphere">minimum2DSphere</a>  
Computes the local minimum of a pixels ellipsoidal neighborhood. 

### <img src="images/mini_clij1_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_cle_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_minimum3DBox">minimum3DBox</a>  
Computes the local minimum of a pixels cube neighborhood. 

### <img src="images/mini_clij1_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_cle_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_minimum3DSphere">minimum3DSphere</a>  
Computes the local minimum of a pixels spherical neighborhood. 

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_minimumOctagon">minimumOctagon</a>  
Applies a minimum filter with kernel size 3x3 n times to an image iteratively. 

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_cle_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_minimumOfNNearestNeighborsMap">minimumOfNNearestNeighborsMap (Experimental)</a>  
Takes a label image and a parametric intensity image and will replace each labels value in the parametric image by the minimum value of neighboring labels. The distance number of nearest neighbors can be configured. Note: Values of all pixels in a label each must be identical.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_cle_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_minimumOfProximalNeighborsMap">minimumOfProximalNeighborsMap (Experimental)</a>  
Takes a label image and a parametric intensity image and will replace each labels value in the parametric image by the minimum value of neighboring labels.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_cle_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_minimumOfTouchingNeighborsMap">minimumOfTouchingNeighborsMap (Experimental)</a>  
Takes a label image and a parametric intensity image and will replace each labels value in the parametric image by the minimum value of neighboring labels. The radius of the neighborhood can be configured: * radius 0: Nothing is replaced * radius 1: direct neighbors are taken into account * radius 2: neighbors and neighbors or neighbors are taken into account * radius n: ...

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_cle_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_modeOfNNearestNeighborsMap">modeOfNNearestNeighborsMap (Experimental)</a>  
Takes a label image and a parametric intensity image and will replace each labels value in the parametric image by the mode value of neighboring labels. The distance number of nearest neighbors can be configured. Note: Values of all pixels in a label each must be identical.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_cle_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_modeOfProximalNeighborsMap">modeOfProximalNeighborsMap (Experimental)</a>  
Takes a label image and a parametric intensity image and will replace each labels value in the parametric image by the most popular value of neighboring labels.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_cle_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_modeOfTouchingNeighborsMap">modeOfTouchingNeighborsMap (Experimental)</a>  
Takes a label image and a parametric intensity image and will replace each labels value in the parametric image by the most popular value of neighboring labels. The radius of the neighborhood can be configured: * radius 0: Nothing is replaced * radius 1: direct neighbors are taken into account * radius 2: neighbors and neighbors or neighbors are taken into account * radius n: ...

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_morphoLibJClassicWatershed">morphoLibJClassicWatershed (Experimental)</a>  
Apply MorpholibJs Classic Watershed to an image.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_morphoLibJFillHoles">morphoLibJFillHoles (Experimental)</a>  
Apply MorpholibJ Fill Holes (Binary/Gray) to an image.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_morphoLibJKeepLargestRegion">morphoLibJKeepLargestRegion (Experimental)</a>  
Apply MorpholibJ Keep Largest Region to a binary image.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_morphoLibJMarkerControlledWatershed">morphoLibJMarkerControlledWatershed (Experimental)</a>  
Apply MorpholibJs Marker-controlled Watershed to an image.

<a name="N"></a>

## N
### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_cle_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_neighborsOfNeighbors">neighborsOfNeighbors</a>  
Determines neighbors of neigbors from touch matrix and saves the result as a new touch matrix.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_nonLocalMeans">nonLocalMeans (Experimental)</a>  
Applies a non-local means filter using a box neighborhood with a Gaussian weight specified with sigma to the input image.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_cle_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_nonzeroMaximumBox">nonzeroMaximumBox</a>  
Apply a maximum filter (box shape) to the input image. 

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_cle_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_nonzeroMaximumDiamond">nonzeroMaximumDiamond</a>  
Apply a maximum filter (diamond shape) to the input image. 

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_cle_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_nonzeroMinimumBox">nonzeroMinimumBox</a>  
Apply a minimum filter (box shape) to the input image. 

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_cle_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_nonzeroMinimumDiamond">nonzeroMinimumDiamond</a>  
Apply a minimum filter (diamond shape) to the input image. 

<a name="O"></a>

## O
### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_cle_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_onlyzeroOverwriteMaximumBox">onlyzeroOverwriteMaximumBox</a>  
Apply a local maximum filter to an image which only overwrites pixels with value 0.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_cle_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_onlyzeroOverwriteMaximumDiamond">onlyzeroOverwriteMaximumDiamond</a>  
Apply a local maximum filter to an image which only overwrites pixels with value 0.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_openingBox">openingBox</a>  
Apply a binary opening to the input image by calling n erosions and n dilations subsequenntly.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_openingDiamond">openingDiamond</a>  
Apply a binary opening to the input image by calling n erosions and n dilations subsequenntly.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_outOfIntensityRange">outOfIntensityRange (Experimental)</a>  
Sets all pixels to 1 if their intensity lies out of a given range, and 0 otherwise.

<a name="P"></a>

## P
### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_parametricWatershed">parametricWatershed (Experimental)</a>  
Apply a binary watershed to a binary image and introduce black pixels between objects.

<a name="R"></a>

## R
### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_cle_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_replaceIntensities">replaceIntensities</a>  
Replaces integer intensities specified in a vector image. 

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_cle_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_replaceIntensity">replaceIntensity</a>  
Replaces a specific intensity in an image with a given new value.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_replacePixelsIfZero">replacePixelsIfZero</a>  
Replaces pixel values x with y in case x is zero.

<a name="S"></a>

## S
### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_seededWatershed">seededWatershed (Experimental)</a>  
Takes a label map (seeds) and an input image with gray values to apply the watershed algorithm and split the image above a given threshold in labels.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_shrinkLabels">shrinkLabels (Experimental)</a>  
Extend labels with a given radius.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_simpleITKBilateral">simpleITKBilateral (Experimental)</a>  
Apply SimpleITKs Bilateral filter to an image.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_simpleITKBinaryFillhole">simpleITKBinaryFillhole (Experimental)</a>  
Apply SimpleITKs Binary Fill hole to an image.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_simpleITKBinaryPruning">simpleITKBinaryPruning (Experimental)</a>  
Apply SimpleITKs Binary Pruning to an image.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_simpleITKBinaryThinning">simpleITKBinaryThinning (Experimental)</a>  
Apply SimpleITKs Binary Thinning to an image.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_simpleITKBinomialBlur">simpleITKBinomialBlur (Experimental)</a>  
Apply SimpleITKs Binomial Blur filter to an image.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_simpleITKBoundedReciprocal">simpleITKBoundedReciprocal (Experimental)</a>  
Apply SimpleITKs BoundedReciprocal to an image.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_simpleITKCannyEdgeDetection">simpleITKCannyEdgeDetection (Experimental)</a>  
Apply SimpleITKs Canny edge detection filter to an image.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_simpleITKConnectedComponent">simpleITKConnectedComponent (Experimental)</a>  
Apply SimpleITKs ConnectedComponent to an image.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_simpleITKDanielssonDistanceMap">simpleITKDanielssonDistanceMap (Experimental)</a>  
Generate SimpleITKs Danielsson distance map from a binary image.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_simpleITKDiscreteGaussian">simpleITKDiscreteGaussian (Experimental)</a>  
Apply SimpleITKs Gaussian Blur to an image.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_simpleITKFFTConvolution">simpleITKFFTConvolution (Experimental)</a>  
Convolve an image with a kernel image using SimpleITK and a fast Fourier transform (FFT).

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_simpleITKHMaxima">simpleITKHMaxima (Experimental)</a>  
Apply SimpleITKs H-Maxima filter to an image.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_simpleITKInverseDeconvolution">simpleITKInverseDeconvolution (Experimental)</a>  
Apply SimpleITKs Inverse Deconvolution to an image.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_simpleITKLandweberDeconvolution">simpleITKLandweberDeconvolution (Experimental)</a>  
Apply SimpleITKs Landweber Deconvolution to an image.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_simpleITKMedian">simpleITKMedian (Experimental)</a>  
Apply SimpleITKs Median filter to an image.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_simpleITKMedianProjection">simpleITKMedianProjection (Experimental)</a>  
Apply SimpleITKs Median projection to an image.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_simpleITKMorphologicalWatershed">simpleITKMorphologicalWatershed (Experimental)</a>  
Apply SimpleITKs Morphological Watershed filter to an image.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_simpleITKOtsuMultipleThresholds">simpleITKOtsuMultipleThresholds (Experimental)</a>  
Apply SimpleITKs Otsu Multiple Thresholds to an image.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_simpleITKOtsuThreshold">simpleITKOtsuThreshold (Experimental)</a>  
Apply SimpleITKs Otsu Thresholding to an image.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_simpleITKTikhonovDeconvolution">simpleITKTikhonovDeconvolution (Experimental)</a>  
Apply SimpleITKs Tikhonov Deconvolution to an image.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_simpleITKWienerDeconvolution">simpleITKWienerDeconvolution (Experimental)</a>  
Apply SimpleITKs Wiener Deconvolution to an image.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_simpleITKZeroCrossing">simpleITKZeroCrossing (Experimental)</a>  
Apply SimpleITKs ZeroCrossing to an image.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_simpleITKZeroCrossingBasedEdgeDetection">simpleITKZeroCrossingBasedEdgeDetection (Experimental)</a>  
Apply SimpleITKs ZeroCrossingBasedEdgeDetection to an image.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_skeletonize">skeletonize (Experimental)</a>  
Erodes a binary image until just its skeleton is left. 

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_cle_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_sobel">sobel</a>  
Convolve the image with the Sobel kernel.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_sobelSliceBySlice">sobelSliceBySlice (Experimental)</a>  
Convolve the image with the Sobel kernel slice by slice.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_cle_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_squaredDifference">squaredDifference</a>  
Determines the squared difference pixel by pixel between two images.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_standardDeviationBox">standardDeviationBox (Experimental)</a>  
Computes the local standard deviation of a pixels box neighborhood. 

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_cle_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_standardDeviationOfNNearestNeighborsMap">standardDeviationOfNNearestNeighborsMap (Experimental)</a>  
Takes a label image and a parametric intensity image and will replace each labels value in the parametric image by the standard deviation value of neighboring labels. The distance number of nearest neighbors can be configured. Note: Values of all pixels in a label each must be identical.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_cle_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_standardDeviationOfProximalNeighborsMap">standardDeviationOfProximalNeighborsMap (Experimental)</a>  
Takes a label image and a parametric intensity image and will replace each labels value in the parametric image by the standard deviation value of neighboring labels.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_cle_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_standardDeviationOfTouchingNeighborsMap">standardDeviationOfTouchingNeighborsMap (Experimental)</a>  
Takes a label image and a parametric intensity image and will replace each labels value in the parametric image by the standard deviation value of neighboring labels. The radius of the neighborhood can be configured: * radius 0: Nothing is replaced * radius 1: direct neighbors are taken into account * radius 2: neighbors and neighbors or neighbors are taken into account * radius n: ...

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_standardDeviationSphere">standardDeviationSphere (Experimental)</a>  
Computes the local standard deviation of a pixels spherical neighborhood. 

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_cle_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_subtractGaussianBackground">subtractGaussianBackground (Experimental)</a>  
Applies Gaussian blur to the input image and subtracts the result from the original image.

<a name="T"></a>

## T
### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_tenengrad">tenengrad (Experimental)</a>  
Convolve the image with the Tenengrad kernel slice by slice.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_tenengradSliceBySlice">tenengradSliceBySlice (Experimental)</a>  
Convolve the image with the Tenengrad kernel slice by slice.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_thresholdDoG">thresholdDoG (Experimental)</a>  
Applies a Difference-of-Gaussian filter to an image and thresholds it with given sigma and threshold values.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_cle_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_topHatBox">topHatBox</a>  
Applies a top-hat filter for background subtraction to the input image.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_topHatOctagon">topHatOctagon (Experimental)</a>  
Applies a minimum filter with kernel size 3x3 n times to an image iteratively. 

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_topHatOctagonSliceBySlice">topHatOctagonSliceBySlice (Experimental)</a>  
Applies a minimum filter with kernel size 3x3 n times to an image iteratively. 

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_cle_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_topHatSphere">topHatSphere</a>  
Applies a top-hat filter for background subtraction to the input image.

<a name="V"></a>

## V
### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_varianceBox">varianceBox (Experimental)</a>  
Computes the local variance of a pixels box neighborhood. 

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_varianceSphere">varianceSphere (Experimental)</a>  
Computes the local variance of a pixels spherical neighborhood. 

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_cle_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_voronoiLabeling">voronoiLabeling</a>  
Takes a binary image, labels connected components and dilates the regions using a octagon shape until they touch. 

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_voronoiOctagon">voronoiOctagon</a>  
Takes a binary image and dilates the regions using a octagon shape until they touch. 

<a name="W"></a>

## W
### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_watershed">watershed</a>  
Apply a binary watershed to a binary image and introduces black pixels between objects.

197 methods listed.

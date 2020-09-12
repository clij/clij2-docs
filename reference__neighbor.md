# CLIJ 1/2/x reference in category 'neighbor'
This reference contains all methods currently available in CLIJ, CLIJ2 and CLIJx for processing neighboring objects.. Read more about [CLIJs release cycle](https://clij.github.io/clij-docs/release_cycle) 

__Please note:__ CLIJ is deprecated. [Make the transition to CLIJ2](https://clij.github.io/clij2-docs/clij2_transition_notes).

<img src="images/mini_clij1_logo.png" width="18" height="18"/> Method is available in CLIJ (deprecated release)  
<img src="images/mini_clij2_logo.png" width="18" height="18"/> Method is available in CLIJ2 (stable release)  
<img src="images/mini_clijx_logo.png" width="18" height="18"/> Method is available in CLIJx (experimental release)  



__Categories:__ [Binary](https://clij.github.io/clij2-docs/reference__binary), [Filter](https://clij.github.io/clij2-docs/reference__filter), [Labels](https://clij.github.io/clij2-docs/reference__label), [Math](https://clij.github.io/clij2-docs/reference__math), [Matrices](https://clij.github.io/clij2-docs/reference__matrix), [Measurements](https://clij.github.io/clij2-docs/reference__measurement), [Neighbors](https://clij.github.io/clij2-docs/reference__neighbor), [Projections](https://clij.github.io/clij2-docs/reference__project), [Transformations](https://clij.github.io/clij2-docs/reference__transform)

<a href="#A">\[A\]</a>,<a href="#B">\[B\]</a>,<a href="#C">\[C\]</a>,<a href="#D">\[D\]</a>,<a href="#E">\[E\]</a>,<a href="#F">\[F\]</a>,<a href="#G">\[G\]</a>, H, I, J, K,<a href="#L">\[L\]</a>,<a href="#M">\[M\]</a>,<a href="#N">\[N\]</a>, O,<a href="#P">\[P\]</a>, Q, R,<a href="#S">\[S\]</a>,<a href="#T">\[T\]</a>, U, V, W, X, Y, Z

<a name="A"></a>

## A
### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_averageDistanceOfNClosestNeighborsMap">averageDistanceOfNClosestNeighborsMap (Experimental)</a>  
Takes a label map, determines distances between all centroids and replaces every label with the average distance to the n closest neighboring labels.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_averageDistanceOfTouchingNeighbors">averageDistanceOfTouchingNeighbors</a>  
Takes a touch matrix and a distance matrix to determine the average distance of touching neighbors   for every object.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_averageNeighborDistanceMap">averageNeighborDistanceMap (Experimental)</a>  
Takes a label map, determines which labels touch and replaces every label with the average distance to their neighboring labels.

<a name="B"></a>

## B
### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_bilateral">bilateral (Experimental)</a>  
Applies a bilateral filter using a box neighborhood with sigma weights for space and intensity to the input image.

<a name="C"></a>

## C
### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_connectedComponentsLabelingBox">connectedComponentsLabelingBox</a>  
Performs connected components analysis inspecting the box neighborhood of every pixel to a binary image and generates a label map.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_connectedComponentsLabelingDiamond">connectedComponentsLabelingDiamond</a>  
Performs connected components analysis inspecting the diamond neighborhood of every pixel to a binary image and generates a label map.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_countTouchingNeighbors">countTouchingNeighbors</a>  
Takes a touch matrix as input and delivers a vector with number of touching neighbors per label as a vector.

<a name="D"></a>

## D
### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_detectMaxima2DBox">detectMaxima2DBox</a>  
Detects local maxima in a given square/cubic neighborhood. 

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_detectMaxima3DBox">detectMaxima3DBox</a>  
Detects local maxima in a given square/cubic neighborhood. 

### <img src="images/mini_clij1_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_detectMaximaBox">detectMaximaBox</a>  
Detects local maxima in a given square/cubic neighborhood. 

### <img src="images/mini_clij1_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_detectMaximaSliceBySliceBox">detectMaximaSliceBySliceBox</a>  
Detects local maxima in a given square neighborhood of an input image stack. 

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_detectMinima2DBox">detectMinima2DBox</a>  
Detects local minima in a given square/cubic neighborhood. 

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_detectMinima3DBox">detectMinima3DBox</a>  
Detects local minima in a given square/cubic neighborhood. 

### <img src="images/mini_clij1_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_detectMinimaBox">detectMinimaBox</a>  
Detects local minima in a given square/cubic neighborhood. 

### <img src="images/mini_clij1_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_detectMinimaSliceBySliceBox">detectMinimaSliceBySliceBox</a>  
Detects local minima in a given square neighborhood of an input image stack. 

### <img src="images/mini_clij1_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_dilateBox">dilateBox</a>  
Computes a binary image with pixel values 0 and 1 containing the binary dilation of a given input image.

### <img src="images/mini_clij1_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_dilateBoxSliceBySlice">dilateBoxSliceBySlice</a>  
Computes a binary image with pixel values 0 and 1 containing the binary dilation of a given input image.

### <img src="images/mini_clij1_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_dilateSphere">dilateSphere</a>  
Computes a binary image with pixel values 0 and 1 containing the binary dilation of a given input image.

### <img src="images/mini_clij1_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_dilateSphereSliceBySlice">dilateSphereSliceBySlice</a>  
Computes a binary image with pixel values 0 and 1 containing the binary dilation of a given input image.

### <img src="images/mini_clij1_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_downsample2D">downsample2D</a>  
Scales an image using given scaling factors for X and Y dimensions. 

### <img src="images/mini_clij1_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_downsample3D">downsample3D</a>  
Scales an image using given scaling factors for X and Y dimensions. 

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_drawDistanceMeshBetweenTouchingLabels">drawDistanceMeshBetweenTouchingLabels (Experimental)</a>  
Starting from a label map, draw lines between touching neighbors resulting in a mesh.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_drawMeshBetweenTouchingLabels">drawMeshBetweenTouchingLabels (Experimental)</a>  
Starting from a label map, draw lines between touching neighbors resulting in a mesh.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_drawTouchCountMeshBetweenTouchingLabels">drawTouchCountMeshBetweenTouchingLabels (Experimental)</a>  
Starting from a label map, draw lines between touching neighbors resulting in a mesh.

<a name="E"></a>

## E
### <img src="images/mini_clij1_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_erodeBox">erodeBox</a>  
Computes a binary image with pixel values 0 and 1 containing the binary erosion of a given input image. 

### <img src="images/mini_clij1_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_erodeBoxSliceBySlice">erodeBoxSliceBySlice</a>  
Computes a binary image with pixel values 0 and 1 containing the binary erosion of a given input image. 

### <img src="images/mini_clij1_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_erodeSphere">erodeSphere</a>  
Computes a binary image with pixel values 0 and 1 containing the binary erosion of a given input image. 

### <img src="images/mini_clij1_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_erodeSphereSliceBySlice">erodeSphereSliceBySlice</a>  
Computes a binary image with pixel values 0 and 1 containing the binary erosion of a given input image. 

<a name="F"></a>

## F
### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_floodFillDiamond">floodFillDiamond</a>  
Replaces recursively all pixels of value a with value b if the pixels have a neighbor with value b.

<a name="G"></a>

## G
### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_generateGreyValueCooccurrenceMatrixBox">generateGreyValueCooccurrenceMatrixBox (Experimental)</a>  
Takes an image and an intensity range to determine a grey value co-occurrence matrix.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_generateIntegerGreyValueCooccurrenceCountMatrixHalfBox">generateIntegerGreyValueCooccurrenceCountMatrixHalfBox (Experimental)</a>  
Takes an image and assumes its grey values are integers. It builds up a grey-level co-occurrence matrix of neighboring (west, south-west, south, south-east, in 3D 9 pixels on the next plane) pixel intensities. 

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_generateIntegerGreyValueCooccurrenceCountMatrixHalfDiamond">generateIntegerGreyValueCooccurrenceCountMatrixHalfDiamond (Experimental)</a>  
Takes an image and assumes its grey values are integers. It builds up a grey-level co-occurrence matrix of neighboring (left, bottom, back) pixel intensities. 

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_generateTouchCountMatrix">generateTouchCountMatrix</a>  
Takes a label map with n labels and generates a (n+1)*(n+1) matrix where all pixels are set the number of pixels where labels touch (diamond neighborhood). 

<a name="L"></a>

## L
### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_laplaceBox">laplaceBox</a>  
Applies the Laplace operator (Box neighborhood) to an image.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_laplaceSphere">laplaceSphere (Experimental)</a>  
Applies the Laplace operator (Diamond neighborhood) to an image.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_localMaximumAverageDistanceOfNClosestNeighborsMap">localMaximumAverageDistanceOfNClosestNeighborsMap (Experimental)</a>  
Takes a label map, determines distances between all centroids, the mean distance of the n closest points for every point  and replaces every label with the maximum distance of touching labels.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_localMaximumAverageNeighborDistanceMap">localMaximumAverageNeighborDistanceMap (Experimental)</a>  
Takes a label map, determines which labels touch, the distance between their centroids and the maximum distancebetween touching neighbors. It then replaces every label with the that value.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_localMaximumTouchingNeighborCountMap">localMaximumTouchingNeighborCountMap (Experimental)</a>  
Takes a label map, determines which labels touch, determines for every label with the number of touching  neighboring labels and replaces the label index with the local maximum of this count.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_localMeanAverageDistanceOfNClosestNeighborsMap">localMeanAverageDistanceOfNClosestNeighborsMap (Experimental)</a>  
Takes a label map, determines distances between all centroids, the mean distance of the n closest points for every point  and replaces every label with the mean distance of touching labels.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_localMeanAverageNeighborDistanceMap">localMeanAverageNeighborDistanceMap (Experimental)</a>  
Takes a label map, determines which labels touch, the distance between their centroids and the mean distancebetween touching neighbors. It then replaces every label with the that value.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_localMeanTouchPortionMap">localMeanTouchPortionMap (Experimental)</a>  
Takes a label map, determines which labels touch and how much, relatively taking the whole outline of  each label into account, and determines for every label with the mean of this value and replaces the  label index with that value.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_localMeanTouchingNeighborCountMap">localMeanTouchingNeighborCountMap (Experimental)</a>  
Takes a label map, determines which labels touch, determines for every label with the number of touching  neighboring labels and replaces the label index with the local mean of this count.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_localMedianAverageDistanceOfNClosestNeighborsMap">localMedianAverageDistanceOfNClosestNeighborsMap (Experimental)</a>  
Takes a label map, determines distances between all centroids, the mean distance of the n closest points for every point  and replaces every label with the median distance of touching labels.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_localMedianAverageNeighborDistanceMap">localMedianAverageNeighborDistanceMap (Experimental)</a>  
Takes a label map, determines which labels touch, the distance between their centroids and the median distancebetween touching neighbors. It then replaces every label with the that value.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_localMedianTouchingNeighborCountMap">localMedianTouchingNeighborCountMap (Experimental)</a>  
Takes a label map, determines which labels touch, determines for every label with the number of touching  neighboring labels and replaces the label index with the local median of this count.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_localMinimumAverageDistanceOfNClosestNeighborsMap">localMinimumAverageDistanceOfNClosestNeighborsMap (Experimental)</a>  
Takes a label map, determines distances between all centroids, the mean distance of the n closest points for every point  and replaces every label with the minimum distance of touching labels.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_localMinimumAverageNeighborDistanceMap">localMinimumAverageNeighborDistanceMap (Experimental)</a>  
Takes a label map, determines which labels touch, the distance between their centroids and the minimum distancebetween touching neighbors. It then replaces every label with the that value.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_localMinimumTouchingNeighborCountMap">localMinimumTouchingNeighborCountMap (Experimental)</a>  
Takes a label map, determines which labels touch, determines for every label with the number of touching  neighboring labels and replaces the label index with the local minimum of this count.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_localStandardDeviationAverageDistanceOfNClosestNeighborsMap">localStandardDeviationAverageDistanceOfNClosestNeighborsMap (Experimental)</a>  
Takes a label map, determines distances between all centroids, the mean distance of the n closest points for every point  and replaces every label with the standard deviation distance of touching labels.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_localStandardDeviationAverageNeighborDistanceMap">localStandardDeviationAverageNeighborDistanceMap (Experimental)</a>  
Takes a label map, determines which labels touch, the distance between their centroids and the standard deviation distancebetween touching neighbors. It then replaces every label with the that value.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_localStandardDeviationTouchingNeighborCountMap">localStandardDeviationTouchingNeighborCountMap (Experimental)</a>  
Takes a label map, determines which labels touch, determines for every label with the number of touching  neighboring labels and replaces the label index with the local standard deviation of this count.

<a name="M"></a>

## M
### <img src="images/mini_clij1_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_maximum2DBox">maximum2DBox</a>  
Computes the local maximum of a pixels rectangular neighborhood. 

### <img src="images/mini_clij1_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_maximum2DSphere">maximum2DSphere</a>  
Computes the local maximum of a pixels ellipsoidal neighborhood. 

### <img src="images/mini_clij1_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_maximum3DBox">maximum3DBox</a>  
Computes the local maximum of a pixels cube neighborhood. 

### <img src="images/mini_clij1_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_maximum3DSphere">maximum3DSphere</a>  
Computes the local maximum of a pixels spherical neighborhood. 

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_maximumOctagon">maximumOctagon</a>  
Applies a maximum filter with kernel size 3x3 n times to an image iteratively. 

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_maximumOfTouchingNeighbors">maximumOfTouchingNeighbors</a>  
Takes a touch matrix and a vector of values to determine the maximum value among touching neighbors for every object. 

### <img src="images/mini_clij1_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_mean2DBox">mean2DBox</a>  
Computes the local mean average of a pixels rectangular neighborhood. 

### <img src="images/mini_clij1_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_mean2DSphere">mean2DSphere</a>  
Computes the local mean average of a pixels ellipsoidal neighborhood. 

### <img src="images/mini_clij1_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_mean3DBox">mean3DBox</a>  
Computes the local mean average of a pixels cube neighborhood. 

### <img src="images/mini_clij1_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_mean3DSphere">mean3DSphere</a>  
Computes the local mean average of a pixels spherical neighborhood. 

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_meanOfTouchingNeighbors">meanOfTouchingNeighbors</a>  
Takes a touch matrix and a vector of values to determine the mean value among touching neighbors for every object. 

### <img src="images/mini_clij1_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_meanSliceBySliceSphere">meanSliceBySliceSphere</a>  
Computes the local mean average of a pixels ellipsoidal 2D neighborhood in an image stack  slice by slice. 

### <img src="images/mini_clij1_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_median2DBox">median2DBox</a>  
Computes the local median of a pixels rectangular neighborhood. 

### <img src="images/mini_clij1_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_median2DSphere">median2DSphere</a>  
Computes the local median of a pixels ellipsoidal neighborhood. 

### <img src="images/mini_clij1_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_median3DBox">median3DBox</a>  
Computes the local median of a pixels cuboid neighborhood. 

### <img src="images/mini_clij1_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_median3DSphere">median3DSphere</a>  
Computes the local median of a pixels spherical neighborhood. 

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_medianOfTouchingNeighbors">medianOfTouchingNeighbors</a>  
Takes a touch matrix and a vector of values to determine the median value among touching neighbors for every object. 

### <img src="images/mini_clij1_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_minimum2DBox">minimum2DBox</a>  
Computes the local minimum of a pixels rectangular neighborhood. 

### <img src="images/mini_clij1_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_minimum2DSphere">minimum2DSphere</a>  
Computes the local minimum of a pixels ellipsoidal neighborhood. 

### <img src="images/mini_clij1_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_minimum3DBox">minimum3DBox</a>  
Computes the local minimum of a pixels cube neighborhood. 

### <img src="images/mini_clij1_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_minimum3DSphere">minimum3DSphere</a>  
Computes the local minimum of a pixels spherical neighborhood. 

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_minimumDistanceOfTouchingNeighbors">minimumDistanceOfTouchingNeighbors</a>  
Takes a touch matrix and a distance matrix to determine the shortest distance of touching neighbors for every object.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_minimumOctagon">minimumOctagon</a>  
Applies a minimum filter with kernel size 3x3 n times to an image iteratively. 

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_minimumOfTouchingNeighbors">minimumOfTouchingNeighbors</a>  
Takes a touch matrix and a vector of values to determine the minimum value among touching neighbors for every object. 

<a name="N"></a>

## N
### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_neighborsOfNeighbors">neighborsOfNeighbors</a>  
Determines neighbors of neigbors from touch matrix and saves the result as a new touch matrix.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_nonLocalMeans">nonLocalMeans (Experimental)</a>  
Applies a non-local means filter using a box neighborhood with a Gaussian weight specified with sigma to the input image.

<a name="P"></a>

## P
### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_particleImageVelocimetry">particleImageVelocimetry (Experimental)</a>  
For every pixel in source image 1, determine the pixel with the most similar intensity in   the local neighborhood with a given radius in source image 2. Write the distance in  X, Y and Z in the three corresponding destination images.

<a name="S"></a>

## S
### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_standardDeviationOfTouchingNeighbors">standardDeviationOfTouchingNeighbors</a>  
Takes a touch matrix and a vector of values to determine the standard deviation value among touching neighbors for every object. 

<a name="T"></a>

## T
### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_topHatOctagon">topHatOctagon (Experimental)</a>  
Applies a minimum filter with kernel size 3x3 n times to an image iteratively. 

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_topHatOctagonSliceBySlice">topHatOctagonSliceBySlice (Experimental)</a>  
Applies a minimum filter with kernel size 3x3 n times to an image iteratively. 

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_touchingNeighborCountMap">touchingNeighborCountMap (Experimental)</a>  
Takes a label map, determines which labels touch and replaces every label with the number of touching neighboring labels.


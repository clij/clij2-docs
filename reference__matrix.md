# CLIJ 1/2/x reference in category 'matrix'
This reference contains all methods currently available in CLIJ, CLIJ2 and CLIJx for working with matrices.. Read more about [CLIJs release cycle](https://clij.github.io/clij-docs/release_cycle) 

__Please note:__ CLIJ is deprecated. [Make the transition to CLIJ2](https://clij.github.io/clij2-docs/clij2_transition_notes).

<img src="images/mini_clij1_logo.png" width="18" height="18"/> Method is available in CLIJ (deprecated release)  
<img src="images/mini_clij2_logo.png" width="18" height="18"/> Method is available in CLIJ2 (stable release)  
<img src="images/mini_clijx_logo.png" width="18" height="18"/> Method is available in CLIJx (experimental release)  
<img src="images/mini_cle_logo.png" width="18" height="18"/> Method is available in clEsperanto (experimental)  



__Categories:__ [Binary](https://clij.github.io/clij2-docs/reference__binary), [Filter](https://clij.github.io/clij2-docs/reference__filter), [Graphs](https://clij.github.io/clij2-docs/reference__graph), [Labels](https://clij.github.io/clij2-docs/reference__label), [Math](https://clij.github.io/clij2-docs/reference__math), Matrices, [Measurements](https://clij.github.io/clij2-docs/reference__measurement), [Projections](https://clij.github.io/clij2-docs/reference__project), [Transformations](https://clij.github.io/clij2-docs/reference__transform)

<a href="#A">\[A\]</a>, B,<a href="#C">\[C\]</a>,<a href="#D">\[D\]</a>, E, F,<a href="#G">\[G\]</a>, H, I, J, K, L,<a href="#M">\[M\]</a>,<a href="#N">\[N\]</a>, O, P, Q, R,<a href="#S">\[S\]</a>,<a href="#T">\[T\]</a>, U, V,<a href="#W">\[W\]</a>, X, Y, Z

<a name="A"></a>

## A
### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_adjacencyMatrixToTouchMatrix">adjacencyMatrixToTouchMatrix</a>  
Converts a adjacency matrix in a touch matrix

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_averageDistanceOfNClosestPoints">averageDistanceOfNClosestPoints</a>  
Determines the average of the n closest points for every point in a distance matrix.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_averageDistanceOfNFarOffPoints">averageDistanceOfNFarOffPoints</a>  
Determines the average of the n far off (most distant) points for every point in a distance matrix.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_averageDistanceOfTouchingNeighbors">averageDistanceOfTouchingNeighbors</a>  
Takes a touch matrix and a distance matrix to determine the average distance of touching neighbors   for every object.

<a name="C"></a>

## C
### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_countTouchingNeighbors">countTouchingNeighbors</a>  
Takes a touch matrix as input and delivers a vector with number of touching neighbors per label as a vector.

<a name="D"></a>

## D
### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_distanceMap">distanceMap</a>  
Generates a distance map from a binary image. 

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_distanceMatrixToMesh">distanceMatrixToMesh</a>  
Generates a mesh from a distance matric and a list of point coordinates.

<a name="G"></a>

## G
### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_generateBinaryOverlapMatrix">generateBinaryOverlapMatrix</a>  
Takes two labelmaps with n and m labels and generates a (n+1)*(m+1) matrix where all pixels are set to 0 exept those where labels overlap between the label maps. 

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_cle_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_generateDistanceMatrix">generateDistanceMatrix</a>  
Computes the distance between all point coordinates given in two point lists.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_generateGreyValueCooccurrenceMatrixBox">generateGreyValueCooccurrenceMatrixBox (Experimental)</a>  
Takes an image and an intensity range to determine a grey value co-occurrence matrix.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_generateIntegerGreyValueCooccurrenceCountMatrixHalfBox">generateIntegerGreyValueCooccurrenceCountMatrixHalfBox (Experimental)</a>  
Takes an image and assumes its grey values are integers. It builds up a grey-level co-occurrence matrix of neighboring (west, south-west, south, south-east, in 3D 9 pixels on the next plane) pixel intensities. 

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_generateIntegerGreyValueCooccurrenceCountMatrixHalfDiamond">generateIntegerGreyValueCooccurrenceCountMatrixHalfDiamond (Experimental)</a>  
Takes an image and assumes its grey values are integers. It builds up a grey-level co-occurrence matrix of neighboring (left, bottom, back) pixel intensities. 

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_generateJaccardIndexMatrix">generateJaccardIndexMatrix</a>  
Takes two labelmaps with n and m labels_2 and generates a (n+1)*(m+1) matrix where all labels_1 are set to 0 exept those where labels_2 overlap between the label maps. 

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_generateTouchCountMatrix">generateTouchCountMatrix</a>  
Takes a label map with n labels and generates a (n+1)*(n+1) matrix where all pixels are set the number of pixels where labels touch (diamond neighborhood). 

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_cle_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_generateTouchMatrix">generateTouchMatrix</a>  
Takes a labelmap with n labels and generates a (n+1)*(n+1) matrix where all pixels are set to 0 exept those where labels are touching. 

<a name="M"></a>

## M
### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_matrixEqual">matrixEqual</a>  
Checks if all elements of a matrix are different by less than or equal to a given tolerance. 

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_maximumOfTouchingNeighbors">maximumOfTouchingNeighbors</a>  
Takes a touch matrix and a vector of values to determine the maximum value among touching neighbors for every object. 

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_meanOfTouchingNeighbors">meanOfTouchingNeighbors</a>  
Takes a touch matrix and a vector of values to determine the mean value among touching neighbors for every object. 

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_medianOfTouchingNeighbors">medianOfTouchingNeighbors</a>  
Takes a touch matrix and a vector of values to determine the median value among touching neighbors for every object. 

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_minimumDistanceOfTouchingNeighbors">minimumDistanceOfTouchingNeighbors</a>  
Takes a touch matrix and a distance matrix to determine the shortest distance of touching neighbors for every object.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_minimumOfTouchingNeighbors">minimumOfTouchingNeighbors</a>  
Takes a touch matrix and a vector of values to determine the minimum value among touching neighbors for every object. 

<a name="N"></a>

## N
### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_nClosestDistances">nClosestDistances</a>  
Determine the n point indices with shortest distance for all points in a distance matrix. 

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_nClosestPoints">nClosestPoints</a>  
Determine the n point indices with shortest distance for all points in a distance matrix. 

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_neighborsOfNeighbors">neighborsOfNeighbors</a>  
Determines neighbors of neigbors from touch matrix and saves the result as a new touch matrix.

<a name="S"></a>

## S
### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_setWhereXequalsY">setWhereXequalsY</a>  
Sets all pixel values a of a given image A to a constant value v in case its coordinates x == y. 

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_setWhereXgreaterThanY">setWhereXgreaterThanY</a>  
Sets all pixel values a of a given image A to a constant value v in case its coordinates x > y. 

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_setWhereXsmallerThanY">setWhereXsmallerThanY</a>  
Sets all pixel values a of a given image A to a constant value v in case its coordinates x < y. 

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_shortestDistances">shortestDistances</a>  
Determine the shortest distance from a distance matrix. 

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_standardDeviationOfTouchingNeighbors">standardDeviationOfTouchingNeighbors</a>  
Takes a touch matrix and a vector of values to determine the standard deviation value among touching neighbors for every object. 

<a name="T"></a>

## T
### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_touchMatrixToAdjacencyMatrix">touchMatrixToAdjacencyMatrix</a>  
Converts a touch matrix in an adjacency matrix

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_cle_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_touchMatrixToMesh">touchMatrixToMesh</a>  
Takes a pointlist with dimensions n*d with n point coordinates in d dimensions and a touch matrix of  size n*n to draw lines from all points to points if the corresponding pixel in the touch matrix is 1.

<a name="W"></a>

## W
### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_writeVTKLineListToDisc">writeVTKLineListToDisc (Experimental)</a>  
Takes a point list image representing n points (n*2 for 2D points, n*3 for 3D points) and a corresponding touch matrix , sized (n+1)*(n+1), and exports them in VTK format.


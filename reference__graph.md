# CLIJ 1/2/x reference in category 'graph'
This reference contains all methods currently available in CLIJ, CLIJ2 and CLIJx for processing graphs.. Read more about [CLIJs release cycle](https://clij.github.io/clij-docs/release_cycle) 

__Please note:__ CLIJ is deprecated. [Make the transition to CLIJ2](https://clij.github.io/clij2-docs/clij2_transition_notes).

<img src="images/mini_clij1_logo.png" width="18" height="18"/> Method is available in CLIJ (deprecated release)  
<img src="images/mini_clij2_logo.png" width="18" height="18"/> Method is available in CLIJ2 (stable release)  
<img src="images/mini_clijx_logo.png" width="18" height="18"/> Method is available in CLIJx (experimental release)  
<img src="images/mini_cle_logo.png" width="18" height="18"/> Method is available in clEsperanto (experimental)  



__Categories:__ [Binary](https://clij.github.io/clij2-docs/reference__binary), [Filter](https://clij.github.io/clij2-docs/reference__filter), [Graphs](https://clij.github.io/clij2-docs/reference__graph), [Labels](https://clij.github.io/clij2-docs/reference__label), [Math](https://clij.github.io/clij2-docs/reference__math), Matrices, [Measurements](https://clij.github.io/clij2-docs/reference__measurement), [Projections](https://clij.github.io/clij2-docs/reference__project), [Transformations](https://clij.github.io/clij2-docs/reference__transform), [Detection](https://clij.github.io/clij2-docs/reference__pyclesperanto), CLIc

<a href="#A">\[A\]</a>, B, C,<a href="#D">\[D\]</a>, E, F,<a href="#G">\[G\]</a>, H, I, J, K,<a href="#L">\[L\]</a>,<a href="#M">\[M\]</a>,<a href="#N">\[N\]</a>, O,<a href="#P">\[P\]</a>, Q,<a href="#R">\[R\]</a>,<a href="#S">\[S\]</a>,<a href="#T">\[T\]</a>, U, V, W, X, Y, Z

<a name="A"></a>

## A
### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_adjacencyMatrixToTouchMatrix">adjacencyMatrixToTouchMatrix</a>  
Converts a adjacency matrix in a touch matrix.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_cle_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_averageDistanceOfNClosestNeighborsMap">averageDistanceOfNClosestNeighborsMap (Experimental)</a>  
Takes a label map, determines distances between all centroids and replaces every label with the average distance to the n closest neighboring labels.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_averageDistanceOfNClosestPoints">averageDistanceOfNClosestPoints</a>  
Determines the average of the n closest points for every point in a distance matrix.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_averageDistanceOfNFarOffPoints">averageDistanceOfNFarOffPoints</a>  
Determines the average of the n far off (most distant) points for every point in a distance matrix.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_cle_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_averageDistanceOfTouchingNeighbors">averageDistanceOfTouchingNeighbors</a>  
Takes a touch matrix and a distance matrix to determine the average distance of touching neighbors   for every object.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_cle_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_averageNeighborDistanceMap">averageNeighborDistanceMap (Experimental)</a>  
Takes a label map, determines which labels touch and replaces every label with the average distance to their neighboring labels.

<a name="D"></a>

## D
### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_cle_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_distanceMatrixToMesh">distanceMatrixToMesh</a>  
Generates a mesh from a distance matric and a list of point coordinates.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_cle_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_drawDistanceMeshBetweenTouchingLabels">drawDistanceMeshBetweenTouchingLabels (Experimental)</a>  
Starting from a label map, draw lines between touching neighbors resulting in a mesh.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_cle_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_drawMeshBetweenNClosestLabels">drawMeshBetweenNClosestLabels (Experimental)</a>  
Starting from a label map, draw lines between n closest labels for each label resulting in a mesh.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_cle_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_drawMeshBetweenProximalLabels">drawMeshBetweenProximalLabels (Experimental)</a>  
Starting from a label map, draw lines between labels that are closer than a given distance resulting in a mesh.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_cle_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_drawMeshBetweenTouchingLabels">drawMeshBetweenTouchingLabels (Experimental)</a>  
Starting from a label map, draw lines between touching neighbors resulting in a mesh.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_drawTouchCountMeshBetweenTouchingLabels">drawTouchCountMeshBetweenTouchingLabels (Experimental)</a>  
Starting from a label map, draw lines between touching neighbors resulting in a mesh.

<a name="G"></a>

## G
### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_cle_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_generateAngleMatrix">generateAngleMatrix (Experimental)</a>  
Computes the angle in radians between all point coordinates given in two point lists.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_cle_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_generateBinaryOverlapMatrix">generateBinaryOverlapMatrix</a>  
Takes two labelmaps with n and m labels and generates a (n+1)*(m+1) matrix where all pixels are set to 0 exept those where labels overlap between the label maps. 

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_cle_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_generateDistanceMatrix">generateDistanceMatrix</a>  
Computes the distance between all point coordinates given in two point lists.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_generateDistanceMatrixAlongAxis">generateDistanceMatrixAlongAxis (Experimental)</a>  
Computes the distance in X, Y or Z (specified with parameter axis) between all point coordinates given in two point lists.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_generateJaccardIndexMatrix">generateJaccardIndexMatrix</a>  
Takes two labelmaps with n and m labels_2 and generates a (n+1)*(m+1) matrix where all labels_1 are set to 0 exept those where labels_2 overlap between the label maps. 

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_cle_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_generateNNearestNeighborsMatrix">generateNNearestNeighborsMatrix (Experimental)</a>  
Produces a touch-matrix where the n nearest neighbors are marked as touching neighbors. 

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_cle_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_generateProximalNeighborsMatrix">generateProximalNeighborsMatrix (Experimental)</a>  
Produces a touch-matrix where the neighbors within a given distance range are marked as touching neighbors.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_generateTouchCountMatrix">generateTouchCountMatrix</a>  
Takes a label map with n labels and generates a (n+1)*(n+1) matrix where all pixels are set the number of pixels where labels touch (diamond neighborhood). 

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_cle_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_generateTouchMatrix">generateTouchMatrix</a>  
Takes a labelmap with n labels and generates a (n+1)*(n+1) matrix where all pixels are set to 0 exept those where labels are touching. 

<a name="L"></a>

## L
### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_localMaximumAverageDistanceOfNClosestNeighborsMap">localMaximumAverageDistanceOfNClosestNeighborsMap (Experimental)</a>  
Takes a label map, determines distances between all centroids, the mean distance of the n closest points for every point  and replaces every label with the maximum distance of touching labels.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_localMaximumAverageNeighborDistanceMap">localMaximumAverageNeighborDistanceMap (Experimental)</a>  
Takes a label map, determines which labels touch, the distance between their centroids and the maximum distancebetween touching neighbors. It then replaces every label with the that value.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_cle_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_localMaximumTouchingNeighborCountMap">localMaximumTouchingNeighborCountMap (Experimental)</a>  
Takes a label map, determines which labels touch, determines for every label with the number of touching  neighboring labels and replaces the label index with the local maximum of this count.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_localMeanAverageDistanceOfNClosestNeighborsMap">localMeanAverageDistanceOfNClosestNeighborsMap (Experimental)</a>  
Takes a label map, determines distances between all centroids, the mean distance of the n closest points for every point  and replaces every label with the mean distance of touching labels.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_localMeanAverageNeighborDistanceMap">localMeanAverageNeighborDistanceMap (Experimental)</a>  
Takes a label map, determines which labels touch, the distance between their centroids and the mean distancebetween touching neighbors. It then replaces every label with the that value.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_localMeanTouchPortionMap">localMeanTouchPortionMap (Experimental)</a>  
Takes a label map, determines which labels touch and how much, relatively taking the whole outline of  each label into account, and determines for every label with the mean of this value and replaces the  label index with that value.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_cle_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_localMeanTouchingNeighborCountMap">localMeanTouchingNeighborCountMap (Experimental)</a>  
Takes a label map, determines which labels touch, determines for every label with the number of touching  neighboring labels and replaces the label index with the local mean of this count.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_localMedianAverageDistanceOfNClosestNeighborsMap">localMedianAverageDistanceOfNClosestNeighborsMap (Experimental)</a>  
Takes a label map, determines distances between all centroids, the mean distance of the n closest points for every point  and replaces every label with the median distance of touching labels.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_localMedianAverageNeighborDistanceMap">localMedianAverageNeighborDistanceMap (Experimental)</a>  
Takes a label map, determines which labels touch, the distance between their centroids and the median distancebetween touching neighbors. It then replaces every label with the that value.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_cle_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_localMedianTouchingNeighborCountMap">localMedianTouchingNeighborCountMap (Experimental)</a>  
Takes a label map, determines which labels touch, determines for every label with the number of touching  neighboring labels and replaces the label index with the local median of this count.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_localMinimumAverageDistanceOfNClosestNeighborsMap">localMinimumAverageDistanceOfNClosestNeighborsMap (Experimental)</a>  
Takes a label map, determines distances between all centroids, the mean distance of the n closest points for every point  and replaces every label with the minimum distance of touching labels.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_localMinimumAverageNeighborDistanceMap">localMinimumAverageNeighborDistanceMap (Experimental)</a>  
Takes a label map, determines which labels touch, the distance between their centroids and the minimum distancebetween touching neighbors. It then replaces every label with the that value.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_cle_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_localMinimumTouchingNeighborCountMap">localMinimumTouchingNeighborCountMap (Experimental)</a>  
Takes a label map, determines which labels touch, determines for every label with the number of touching  neighboring labels and replaces the label index with the local minimum of this count.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_localStandardDeviationAverageDistanceOfNClosestNeighborsMap">localStandardDeviationAverageDistanceOfNClosestNeighborsMap (Experimental)</a>  
Takes a label map, determines distances between all centroids, the mean distance of the n closest points for every point  and replaces every label with the standard deviation distance of touching labels.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_localStandardDeviationAverageNeighborDistanceMap">localStandardDeviationAverageNeighborDistanceMap (Experimental)</a>  
Takes a label map, determines which labels touch, the distance between their centroids and the standard deviation distancebetween touching neighbors. It then replaces every label with the that value.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_cle_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_localStandardDeviationTouchingNeighborCountMap">localStandardDeviationTouchingNeighborCountMap (Experimental)</a>  
Takes a label map, determines which labels touch, determines for every label with the number of touching  neighboring labels and replaces the label index with the local standard deviation of this count.

<a name="M"></a>

## M
### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_cle_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_maximumDistanceOfTouchingNeighbors">maximumDistanceOfTouchingNeighbors (Experimental)</a>  
Takes a touch matrix and a distance matrix to determine the maximum distance of touching neighbors for every object.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_maximumNeighborDistanceMap">maximumNeighborDistanceMap (Experimental)</a>  
Takes a label map, determines which labels touch and replaces every label with the maximum distance to their neighboring labels.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_cle_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_maximumOfNNearestNeighborsMap">maximumOfNNearestNeighborsMap (Experimental)</a>  
Takes a label image and a parametric intensity image and will replace each labels value in the parametric image by the maximum value of neighboring labels. The distance number of nearest neighbors can be configured. Note: Values of all pixels in a label each must be identical.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_cle_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_maximumOfProximalNeighborsMap">maximumOfProximalNeighborsMap (Experimental)</a>  
Takes a label image and a parametric intensity image and will replace each labels value in the parametric image by the maximum value of neighboring labels.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_cle_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_maximumOfTouchingNeighbors">maximumOfTouchingNeighbors</a>  
Takes a touch matrix and a vector of values to determine the maximum value among touching neighbors for every object. 

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_cle_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_maximumOfTouchingNeighborsMap">maximumOfTouchingNeighborsMap (Experimental)</a>  
Takes a label image and a parametric intensity image and will replace each labels value in the parametric image by the maximum value of neighboring labels. The radius of the neighborhood can be configured: * radius 0: Nothing is replaced * radius 1: direct neighbors are taken into account * radius 2: neighbors and neighbors or neighbors are taken into account * radius n: ...

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_cle_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_meanOfNNearestNeighborsMap">meanOfNNearestNeighborsMap (Experimental)</a>  
Takes a label image and a parametric intensity image and will replace each labels value in the parametric image by the minimum value of neighboring labels. The distance number of nearest neighbors can be configured. Note: Values of all pixels in a label each must be identical.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_cle_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_meanOfProximalNeighborsMap">meanOfProximalNeighborsMap (Experimental)</a>  
Takes a label image and a parametric intensity image and will replace each labels value in the parametric image by the mean average value of neighboring labels.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_cle_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_meanOfTouchingNeighbors">meanOfTouchingNeighbors</a>  
Takes a touch matrix and a vector of values to determine the mean value among touching neighbors for every object. 

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_cle_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_meanOfTouchingNeighborsMap">meanOfTouchingNeighborsMap (Experimental)</a>  
Takes a label image and a parametric intensity image and will replace each labels value in the parametric image by the mean average value of neighboring labels. The radius of the neighborhood can be configured: * radius 0: Nothing is replaced * radius 1: direct neighbors are taken into account * radius 2: neighbors and neighbors or neighbors are taken into account * radius n: ...

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_cle_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_medianOfTouchingNeighbors">medianOfTouchingNeighbors</a>  
Takes a touch matrix and a vector of values to determine the median value among touching neighbors for every object. 

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_medianTouchPortionMap">medianTouchPortionMap (Experimental)</a>  
Starts from a label map, determines median touch portion to neighbors (between 0 and 1) and draws a map.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_cle_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_minimumDistanceOfTouchingNeighbors">minimumDistanceOfTouchingNeighbors</a>  
Takes a touch matrix and a distance matrix to determine the shortest distance of touching neighbors for every object.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_minimumNeighborDistanceMap">minimumNeighborDistanceMap (Experimental)</a>  
Takes a label map, determines which labels touch and replaces every label with the minimum distance to their neighboring labels.

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

<a name="N"></a>

## N
### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_nClosestDistances">nClosestDistances</a>  
Determine the n point indices with shortest distance for all points in a distance matrix. 

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_cle_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_nClosestPoints">nClosestPoints</a>  
Determine the n point indices with shortest distance for all points in a distance matrix. 

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_neighborCountWithTouchPortionAboveThresholdMap">neighborCountWithTouchPortionAboveThresholdMap (Experimental)</a>  
Starts from a label map, determines touch portion to neighbors, counts those above a given value (between 0 and 1) and draws a map.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_neighborDistanceRangeRatioMap">neighborDistanceRangeRatioMap (Experimental)</a>  
Takes a label map, determines which labels touch and replaces every label with the minimum distance to their neighboring labels.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_cle_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_neighborsOfNeighbors">neighborsOfNeighbors</a>  
Determines neighbors of neigbors from touch matrix and saves the result as a new touch matrix.

<a name="P"></a>

## P
### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_cle_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_pointIndexListToMesh">pointIndexListToMesh</a>  
Meshes all points in a given point list which are indiced in a corresponding index list.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_cle_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_pointIndexListToTouchMatrix">pointIndexListToTouchMatrix (Experimental)</a>  
Takes a list of point indices to generate a touch matrix (a.k.a. adjacency graph matrix) out of it. 

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_proximalNeighborCountMap">proximalNeighborCountMap (Experimental)</a>  
Takes a label map, determines which labels are within a given distance range and replaces every label with the number of neighboring labels.

<a name="R"></a>

## R
### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_cle_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_readIntensitiesFromMap">readIntensitiesFromMap (Experimental)</a>  
Takes a label image and an parametric image and reads parametric values from the labels positions.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_readValuesFromMap">readValuesFromMap (Experimental)</a>  
Takes a label image and an parametric image and reads parametric values from the labels positions.

<a name="S"></a>

## S
### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_shortestDistances">shortestDistances</a>  
Determine the shortest distance from a distance matrix. 

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_cle_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_standardDeviationOfNNearestNeighborsMap">standardDeviationOfNNearestNeighborsMap (Experimental)</a>  
Takes a label image and a parametric intensity image and will replace each labels value in the parametric image by the standard deviation value of neighboring labels. The distance number of nearest neighbors can be configured. Note: Values of all pixels in a label each must be identical.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_cle_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_standardDeviationOfProximalNeighborsMap">standardDeviationOfProximalNeighborsMap (Experimental)</a>  
Takes a label image and a parametric intensity image and will replace each labels value in the parametric image by the standard deviation value of neighboring labels.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_cle_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_standardDeviationOfTouchingNeighbors">standardDeviationOfTouchingNeighbors</a>  
Takes a touch matrix and a vector of values to determine the standard deviation value among touching neighbors for every object. 

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_cle_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_standardDeviationOfTouchingNeighborsMap">standardDeviationOfTouchingNeighborsMap (Experimental)</a>  
Takes a label image and a parametric intensity image and will replace each labels value in the parametric image by the standard deviation value of neighboring labels. The radius of the neighborhood can be configured: * radius 0: Nothing is replaced * radius 1: direct neighbors are taken into account * radius 2: neighbors and neighbors or neighbors are taken into account * radius n: ...

<a name="T"></a>

## T
### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_cle_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_touchMatrixToAdjacencyMatrix">touchMatrixToAdjacencyMatrix</a>  
Converts a touch matrix in an adjacency matrix

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_cle_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_touchMatrixToMesh">touchMatrixToMesh</a>  
Takes a pointlist with dimensions n*d with n point coordinates in d dimensions and a touch matrix of  size n*n to draw lines from all points to points if the corresponding pixel in the touch matrix is 1.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_cle_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_touchingNeighborCountMap">touchingNeighborCountMap (Experimental)</a>  
Takes a label map, determines which labels touch and replaces every label with the number of touching neighboring labels.

75 methods listed.

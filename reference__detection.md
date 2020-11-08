# CLIJ 1/2/x reference in category 'detection'
This reference contains all methods currently available in CLIJ, CLIJ2 and CLIJx for spot detection.. Read more about [CLIJs release cycle](https://clij.github.io/clij-docs/release_cycle) 

__Please note:__ CLIJ is deprecated. [Make the transition to CLIJ2](https://clij.github.io/clij2-docs/clij2_transition_notes).

<img src="images/mini_clij1_logo.png" width="18" height="18"/> Method is available in CLIJ (deprecated release)  
<img src="images/mini_clij2_logo.png" width="18" height="18"/> Method is available in CLIJ2 (stable release)  
<img src="images/mini_clijx_logo.png" width="18" height="18"/> Method is available in CLIJx (experimental release)  
<img src="images/mini_cle_logo.png" width="18" height="18"/> Method is available in clEsperanto (experimental)  



__Categories:__ [Binary](https://clij.github.io/clij2-docs/reference__binary), [Filter](https://clij.github.io/clij2-docs/reference__filter), [Graphs](https://clij.github.io/clij2-docs/reference__graph), [Labels](https://clij.github.io/clij2-docs/reference__label), [Math](https://clij.github.io/clij2-docs/reference__math), Matrices, [Measurements](https://clij.github.io/clij2-docs/reference__measurement), [Projections](https://clij.github.io/clij2-docs/reference__project), [Transformations](https://clij.github.io/clij2-docs/reference__transform), [Detection](https://clij.github.io/clij2-docs/reference__pyclesperanto)

 A,<a href="#B">\[B\]</a>, C,<a href="#D">\[D\]</a>, E,<a href="#F">\[F\]</a>, G, H, I, J, K,<a href="#L">\[L\]</a>, M, N, O, P, Q, R,<a href="#S">\[S\]</a>, T, U, V, W, X, Y, Z

<a name="B"></a>

## B
### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_cle_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_binaryEdgeDetection">binaryEdgeDetection</a>  
Determines pixels/voxels which are on the surface of binary objects and sets only them to 1 in the  destination image. All other pixels are set to 0.

<a name="D"></a>

## D
### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_detectAndLabelMaxima">detectAndLabelMaxima (Experimental)</a>  
Determines maximum regions in a Gaussian blurred version of the original image.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_cle_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_detectLabelEdges">detectLabelEdges</a>  
Takes a labelmap and returns an image where all pixels on label edges are set to 1 and all other pixels to 0.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_cle_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_detectMaxima2DBox">detectMaxima2DBox</a>  
Detects local maxima in a given square/cubic neighborhood. 

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_cle_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_detectMaxima3DBox">detectMaxima3DBox</a>  
Detects local maxima in a given square/cubic neighborhood. 

### <img src="images/mini_clij1_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_detectMaximaSliceBySliceBox">detectMaximaSliceBySliceBox</a>  
Detects local maxima in a given square neighborhood of an input image stack. 

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_detectMinima2DBox">detectMinima2DBox</a>  
Detects local minima in a given square/cubic neighborhood. 

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_detectMinima3DBox">detectMinima3DBox</a>  
Detects local minima in a given square/cubic neighborhood. 

### <img src="images/mini_clij1_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_detectMinimaSliceBySliceBox">detectMinimaSliceBySliceBox</a>  
Detects local minima in a given square neighborhood of an input image stack. 

<a name="F"></a>

## F
### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_findAndLabelMaxima">findAndLabelMaxima (Experimental)</a>  
Determine maxima with a given tolerance to surrounding maxima and background and label them.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_findMaxima">findMaxima (Experimental)</a>  
Finds and labels local maxima with neighboring maxima and background above a given tolerance threshold.

<a name="L"></a>

## L
### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_labelSpots">labelSpots</a>  
Transforms a binary image with single pixles set to 1 to a labelled spots image. 

<a name="S"></a>

## S
### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_spotsToPointList">spotsToPointList</a>  
Transforms a spots image as resulting from maximum/minimum detection in an image where every column contains d  pixels (with d = dimensionality of the original image) with the coordinates of the maxima/minima.

13 methods listed.

# CLIJ 1/2/x reference in category 'filter'
This reference contains all methods currently available in CLIJ, CLIJ2 and CLIJx for filtering images.. Read more about [CLIJs release cycle](https://clij.github.io/clij-docs/release_cycle) 

__Please note:__ CLIJ is deprecated. [Make the transition to CLIJ2](https://clij.github.io/clij2-docs/clij2_transition_notes).

<img src="images/mini_clij1_logo.png" width="18" height="18"/> Method is available in CLIJ (deprecated release)  
<img src="images/mini_clij2_logo.png" width="18" height="18"/> Method is available in CLIJ2 (stable release)  
<img src="images/mini_clijx_logo.png" width="18" height="18"/> Method is available in CLIJx (experimental release)  



__Categories:__ [Binary](https://clij.github.io/clij2-docs/reference__binary), [Filter](https://clij.github.io/clij2-docs/reference__filter), [Labels](https://clij.github.io/clij2-docs/reference__label), [Math](https://clij.github.io/clij2-docs/reference__math), [Matrices](https://clij.github.io/clij2-docs/reference__matrix), [Measurements](https://clij.github.io/clij2-docs/reference__measurement), [Neighbors](https://clij.github.io/clij2-docs/reference__neighbor), [Projections](https://clij.github.io/clij2-docs/reference__project), [Transformations](https://clij.github.io/clij2-docs/reference__transform)

 A,<a href="#B">\[B\]</a>,<a href="#C">\[C\]</a>,<a href="#D">\[D\]</a>,<a href="#E">\[E\]</a>, F,<a href="#G">\[G\]</a>, H, I, J, K,<a href="#L">\[L\]</a>,<a href="#M">\[M\]</a>,<a href="#N">\[N\]</a>,<a href="#O">\[O\]</a>, P, Q, R,<a href="#S">\[S\]</a>,<a href="#T">\[T\]</a>, U, V,<a href="#W">\[W\]</a>, X, Y, Z

<a name="B"></a>

## B
### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_bilateral">bilateral (Experimental)</a>  
Applies a bilateral filter using a box neighborhood with sigma weights for space and intensity to the input image.

### <img src="images/mini_clij1_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_blur2D">blur2D</a>  
Computes the Gaussian blurred image of an image given two sigma values in X and Y. 

### <img src="images/mini_clij1_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_blur3D">blur3D</a>  
Computes the Gaussian blurred image of an image given two sigma values in X, Y and Z. 

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_blurSliceBySlice">blurSliceBySlice (Experimental)</a>  
Computes the Gaussian blurred image of an image given two sigma values in X and Y. Thus, the filterkernel can have non-isotropic shape.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_bottomHatBox">bottomHatBox</a>  
Apply a bottom-hat filter for background subtraction to the input image.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_bottomHatSphere">bottomHatSphere</a>  
Applies a bottom-hat filter for background subtraction to the input image.

<a name="C"></a>

## C
### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_convolve">convolve</a>  
Convolve the image with a given kernel image.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_crossCorrelation">crossCorrelation (Experimental)</a>  
Performs cross correlation analysis between two images. 

<a name="D"></a>

## D
### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_differenceOfGaussian2D">differenceOfGaussian2D</a>  
Applies Gaussian blur to the input image twice with different sigma values resulting in two images which are then subtracted from each other.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_differenceOfGaussian3D">differenceOfGaussian3D</a>  
Applies Gaussian blur to the input image twice with different sigma values resulting in two images which are then subtracted from each other.

### <img src="images/mini_clij1_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_dilateBoxSliceBySlice">dilateBoxSliceBySlice</a>  
Computes a binary image with pixel values 0 and 1 containing the binary dilation of a given input image.

### <img src="images/mini_clij1_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_dilateSphereSliceBySlice">dilateSphereSliceBySlice</a>  
Computes a binary image with pixel values 0 and 1 containing the binary dilation of a given input image.

<a name="E"></a>

## E
### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_entropyBox">entropyBox</a>  
Determines the local entropy in a box with a given radius around every pixel.

### <img src="images/mini_clij1_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_erodeBoxSliceBySlice">erodeBoxSliceBySlice</a>  
Computes a binary image with pixel values 0 and 1 containing the binary erosion of a given input image. 

### <img src="images/mini_clij1_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_erodeSphereSliceBySlice">erodeSphereSliceBySlice</a>  
Computes a binary image with pixel values 0 and 1 containing the binary erosion of a given input image. 

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_extendLabelsWithMaximumRadius">extendLabelsWithMaximumRadius (Experimental)</a>  
Extend labels with a given radius.

<a name="G"></a>

## G
### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_gaussianBlur2D">gaussianBlur2D</a>  
Computes the Gaussian blurred image of an image given two sigma values in X and Y. 

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_gaussianBlur3D">gaussianBlur3D</a>  
Computes the Gaussian blurred image of an image given two sigma values in X, Y and Z. 

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_generateFeatureStack">generateFeatureStack (Experimental)</a>  
Generates a feature stack for Trainable Weka Segmentation. 

### <img src="images/mini_clij1_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_gradientX">gradientX</a>  
Computes the gradient of gray values along X. 

### <img src="images/mini_clij1_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_gradientY">gradientY</a>  
Computes the gradient of gray values along Y. 

### <img src="images/mini_clij1_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_gradientZ">gradientZ</a>  
Computes the gradient of gray values along Z. 

<a name="L"></a>

## L
### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_laplaceBox">laplaceBox</a>  
Applies the Laplace operator (Box neighborhood) to an image.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_laplaceSphere">laplaceSphere (Experimental)</a>  
Applies the Laplace operator (Diamond neighborhood) to an image.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_localExtremaBox">localExtremaBox (Experimental)</a>  
Applies a local minimum and maximum filter. 

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

### <img src="images/mini_clij1_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_mean2DBox">mean2DBox</a>  
Computes the local mean average of a pixels rectangular neighborhood. 

### <img src="images/mini_clij1_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_mean2DSphere">mean2DSphere</a>  
Computes the local mean average of a pixels ellipsoidal neighborhood. 

### <img src="images/mini_clij1_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_mean3DBox">mean3DBox</a>  
Computes the local mean average of a pixels cube neighborhood. 

### <img src="images/mini_clij1_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_mean3DSphere">mean3DSphere</a>  
Computes the local mean average of a pixels spherical neighborhood. 

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

### <img src="images/mini_clij1_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_minimum2DBox">minimum2DBox</a>  
Computes the local minimum of a pixels rectangular neighborhood. 

### <img src="images/mini_clij1_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_minimum2DSphere">minimum2DSphere</a>  
Computes the local minimum of a pixels ellipsoidal neighborhood. 

### <img src="images/mini_clij1_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_minimum3DBox">minimum3DBox</a>  
Computes the local minimum of a pixels cube neighborhood. 

### <img src="images/mini_clij1_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_minimum3DSphere">minimum3DSphere</a>  
Computes the local minimum of a pixels spherical neighborhood. 

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_minimumOctagon">minimumOctagon</a>  
Applies a minimum filter with kernel size 3x3 n times to an image iteratively. 

<a name="N"></a>

## N
### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_nonLocalMeans">nonLocalMeans (Experimental)</a>  
Applies a non-local means filter using a box neighborhood with a Gaussian weight specified with sigma to the input image.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_nonzeroMaximumBox">nonzeroMaximumBox</a>  
Apply a maximum filter (box shape) to the input image. 

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_nonzeroMaximumDiamond">nonzeroMaximumDiamond</a>  
Apply a maximum filter (diamond shape) to the input image. 

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_nonzeroMinimumBox">nonzeroMinimumBox</a>  
Apply a minimum filter (box shape) to the input image. 

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_nonzeroMinimumDiamond">nonzeroMinimumDiamond</a>  
Apply a minimum filter (diamond shape) to the input image. 

<a name="O"></a>

## O
### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_onlyzeroOverwriteMaximumBox">onlyzeroOverwriteMaximumBox</a>  
Apply a local maximum filter to an image which only overwrites pixels with value 0.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_onlyzeroOverwriteMaximumDiamond">onlyzeroOverwriteMaximumDiamond</a>  
Apply a local maximum filter to an image which only overwrites pixels with value 0.

<a name="S"></a>

## S
### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_sobel">sobel</a>  
Convolve the image with the Sobel kernel.

<a name="T"></a>

## T
### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_topHatBox">topHatBox</a>  
Applies a top-hat filter for background subtraction to the input image.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_topHatOctagon">topHatOctagon (Experimental)</a>  
Applies a minimum filter with kernel size 3x3 n times to an image iteratively. 

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_topHatOctagonSliceBySlice">topHatOctagonSliceBySlice (Experimental)</a>  
Applies a minimum filter with kernel size 3x3 n times to an image iteratively. 

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_topHatSphere">topHatSphere</a>  
Applies a top-hat filter for background subtraction to the input image.

<a name="W"></a>

## W
### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_watershed">watershed</a>  
Apply a binary watershed to a binary image and introduces black pixels between objects.


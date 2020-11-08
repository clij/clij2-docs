# CLIJ 1/2/x reference in category 'segmentation'
This reference contains all methods currently available in CLIJ, CLIJ2 and CLIJx for segmenting images.. Read more about [CLIJs release cycle](https://clij.github.io/clij-docs/release_cycle) 

__Please note:__ CLIJ is deprecated. [Make the transition to CLIJ2](https://clij.github.io/clij2-docs/clij2_transition_notes).

<img src="images/mini_clij1_logo.png" width="18" height="18"/> Method is available in CLIJ (deprecated release)  
<img src="images/mini_clij2_logo.png" width="18" height="18"/> Method is available in CLIJ2 (stable release)  
<img src="images/mini_clijx_logo.png" width="18" height="18"/> Method is available in CLIJx (experimental release)  
<img src="images/mini_cle_logo.png" width="18" height="18"/> Method is available in clEsperanto (experimental)  



__Categories:__ [Binary](https://clij.github.io/clij2-docs/reference__binary), [Filter](https://clij.github.io/clij2-docs/reference__filter), [Graphs](https://clij.github.io/clij2-docs/reference__graph), [Labels](https://clij.github.io/clij2-docs/reference__label), [Math](https://clij.github.io/clij2-docs/reference__math), Matrices, [Measurements](https://clij.github.io/clij2-docs/reference__measurement), [Projections](https://clij.github.io/clij2-docs/reference__project), [Transformations](https://clij.github.io/clij2-docs/reference__transform), [Detection](https://clij.github.io/clij2-docs/reference__pyclesperanto)

<a href="#A">\[A\]</a>,<a href="#B">\[B\]</a>, C, D, E, F,<a href="#G">\[G\]</a>, H, I, J, K, L, M, N, O, P, Q, R, S,<a href="#T">\[T\]</a>, U, V,<a href="#W">\[W\]</a>, X, Y, Z

<a name="A"></a>

## A
### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_applyWekaModel">applyWekaModel (Experimental)</a>  
Applies a Weka model using functionality of Fijis Trainable Weka Segmentation plugin. 

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_applyWekaToTable">applyWekaToTable (Experimental)</a>  
Applies a Weka model using functionality of Fijis Trainable Weka Segmentation plugin. 

### <img src="images/mini_clij1_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_automaticThreshold">automaticThreshold</a>  
The automatic thresholder utilizes the threshold methods from ImageJ on a histogram determined on  the GPU to create binary images as similar as possible to ImageJ 'Apply Threshold' method.

<a name="B"></a>

## B
### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_binaryWekaPixelClassifier">binaryWekaPixelClassifier (Experimental)</a>  
Applies a pre-trained CLIJx-Weka model to a 2D image. 

<a name="G"></a>

## G
### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_generateFeatureStack">generateFeatureStack (Experimental)</a>  
Generates a feature stack for Trainable Weka Segmentation. 

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_generateLabelFeatureImage">generateLabelFeatureImage (Experimental)</a>  
Generates a feature image for Trainable Weka Segmentation. 

<a name="T"></a>

## T
### <img src="images/mini_clij1_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_threshold">threshold</a>  
Computes a binary image with pixel values 0 and 1. 

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_thresholdDefault">thresholdDefault</a>  
The automatic thresholder utilizes the Default threshold method implemented in ImageJ using a histogram determined on  the GPU to create binary images as similar as possible to ImageJ 'Apply Threshold' method.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_thresholdDoG">thresholdDoG (Experimental)</a>  
Applies a Difference-of-Gaussian filter to an image and thresholds it with given sigma and threshold values.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_thresholdHuang">thresholdHuang</a>  
The automatic thresholder utilizes the Huang threshold method implemented in ImageJ using a histogram determined on  the GPU to create binary images as similar as possible to ImageJ 'Apply Threshold' method.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_thresholdIJ_IsoData">thresholdIJ_IsoData</a>  
The automatic thresholder utilizes the IJ_IsoData threshold method implemented in ImageJ using a histogram determined on  the GPU to create binary images as similar as possible to ImageJ 'Apply Threshold' method.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_thresholdIntermodes">thresholdIntermodes</a>  
The automatic thresholder utilizes the Intermodes threshold method implemented in ImageJ using a histogram determined on  the GPU to create binary images as similar as possible to ImageJ 'Apply Threshold' method.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_thresholdIsoData">thresholdIsoData</a>  
The automatic thresholder utilizes the IsoData threshold method implemented in ImageJ using a histogram determined on  the GPU to create binary images as similar as possible to ImageJ 'Apply Threshold' method.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_thresholdLi">thresholdLi</a>  
The automatic thresholder utilizes the Li threshold method implemented in ImageJ using a histogram determined on  the GPU to create binary images as similar as possible to ImageJ 'Apply Threshold' method.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_thresholdMaxEntropy">thresholdMaxEntropy</a>  
The automatic thresholder utilizes the MaxEntropy threshold method implemented in ImageJ using a histogram determined on  the GPU to create binary images as similar as possible to ImageJ 'Apply Threshold' method.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_thresholdMean">thresholdMean</a>  
The automatic thresholder utilizes the Mean threshold method implemented in ImageJ using a histogram determined on  the GPU to create binary images as similar as possible to ImageJ 'Apply Threshold' method.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_thresholdMinError">thresholdMinError</a>  
The automatic thresholder utilizes the MinError threshold method implemented in ImageJ using a histogram determined on  the GPU to create binary images as similar as possible to ImageJ 'Apply Threshold' method.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_thresholdMinimum">thresholdMinimum</a>  
The automatic thresholder utilizes the Minimum threshold method implemented in ImageJ using a histogram determined on  the GPU to create binary images as similar as possible to ImageJ 'Apply Threshold' method.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_thresholdMoments">thresholdMoments</a>  
The automatic thresholder utilizes the Moments threshold method implemented in ImageJ using a histogram determined on  the GPU to create binary images as similar as possible to ImageJ 'Apply Threshold' method.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_cle_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_thresholdOtsu">thresholdOtsu</a>  
The automatic thresholder utilizes the Otsu threshold method implemented in ImageJ using a histogram determined on  the GPU to create binary images as similar as possible to ImageJ 'Apply Threshold' method.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_thresholdPercentile">thresholdPercentile</a>  
The automatic thresholder utilizes the Percentile threshold method implemented in ImageJ using a histogram determined on  the GPU to create binary images as similar as possible to ImageJ 'Apply Threshold' method.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_thresholdRenyiEntropy">thresholdRenyiEntropy</a>  
The automatic thresholder utilizes the RenyiEntropy threshold method implemented in ImageJ using a histogram determined on  the GPU to create binary images as similar as possible to ImageJ 'Apply Threshold' method.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_thresholdShanbhag">thresholdShanbhag</a>  
The automatic thresholder utilizes the Shanbhag threshold method implemented in ImageJ using a histogram determined on  the GPU to create binary images as similar as possible to ImageJ 'Apply Threshold' method.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_thresholdTriangle">thresholdTriangle</a>  
The automatic thresholder utilizes the Triangle threshold method implemented in ImageJ using a histogram determined on  the GPU to create binary images as similar as possible to ImageJ 'Apply Threshold' method.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clij2_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_thresholdYen">thresholdYen</a>  
The automatic thresholder utilizes the Yen threshold method implemented in ImageJ using a histogram determined on  the GPU to create binary images as similar as possible to ImageJ 'Apply Threshold' method.

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_trainWekaFromTable">trainWekaFromTable (Experimental)</a>  
Trains a Weka model using functionality of Fijis Trainable Weka Segmentation plugin. 

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_trainWekaModel">trainWekaModel (Experimental)</a>  
Trains a Weka model using functionality of Fijis Trainable Weka Segmentation plugin. 

### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_trainWekaModelWithOptions">trainWekaModelWithOptions (Experimental)</a>  
Trains a Weka model using functionality of Fijis Trainable Weka Segmentation plugin. 

<a name="W"></a>

## W
### <img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><img src="images/mini_clijx_logo.png" width="18" height="18"/><img src="images/mini_empty_logo.png" width="18" height="18"/><a href="https://clij.github.io/clij2-docs/reference_wekaLabelClassifier">wekaLabelClassifier (Experimental)</a>  
Applies a pre-trained CLIJx-Weka model to an image and a corresponding label map. 

29 methods listed.

## getAutomaticThreshold
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_empty_logo.png"/>

By Robert Haase based on work by G. Landini and W. Rasband

Determines a threshold according to a given method and saves it to the threshold_value variable.

The automatic thresholder utilizes the threshold methods from ImageJ on a histogram determined on 
the GPU to determine a threshold value as similar as possible to ImageJ 'Apply Threshold' method. 

Enter one 
of these methods in the method text field:
[Default, Huang, Intermodes, IsoData, IJ_IsoData, Li, MaxEntropy, Mean, MinError, Minimum, Moments, Otsu, Percentile, RenyiEntropy, Shanbhag, Triangle, Yen]

Categories: [Measurements](https://clij.github.io/clij2-docs/reference__measurement), [Binary](https://clij.github.io/clij2-docs/reference__binary)

Availability: Available in Fiji by activating the update sites clij and clij2.
This function is part of clij2_-2.2.1.0.jar.

### Usage in ImageJ macro
```
Ext.CLIJ2_getAutomaticThreshold(Image input, String method, Number threshold_value);
```




### License terms
The code for the automatic thresholding methods originates from https://github.com/imagej/imagej1/blob/master/ij/process/AutoThresholder.java  
  
Detailed documentation on the implemented methods can be found online: https://imagej.net/Auto_Threshold

[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

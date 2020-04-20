## automaticThreshold
<img src="images/mini_clij1_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/>

The automatic thresholder utilizes the threshold methods from ImageJ on a histogram determined on 
the GPU to create binary images as similar as possible to ImageJ 'Apply Threshold' method. Enter one 
of these methods in the method text field:
[Default, Huang, Intermodes, IsoData, IJ_IsoData, Li, MaxEntropy, Mean, MinError, Minimum, Moments, Otsu, Percentile, RenyiEntropy, Shanbhag, Triangle, Yen]

### automaticThreshold often follows after
* <a href="reference_topHatBox">topHatBox</a> (2)


### automaticThreshold is often followed by
* <a href="reference_subtractImages">subtractImages</a> (2)
* <a href="reference_connectedComponentsLabeling">connectedComponentsLabeling</a> (6)
* <a href="reference_centerOfMass">centerOfMass</a> (2)
* <a href="reference_getSorensenDiceCoefficient">getSorensenDiceCoefficient</a> (3)
* <a href="reference_binaryEdgeDetection">binaryEdgeDetection</a> (2)


### Usage in ImageJ macro
```
Ext.CLIJ2_automaticThreshold(Image input, Image destination, String method);
```


### Usage in Java
```
// init CLIJ and GPU
import net.haesleinhuepf.clij2.CLIJ2;
import net.haesleinhuepf.clij.clearcl.ClearCLBuffer;
CLIJ2 clij2 = CLIJ2.getInstance();

// get input parameters
ClearCLBuffer input = clij2.push(inputImagePlus);
destination = clij.create(input);
```

```
// Execute operation on GPU
clij2.automaticThreshold(clij, input, destination, method);
```

```
//show result
destinationImagePlus = clij2.pull(destination);
destinationImagePlus.show();

// cleanup memory on GPU
clij2.release(input);
clij2.release(destination);
```




### Example notebooks
<a href="https://clij.github.io/clij2-docs/md/compare_workflows"><img src="images/language_macro.png" height="20"/></a> [compare_workflows](https://clij.github.io/clij2-docs/md/compare_workflows)  
<a href="https://clij.github.io/clij2-docs/md/labeling"><img src="images/language_macro.png" height="20"/></a> [labeling](https://clij.github.io/clij2-docs/md/labeling)  
<a href="https://clij.github.io/clij2-docs/md/measure_overlap"><img src="images/language_macro.png" height="20"/></a> [measure_overlap](https://clij.github.io/clij2-docs/md/measure_overlap)  




### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/distanceMap.ijm"><img src="images/language_macro.png" height="20"/></a> [distanceMap.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/distanceMap.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/measure_area_per_label.ijm"><img src="images/language_macro.png" height="20"/></a> [measure_area_per_label.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/measure_area_per_label.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/autoThreshold.ijm"><img src="images/language_macro.png" height="20"/></a> [autoThreshold.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/autoThreshold.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/boundingBoxes.ijm"><img src="images/language_macro.png" height="20"/></a> [boundingBoxes.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/boundingBoxes.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/center_of_mass.ijm"><img src="images/language_macro.png" height="20"/></a> [center_of_mass.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/center_of_mass.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/compare_workflows.ijm"><img src="images/language_macro.png" height="20"/></a> [compare_workflows.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/compare_workflows.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/excludeLabelsOnEdges.ijm"><img src="images/language_macro.png" height="20"/></a> [excludeLabelsOnEdges.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/excludeLabelsOnEdges.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/intensity_per_label.ijm"><img src="images/language_macro.png" height="20"/></a> [intensity_per_label.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/intensity_per_label.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/labeling.ijm"><img src="images/language_macro.png" height="20"/></a> [labeling.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/labeling.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/labeling_benchmarking.ijm"><img src="images/language_macro.png" height="20"/></a> [labeling_benchmarking.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/labeling_benchmarking.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/measure_overlap.ijm"><img src="images/language_macro.png" height="20"/></a> [measure_overlap.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/measure_overlap.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/outline.ijm"><img src="images/language_macro.png" height="20"/></a> [outline.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/outline.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/particle_analysis.ijm"><img src="images/language_macro.png" height="20"/></a> [particle_analysis.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/particle_analysis.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/pullAsROI.ijm"><img src="images/language_macro.png" height="20"/></a> [pullAsROI.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/pullAsROI.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/pullLabelsToROIManager.ijm"><img src="images/language_macro.png" height="20"/></a> [pullLabelsToROIManager.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/pullLabelsToROIManager.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/pullToROIManager.ijm"><img src="images/language_macro.png" height="20"/></a> [pullToROIManager.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/pullToROIManager.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/statistics.ijm"><img src="images/language_macro.png" height="20"/></a> [statistics.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/statistics.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/watershed.ijm"><img src="images/language_macro.png" height="20"/></a> [watershed.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/watershed.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/workflow.ijm"><img src="images/language_macro.png" height="20"/></a> [workflow.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/workflow.ijm)  
<a href="https://github.com/clij/clijpy/blob/master/python/benchmark_clijx_pull.ipynb"><img src="images/language_python.png" height="20"/></a> [benchmark_clijx_pull.ipynb](https://github.com/clij/clijpy/blob/master/python/benchmark_clijx_pull.ipynb)  
<a href="https://github.com/clij/clijpy/blob/master/python/clijpy_demo.ipynb"><img src="images/language_python.png" height="20"/></a> [clijpy_demo.ipynb](https://github.com/clij/clijpy/blob/master/python/clijpy_demo.ipynb)  
<a href="https://github.com/clij/clijpy/blob/master/python/spot_detection.py"><img src="images/language_python.png" height="20"/></a> [spot_detection.py](https://github.com/clij/clijpy/blob/master/python/spot_detection.py)  
<a href="https://github.com/clij/clatlab/blob/master/src/main/matlab/automaticThreshold.m"><img src="images/language_matlab.png" height="20"/></a> [automaticThreshold.m](https://github.com/clij/clatlab/blob/master/src/main/matlab/automaticThreshold.m)  
<a href="https://github.com/clij/clatlab/blob/master/src/main/matlab/outline.m"><img src="images/language_matlab.png" height="20"/></a> [outline.m](https://github.com/clij/clatlab/blob/master/src/main/matlab/outline.m)  
<a href="https://github.com/clij/clatlab/blob/master/src/main/matlab/segmentation.m"><img src="images/language_matlab.png" height="20"/></a> [segmentation.m](https://github.com/clij/clatlab/blob/master/src/main/matlab/segmentation.m)  
<a href="https://github.com/clij/clatlab/blob/master/src/main/matlab/spotDetection3D.m"><img src="images/language_matlab.png" height="20"/></a> [spotDetection3D.m](https://github.com/clij/clatlab/blob/master/src/main/matlab/spotDetection3D.m)  
<a href="https://github.com/clij/clatlab/blob/master/src/main/matlab/statistics.m"><img src="images/language_matlab.png" height="20"/></a> [statistics.m](https://github.com/clij/clatlab/blob/master/src/main/matlab/statistics.m)  
<a href="https://github.com/clij/clatlab/blob/master/src/main/matlab/thresholding.m"><img src="images/language_matlab.png" height="20"/></a> [thresholding.m](https://github.com/clij/clatlab/blob/master/src/main/matlab/thresholding.m)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

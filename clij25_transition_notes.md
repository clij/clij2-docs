# CLIJ2 - CLIJ2.5 transition guide
CLIJ2.5 is fully backwards compatible to CLIJ2 and [CLIJx](https://github.com/clij/clijx). No code changes are necessary. 
However, it is recommended to update scripts which were using CLIJx-functions to use CLIJ2 instead if possible 
as functions from CLIJx were moved to CLIJ2. 

For example, you can replace this line using CLIJ2:
```
Ext.CLIJx_extendLabelsWithMaximumRadius(input, output, radius);
```
with this:
```
Ext.CLIJ2_dilateLabels(input, output, radius);
```

## Image Data Flow Graph updates
If you generated Image Data Flow Graphs as groovy scripts using the CLIJx-assistant, it might be necessary to update 
those by replacing the '.clijx.' package to '.clij2.' in lines where plugins where used which were moved from clijx to 
clij2. For example this line
```
node = new net.haesleinhuepf.clijx.assistant.interactive.generic.GenericAssistantGUIPlugin(new net.haesleinhuepf.clijx.plugins.VoronoiOtsuLabeling());
```
needs to be changed to this line:
```
node = new net.haesleinhuepf.clij2.assistant.interactive.generic.GenericAssistantGUIPlugin(new net.haesleinhuepf.clij2.plugins.VoronoiOtsuLabeling());
                                 ^                                                                                   ^
```

## API Changes

The following functions were renamed when transitioning from CLIJx to CLIJ2. 
Again, no changes to CLIJx-based scripts are necessary. The old CLIJx functions still exist and are marked as deprecated. 
In order update your CLIJx-based scripts, consider the following replacements:
* DilateLabels (formerly known as ExtendLabelsWithMaximumRadius)
* DrawMeshBetweenNNearestLabels (formerly known as CLIJ2_drawMeshBetweenNClosestLabels)
* ErodeLabels (formerly known as ShrinkLabels)
* ExtensionRatioMap (formerly known as LabelMaximumExtensionRatioMap)
* MaximumExtensionMap (formerly known as LabelMaximumExtensionMap)
* MaximumIntensityMap (formerly known as LabelMaximumIntensityMap)
* MaximumTouchingNeighborDistanceMap (formerly known as MaximumNeighborDistanceMap)
* MeanExtensionMap (formerly known as LabelMeanExtensionMap)
* MeanIntensityMap (formerly known as LabelMeanIntensityMap)
* MinimumIntensityMap (formerly known as LabelMinimumIntensityMap)
* MinimumTouchingNeighborDistanceMap (formerly known as MinimumNeighborDistanceMap)
* PixelCountMap (formerly known as LabelPixelCountMap)
* ProximalNeighborCountMap (formerly known as LabelProximalNeighborCountMap)
* ReadValuesFromMap (also known as CLIJx ReadIntensitiesFromMap)
* ReduceLabelsToCentroids (formerly known as ReduceLabelsToLabelledSpots)
* StandardDeviationIntensityMap (formerly known as LabelStandardDeviationIntensityMap)
* TouchingNeighborDistanceRangeRatioMap (formerly known as NeighborDistanceRangeRatioMap)

Furthermore, these functions in CLIJ2 were deprecated:
* DrawMeshBetweenNClosestLabels, use DrawMeshBetweenNNearestLabels instead

The following functions were moved from CLIJx to CLIJ2 without renaming. Thus, you can replace code like this
```
Ext.CLIJx_gammaCorrection(input, output, gamma);
```
with this:
```
Ext.CLIJ2_gammaCorrection(input, output, gamma);
```

* AverageDistanceOfNClosestNeighborsMap
* AverageNeighborDistanceMap
* Cosinus
* CylinderTransform
* Different
* DivideByGaussianBackground
* DivideScalarByImage
* DrawDistanceMeshBetweenTouchingLabels
* DrawMeshBetweenProximalLabels
* DrawMeshBetweenTouchingLabels
* EuclideanDistanceFromLabelCentroidMap
* ExcludeLabelsOutsideSizeRange
* ExtendedDepthOfFocusSobelProjection
* ExtendedDepthOfFocusTenengradProjection
* ExtendedDepthOfFocusVarianceProjection
* GammaCorrection
* GenerateNNearestNeighborsMatrix
* GenerateProximalNeighborsMatrix
* GreyscaleClosingBox
* GreyscaleClosingSphere
* GreyscaleOpeningBox
* GreyscaleOpeningSphere
* LabelOverlapCountMap
* LabelProximalNeighborCountMap
* LabelSurface
* MakeIsotropic
* MaskedVoronoiLabeling
* MaximumDistanceOfTouchingNeighbors
* MaximumOfNNearestNeighborsMap
* MaximumOfProximalNeighborsMap.java
* MeanOfNNearestNeighborsMap
* MeanOfProximalNeighborsMap
* MeanOfTouchingNeighborsMap
* MedianZProjectionMasked
* MergeTouchingLabels
* MinimumOfNNearestNeighborsMap
* MinimumOfProximalNeighborsMap
* MinimumOfTouchingNeighborsMap
* ModeOfNNearestNeighborsMap
* ModeOfProximalNeighborsMap
* ModeOfTouchingNeighbors
* ModeOfTouchingNeighborsMap
* OutOfIntensityRange
* PointIndexListToTouchMatrix
* Pull2DPointListAsRoi
* PullTile
* PullToResultsTableColumn
* PushArray2D
* PushAs
* PushTile
* ReadValuesFromPositions
* ReduceLabelsToLabelEdges
* ReslicePolar
* Similar
* Sinus
* SobelSliceBySlice
* SphereTransform
* StackToTiles
* StandardDeviationBox
* StandardDeviationOfNNearestNeighborsMap
* StandardDeviationOfProximalNeighborsMap
* StandardDeviationOfTouchingNeighborsMap
* StandardDeviationSphere.java
* SubStack
* Tenengrad
* TenengradSliceBySlice
* TouchingNeighborCountMap
* VarianceBox
* VarianceSphere
* VisualizeOutlinesOnOriginal
* VoronoiOtsuLabeling
* WithinIntensityRange
* ZPositionOfMaximumZProjections
* ZPositionOfMinimumZProjections
* ZPositionRangeProjections
* ZPositionProjections



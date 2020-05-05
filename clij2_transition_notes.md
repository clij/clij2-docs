# CLIJ - CLIJ2 transition guide
This document is under construction. Stay tuned.

CLIJ and CLIJ2 are fully compatible. You can run CLIJ and CLIJ2 command side by side. 
Thus, there is no immediate need to make the transtion and to change code.
However, support for CLIJ will run out in June 2021. 
Until then, code should be adapted to use CLIJ2 instead of CLIJ.

## API changes
The application programming interface (API) of CLIJ and CLIJ2 are different in some minor aspects. If you use one of the
following listed methods, you find guidance to transition from CLIJ to CLIJ2 here:

## maximumSphere, minimumSphere, maximumSliceBySliceSphere, minimumSliceBySliceSphere, meanSphere, meanSliceBySliceSphere, medianBox, medianSphere, MedianSliceBySliceBox and MedianSliceBySliceSphere 
For ImageJ macro users, nothing changes. 
Users who used the Java/Groovy/Jython API of these methods may have noticed that the API differs from the ImageJ Macro API:
These methods take kernel sizes as parameter and not radius:

```
kernel size = radius * 2 + 1
```

This API inconsistency has been fixed in CLIJ2. All methods take radus as parameter consistently in all APIs.

## meanIJ 
The method meanIJ was removed in CLIJ2 compared to CLIJ. Use meanSphere2D or meanSphere3D instead.

## maximumXYZProjection
The method maximumXYZProjetion doesn't exist in CLIJ2. Use [maximumXProjection](reference_maximumXProjection.md), [maximumYProjection](reference_maximumYProjection.md) and [maximumZProjection](reference_maximumZProjection.md) instead.

## resliceRadial 
[resliceRadial](reference_resliceRadial) has more parameters now. The documentation contains default values.

## resample, scale, translate, affineTransform
In CLIJ, transforms are mixed inverse transforms of the specified transforms. 
This has been streamlined in CLIJ2. In order to achieve correct transforms when switching from CLIJ to CLIJ2, 
translation vectors may have to be inverted:
```
translation_vector_CLIJ2 = translation_vector_CLIJ
```

Similarily, scaling factors have to be inverted:

```
scaling_factor_CLIJ2 = 1.0 / scaling_factor_CLIJ
```


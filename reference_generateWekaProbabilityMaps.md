## generateWekaProbabilityMaps
<img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_clijx_logo.png"/>

Applies a Weka model which was saved as OpenCL file. Train your model with trainWekaModel to save it as OpenCL file.
It takes a 3D feature stack and applies a pre-trained a Weka model to produce probability maps for all classes. 
Take care that the feature stack has been generated in the same way as for training the model!

### Usage in ImageJ macro
```
Ext.CLIJx_generateWekaProbabilityMaps(Image featureStack3D, Image probabilityMap3D_destination, String loadModelFilename);
```


### Usage in Java
```
// init CLIJ and GPU
import net.haesleinhuepf.clij2.CLIJ2;
import net.haesleinhuepf.clij.clearcl.ClearCLBuffer;
CLIJ2 clij2 = CLIJ2.getInstance();

// get input parameters
ClearCLBuffer featureStack3D = clij2.push(featureStack3DImagePlus);
probabilityMap3D_destination = clij.create(featureStack3D);
```

```
// Execute operation on GPU
clij2.generateWekaProbabilityMaps(clij, featureStack3D, probabilityMap3D_destination, loadModelFilename);
```

```
//show result
probabilityMap3D_destinationImagePlus = clij2.pull(probabilityMap3D_destination);
probabilityMap3D_destinationImagePlus.show();

// cleanup memory on GPU
clij2.release(featureStack3D);
clij2.release(probabilityMap3D_destination);
```


[Back to CLIJ documentation](https://clij.github.io/)

[Imprint](https://clij.github.io/imprint)

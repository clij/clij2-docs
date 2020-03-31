## trainWekaModelWithOptions
<img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_clijx_logo.png"/>

Trains a Weka model using functionality of Fijis Trainable Weka Segmentation plugin.
It takes a 3D feature stack (e.g. first plane original image, second plane blurred, third plane edge image)and trains a Weka model. This model will be saved to disc.
The given groundTruth image is supposed to be a label map where pixels with value 1 represent class 1, pixels with value 2 represent class 2 and so on. Pixels with value 0 will be ignored for training.

Default values for options are:
* trees = 200
* features = 2
* maxDepth = 0

### Usage in ImageJ macro
```
Ext.CLIJx_trainWekaModelWithOptions(Image featureStack3D, Image groundTruth2D, String saveModelFilename, Number trees, Number features, Number maxDepth);
```


### Usage in Java
```
// init CLIJ and GPU
import net.haesleinhuepf.clij2.CLIJ2;
import net.haesleinhuepf.clij.clearcl.ClearCLBuffer;
CLIJ2 clij2 = CLIJ2.getInstance();

// get input parameters
ClearCLBuffer featureStack3D = clij2.push(featureStack3DImagePlus);
ClearCLBuffer groundTruth2D = clij2.push(groundTruth2DImagePlus);
int trees = 10;
int features = 20;
int maxDepth = 30;
```

```
// Execute operation on GPU
CLIJxWeka2 resultTrainWekaModelWithOptions = clij2.trainWekaModelWithOptions(clij, featureStack3D, groundTruth2D, saveModelFilename, trees, features, maxDepth);
```

```
//show result
System.out.println(resultTrainWekaModelWithOptions);

// cleanup memory on GPU
clij2.release(featureStack3D);
clij2.release(groundTruth2D);
```


[Back to CLIJ documentation](https://clij.github.io/)

[Imprint](https://clij.github.io/imprint)

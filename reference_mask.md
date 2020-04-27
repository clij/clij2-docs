## mask
<img src="images/mini_clij1_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/>

Computes a masked image by applying a mask to an image. All pixel values x of image X will be copied
to the destination image in case pixel value m at the same position in the mask image is not equal to 
zero.

<pre>f(x,m) = (x if (m != 0); (0 otherwise))</pre>

### mask often follows after
* <a href="reference_threshold">threshold</a> (2)
* <a href="reference_onlyzeroOverwriteMaximumDiamond">onlyzeroOverwriteMaximumDiamond</a> (2)
* <a href="reference_detectMaximaBox">detectMaximaBox</a> (2)
* <a href="reference_erodeBox">erodeBox</a> (2)


### mask is often followed by
* <a href="reference_replaceIntensities">replaceIntensities</a> (2)
* <a href="reference_labelSpots">labelSpots</a> (2)


### Usage in ImageJ macro
```
Ext.CLIJ2_mask(Image source, Image mask, Image destination);
```


### Usage in Java
<details>
<summary>
clij2.mask(source, mask, destination);
</summary>
```
// init CLIJ and GPU
import net.haesleinhuepf.clij2.CLIJ2;
import net.haesleinhuepf.clij.clearcl.ClearCLBuffer;
CLIJ2 clij2 = CLIJ2.getInstance();

// get input parameters
ClearCLBuffer source = clij2.push(sourceImagePlus);
ClearCLBuffer mask = clij2.push(maskImagePlus);
destination = clij2.create(source);
```

```
// Execute operation on GPU
clij2.mask(source, mask, destination);
```

```
//show result
destinationImagePlus = clij2.pull(destination);
destinationImagePlus.show();

// cleanup memory on GPU
clij2.release(source);
clij2.release(mask);
clij2.release(destination);
```
</details>


### Usage in Matlab
<details>
<summary>
clij2.mask(source, mask, destination);
</summary>
```
% init CLIJ and GPU
clij2 = init_clatlab();

% get input parameters
source = clij2.pushMat(source_matrix);
mask = clij2.pushMat(mask_matrix);
destination = clij2.create(source);
```

```
% Execute operation on GPU
clij2.mask(source, mask, destination);
```

```
% show result
destination = clij2.pullMat(destination)

% cleanup memory on GPU
clij2.release(source);
clij2.release(mask);
clij2.release(destination);
```
</details>


### Usage in Icy
<details>
<summary>
clij2.mask(source, mask, destination);
</summary>
```
// init CLIJ and GPU
importClass(net.haesleinhuepf.clicy.CLICY);
importClass(Packages.icy.main.Icy);

clij2 = CLICY.getInstance();

// get input parameters
source_sequence = getSequence();source = clij2.pushSequence(source_sequence);
mask_sequence = getSequence();mask = clij2.pushSequence(mask_sequence);
destination = clij2.create(source);
```

```
// Execute operation on GPU
clij2.mask(source, mask, destination);
```

```
// show result
destination_sequence = clij2.pullSequence(destination)
Icy.addSequence(destination_sequence
// cleanup memory on GPU
clij2.release(source);
clij2.release(mask);
clij2.release(destination);
```
</details>




### Example notebooks
<a href="https://clij.github.io/clij2-docs/md/tribolium_morphometry"><img src="images/language_macro.png" height="20"/></a> [tribolium_morphometry](https://clij.github.io/clij2-docs/md/tribolium_morphometry)  




### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/intensity_per_label.ijm"><img src="images/language_macro.png" height="20"/></a> [intensity_per_label.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/intensity_per_label.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/tribolium_morphometry.ijm"><img src="images/language_macro.png" height="20"/></a> [tribolium_morphometry.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/tribolium_morphometry.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/jython/countNeighbors3D.py"><img src="images/language_jython.png" height="20"/></a> [countNeighbors3D.py](https://github.com/clij/clij2-docs/blob/master/src/main/jython/countNeighbors3D.py)  
<a href="https://github.com/clij/clijpy/blob/master/python/spot_detection.py"><img src="images/language_python.png" height="20"/></a> [spot_detection.py](https://github.com/clij/clijpy/blob/master/python/spot_detection.py)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

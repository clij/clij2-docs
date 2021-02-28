## customOperation
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_empty_logo.png"/>

By Robert Haase, Matthias Arzt

Executes a custom operation wirtten in OpenCL on a custom list of images. 

All images must be created before calling this method. Image parameters should be handed over as an array with parameter names and image names alternating, e.g.

Ext.CLIJ2_customOperation(..., ..., newArray("image1", "blobs.gif", "image2", "Processed_blobs.gif"))

In the custom code, you can use the predefined variables x, y and z to deal with coordinates.
You can for example use it to access pixel intensities like this:

float value = READ_IMAGE(image, sampler, POS_image_INSTANCE(x, y, z, 0)).x;
WRITE_IMAGE(image, POS_image_INSTANCE(x, y, z, 0), CONVERT_image_PIXEL_TYPE(value));

Note: replace `image` with the given image parameter name. You can furthermore use custom function to organise code in the global_code parameter. In OpenCL they may look like this:

inline float sum(float a, float b) {
    return a + b;
}


Availability: Available in Fiji by activating the update sites clij and clij2.
This function is part of clij2_-2.2.0.19.jar.

### Usage in ImageJ macro
```
Ext.CLIJ2_customOperation(String operation_code, String global_code, Array image_parameters);
```




### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/customOperation.ijm"><img src="images/language_macro.png" height="20"/></a> [customOperation.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/customOperation.ijm)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

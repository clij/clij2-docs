## greyLevelAtttributeFiltering
<img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_clijx_logo.png"/>

By Pradeep Rajasekhar and Robert Haase

Inspired by Grayscale attribute filtering from MorpholibJ library by David Legland & Ignacio Arganda-Carreras.

This plugin will remove components in a grayscale image based on user-specified area (for 2D: pixels) or volume (3D: voxels).
For each gray level specified in the number of bins, binary images will be generated, followed by exclusion of objects (labels)
below a minimum pixel count.
All the binary images for each gray level are combined to form the final image. The output is a grayscale image, where bright objects
below pixel count are removed.
It is recommended that low values be used for number of bins, especially for large 3D images, or it may take long time.

Category: [Filter](https://clij.github.io/clij2-docs/reference__filter)

### Usage in ImageJ macro
```
Ext.CLIJx_greyLevelAtttributeFiltering(Image source, Image destination, Number number_of_bins, Number minimum_pixel_count);
```


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

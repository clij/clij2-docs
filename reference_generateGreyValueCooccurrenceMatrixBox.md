## generateGreyValueCooccurrenceMatrixBox
<img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_empty_logo.png"/>

Takes an image and an intensity range to determine a grey value co-occurrence matrix.

For determining which pixel intensities are neighbors, the box neighborhood is taken into account.
Pixels with intensity below minimum of the given range are considered having the minimum intensity.
Pixels with intensity above the maximimum of the given range are treated analogously.
The resulting co-occurrence matrix contains probability values between 0 and 1.

Category: [Measurements](https://clij.github.io/clij2-docs/reference__measurement)

### Usage in ImageJ macro
```
Ext.CLIJx_generateGreyValueCooccurrenceMatrixBox(Image integer_image, Image grey_value_cooccurrence_matrix_destination, Number min_grey_value, Number max_grey_value);
```


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

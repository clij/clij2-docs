## getSorensenDiceCoefficient
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/>

Determines the overlap of two binary images using the Sorensen-Dice coefficent. 

A value of 0 suggests no overlap, 1 means perfect overlap.
The Sorensen-Dice coefficient is saved in the colum 'Sorensen_Dice_coefficient'.
Note that the Sorensen-Dice coefficient s can be calculated from the Jaccard index j using this formula:
<pre>s = f(j) = 2 j / (j + 1)</pre>

Categories: [Measurements](https://clij.github.io/clij2-docs/reference__measurement), [Binary](https://clij.github.io/clij2-docs/reference__binary)

Availability: Available in Fiji by activating the update sites clij and clij2.
This function is part of clij2_-2.2.1.0.jar.

### getSorensenDiceCoefficient often follows after
* <a href="reference_automaticThreshold">automaticThreshold</a> (2)


### Usage in ImageJ macro
```
Ext.CLIJ2_getSorensenDiceCoefficient(Image source1, Image source2, Number sorensen_dice_coefficient);
```




### Example notebooks
<a href="https://clij.github.io/clij2-docs/md/measure_overlap"><img src="images/language_macro.png" height="20"/></a> [measure_overlap](https://clij.github.io/clij2-docs/md/measure_overlap)  




### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/measure_overlap.ijm"><img src="images/language_macro.png" height="20"/></a> [measure_overlap.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/measure_overlap.ijm)  


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

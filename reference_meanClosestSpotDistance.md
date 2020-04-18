## meanClosestSpotDistance
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/>

Determines the distance between pairs of closest spots in two binary images. 

Takes two binary images A and B with marked spots and determines for each spot in image A the closest spot in image B. Afterwards, it saves the average shortest distances from image A to image B as 'mean_closest_spot_distance_A_B' and from image B to image A as 'mean_closest_spot_distance_B_A' to the results table. The distance between B and A is only determined if the `bidirectional` checkbox is checked.

### Usage in ImageJ macro
```
Ext.CLIJ2_meanClosestSpotDistance(Image spotsA, Image spotsB, Boolean bidirectional);
```


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

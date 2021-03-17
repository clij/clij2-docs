## localThresholdSauvola
<img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_empty_logo.png"/>

By Peter Haub (based on work by G. Landini and Fiji developers)

Computes the local threshold based on 
 Auto Local Threshold (Sauvola method) see: https://imagej.net/Auto_Local_Threshold 
 see code in: 
 https://github.com/fiji/Auto_Local_Threshold/blob/master/src/main/java/fiji/threshold/Auto_Local_Threshold.java 
 Formular: 
<pre>t = mean * (1.0 + k_value * (stddev / r_value - 1.0)) </pre>

Category: [Filter](https://clij.github.io/clij2-docs/reference__filter)

Availability: Available in Fiji by activating the update sites clij and clij2.
This function is part of clijx_-0.30.1.22.jar.

### Usage in ImageJ macro
```
Ext.CLIJx_localThresholdSauvola(Image source, Image destination, Number radius, Number par1, Number par2);
```


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

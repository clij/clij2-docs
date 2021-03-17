## localThresholdPhansalkar
<img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_empty_logo.png"/>

By Peter Haub, Robert Haase

Computes the local threshold (Fast version) based on 
 Auto Local Threshold (Phansalkar method) see: https://imagej.net/Auto_Local_Threshold 
 see code in: 
 https://github.com/fiji/Auto_Local_Threshold/blob/c955dc18cff58ac61df82f3f001799f7ffaec5cb/src/main/java/fiji/threshold/Auto_Local_Threshold.java#L636 
 Formulary: 
<pre>t = mean * (1 + p * exp(-q * mean) + k * ((stdev / r) - 1))</pre>

Category: [Filter](https://clij.github.io/clij2-docs/reference__filter)

Availability: Available in Fiji by activating the update sites clij and clij2.
This function is part of clijx_-0.30.1.22.jar.

### Usage in ImageJ macro
```
Ext.CLIJx_localThresholdPhansalkar(Image source, Image destination, Number radius, Number k, Number r);
```


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

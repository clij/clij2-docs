## applyWekaToTable
<img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_empty_logo.png"/>

Applies a Weka model using functionality of Fijis Trainable Weka Segmentation plugin. 

It takes a Results Table, sorts its columns by name alphabetically and uses it as extracted features (rows correspond to feature vectors) and applies a pre-trained a Weka model. Take care that the table has been generated in the sameway as for training the model!

Categories: [Segmentation](https://clij.github.io/clij2-docs/reference__segmentation), Machine Learning

Availability: Available in Fiji by activating the update sites clij and clij2.
This function is part of clijx-weka_-0.30.2.0.jar.

### Usage in ImageJ macro
```
Ext.CLIJx_applyWekaToTable(String predictionColumnName, String loadModelFilename);
```


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

## trainWekaFromTable
<img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_clijx_logo.png"/><img src="images/mini_empty_logo.png"/>

Trains a Weka model using functionality of Fijis Trainable Weka Segmentation plugin. 

It takes the given Results Table, sorts its columns alphabetically as extracted features (rows correspond to feature vectors) and a given column name containing the ground truth to train a Weka model. This model will be saved to disc.
The given groundTruth column is supposed to be numeric with values 1 represent class 1,  value 2 represent class 2 and so on. Value 0 will be ignored for training.

Default values for options are:
* trees = 200
* features = 2
* maxDepth = 0

Categories: [Segmentation](https://clij.github.io/clij2-docs/reference__segmentation), Machine Learning

Availability: Available in Fiji by activating the update sites clij and clij2.
This function is part of clijx-weka_-0.30.2.0.jar.

### Usage in ImageJ macro
```
Ext.CLIJx_trainWekaFromTable(String groundTruthColumnName, String saveModelFilename, Number trees, Number features, Number maxDepth);
```


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

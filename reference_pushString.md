## pushString
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_empty_logo.png"/>

Converts an string to an image. 

The formatting works with double line breaks for slice switches, single line breaks for y swithces and 
spaces for x. For example this string is converted to an image with width=4, height=3 and depth=2:

1 2 3 4
5 6 7 8
9 0 1 2

3 4 5 6
7 8 9 0
1 2 3 4


### pushString is often followed by
* <a href="reference_generateBinaryOverlapMatrix">generateBinaryOverlapMatrix</a> (3)
* <a href="reference_generateJaccardIndexMatrix">generateJaccardIndexMatrix</a> (3)


### Usage in ImageJ macro
```
Ext.CLIJ2_pushString(Image destination, String input, Number width, Number height, Number depth);
```


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

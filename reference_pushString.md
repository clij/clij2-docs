## pushString
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/>

Converts an string to an image. 

The formatting works with double line breaks for slice switches, single line breaks for y swithces and 
spaces for x. For example this string is converted to an image with width=4, height=3 and depth=2:

1 2 3 4
5 6 7 8
9 0 1 2

3 4 5 6
7 8 9 0
1 2 3 4


Availability: Available in Fiji by activating the update sites clij and clij2.
This function is part of clij2_-2.2.1.0.jar.

### Usage in ImageJ macro
```
Ext.CLIJ2_pushString(Image destination, String input, Number width, Number height, Number depth);
```


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

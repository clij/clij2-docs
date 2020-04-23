

# Maximum Projections
Author: Robert Haase
        April 2020

[Source](https://github.com/clij/clij2-docs/tree/master/src/main/macro/maximumProjection.ijm)


This macro shows how maximum projection 
can be done in the GPU.


## Start
Let's clean up first and load some 3D example data.

```java
run ("Close All");

// Get test data
run("T1 Head (2.4M, 16-bits)");

```
<a href="image_1587652763505.png"><img src="image_1587652763505.png" width="250" alt="t1-head.tif"/></a>

We then initialize the GPU and send the image to its memory.

```java
run("CLIJ2 Macro Extensions", "cl_device=");
Ext.CLIJ2_clear();

// push images to GPU
input = getTitle();
Ext.CLIJ2_push(input);

// CleanUp ImageJ
close();
```

## Maximum projecitons
We can use the classical maximum intensity projection in Z:

```java
Ext.CLIJ2_maximumZProjection(input, maximum_z_projected);
Ext.CLIJ2_pull(maximum_z_projected);
```
<a href="image_1587652763652.png"><img src="image_1587652763652.png" width="250" alt="CLIJ2_maximumZProjection_result214"/></a>

But we can also project in X and Y direction:

```java
Ext.CLIJ2_maximumYProjection(input, maximum_y_projected);
Ext.CLIJ2_pull(maximum_y_projected);

Ext.CLIJ2_maximumXProjection(input, maximum_x_projected);
Ext.CLIJ2_pull(maximum_x_projected);
```
<a href="image_1587652763769.png"><img src="image_1587652763769.png" width="250" alt="CLIJ2_maximumYProjection_result215"/></a>
<a href="image_1587652763781.png"><img src="image_1587652763781.png" width="250" alt="CLIJ2_maximumXProjection_result216"/></a>

Furthermore, we can frame the range from which the projection is drawn:

```java
min_z = 90;
max_z = 100;
Ext.CLIJ2_maximumZProjectionBounded(input, bound_projection, min_z, max_z);
Ext.CLIJ2_pull(bound_projection);
```
<a href="image_1587652763849.png"><img src="image_1587652763849.png" width="250" alt="CLIJ2_maximumZProjectionBounded_result217"/></a>

Cleanup by the end

```java
Ext.CLIJ2_clear();
```



```
```

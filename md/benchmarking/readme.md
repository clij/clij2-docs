

# Measure speedup (Benchmarking)

This macro shows how to measure performance of image processing in ImageJ on the CPU 
and CLIJ2 on the GPU.

Author: Robert Haase
 
        December 2018

Let's get some test data first

```java
run("T1 Head (2.4M, 16-bits)");
input = getTitle();

```
<a href="image_1587405238792.png"><img src="image_1587405238792.png" width="250" alt="t1-head.tif"/></a>

## Measure processing time on the CPU

We start with measuring processing time of standard ImageJ operations which are executed 
on the central processing unit (CPU). Note that we execute this operation several times
to get some insight on different processing times when calling the same operation 
subsequently. Especially the first exection could be slower because of the 
[warm-up effect](https://stackoverflow.com/questions/36198278/why-does-the-jvm-require-warmup).
We measure the processing time by saving the current time in the variable `time` before 
processing and printing `(getTime() - time)` after processing:

```java

// Local mean filter in CPU
for (i = 1; i <= 10; i++) {
	time = getTime();
	run("Mean 3D...", "x=3 y=3 z=3");
	print("CPU mean filter no " + i + " took " + (getTime() - time) + " msec");
}
```
<pre>
> CPU mean filter no 1 took 2371 msec
> CPU mean filter no 2 took 2570 msec
> CPU mean filter no 3 took 2614 msec
> CPU mean filter no 4 took 2757 msec
> CPU mean filter no 5 took 2964 msec
> CPU mean filter no 6 took 3093 msec
> CPU mean filter no 7 took 3064 msec
> CPU mean filter no 8 took 3125 msec
> CPU mean filter no 9 took 3713 msec
> CPU mean filter no 10 took 3777 msec
</pre>
<a href="image_1587405268865.png"><img src="image_1587405268865.png" width="250" alt="t1-head.tif"/></a>

## Measure processing time on the GPU
We perform the same strategy to measure processing time on the GPU. As the performance of
GPU-accelerated processing also depends on the data transfer time between CPU and GPU memory,
we also measure the time `push()` and `pull()` commands take.

Let's start with initializin the GPU.

```java
run("CLIJ Macro Extensions", "cl_device=");
Ext.CLIJ2_clear();

```

##
# Push images to GPU

```java
time = getTime();
Ext.CLIJ2_push(input);
print("Pushing one image to the GPU took " + (getTime() - time) + " msec");

// cleanup ImageJ
run("Close All");

```
<pre>
> Pushing one image to the GPU took 41 msec
</pre>

### Process images on the GPU using CLIJ2

```java
// Local mean filter in GPU
for (i = 1; i <= 10; i++) {
	time = getTime();
	Ext.<a href="https://clij.github.io/clij2-docs/reference_mean3DBox">CLIJ2_mean3DBox</a>(input, blurred, 3, 3, 3);
	print("CLIJ2 GPU mean filter no " + i + " took " + (getTime() - time) + " msec");
}
```
<pre>
> CLIJ2 GPU mean filter no 1 took 11 msec
> CLIJ2 GPU mean filter no 2 took 8 msec
> CLIJ2 GPU mean filter no 3 took 8 msec
> CLIJ2 GPU mean filter no 4 took 13 msec
> CLIJ2 GPU mean filter no 5 took 11 msec
> CLIJ2 GPU mean filter no 6 took 11 msec
> CLIJ2 GPU mean filter no 7 took 12 msec
> CLIJ2 GPU mean filter no 8 took 12 msec
> CLIJ2 GPU mean filter no 9 took 11 msec
> CLIJ2 GPU mean filter no 10 took 12 msec
</pre>

### Compare CLIJ2 with its predecessor, [CLIJ](https://www.nature.com/articles/s41592-019-0650-1)

```java
// Local mean filter in GPU
for (i = 1; i <= 10; i++) {
	time = getTime();
	Ext.CLIJ_mean3DBox(input, blurred, 3, 3, 3);
	print("CLIJ GPU mean filter no " + i + " took " + (getTime() - time) + " msec");
}
```
<pre>
> CLIJ GPU mean filter no 1 took 12 msec
> CLIJ GPU mean filter no 2 took 12 msec
> CLIJ GPU mean filter no 3 took 11 msec
> CLIJ GPU mean filter no 4 took 12 msec
> CLIJ GPU mean filter no 5 took 14 msec
> CLIJ GPU mean filter no 6 took 11 msec
> CLIJ GPU mean filter no 7 took 9 msec
> CLIJ GPU mean filter no 8 took 8 msec
> CLIJ GPU mean filter no 9 took 7 msec
> CLIJ GPU mean filter no 10 took 8 msec
</pre>


### Pull result image from the GPU

```java

time = getTime();
Ext.CLIJ2_pull(blurred);

print("Pulling one image from the GPU took " + (getTime() - time) + " msec");

```
<pre>
> Pulling one image from the GPU took 57 msec
</pre>
<a href="image_1587405269287.png"><img src="image_1587405269287.png" width="250" alt="CLIJ2_mean3DBox_result76"/></a>

Cleanup GPU 
by the end.

```java
Ext.CLIJ2_clear();
```



```
```

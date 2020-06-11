
# CLIJ2 - GPU-accelerated image processing with ImageJ and Java 

CLIJ2 is a Java library and a ImageJ/Fiji plugin allowing you to run OpenCL GPU accelerated code from Java.
It also comes with a [list of predefined operations](https://clij.github.io/clij2-docs/reference) 
mostly running under the hood in OpenCL.

## High level API
The high level API of CLIJ2 becomes accessible from your Java project by 
[linking its maven dependency](https://clij.github.io/clij2-docs/dependingViaMaven). 
Furthermore, it can be used from ImageJs scripting languages such as Groovy and Jython from Fijis script editor. 
Therefore, the [clij and clij2 update sites need to be activated](https://clij.github.io/clij2-docs/installationInFiji).

To get started, you need a `clij2` variable containing the CLIJ2 instance to access the GPU. 
The following example shows how to do this from ImageJ Jython:

```python
from net.haesleinhuepf.clij2 import CLIJ2;

clij2 = CLIJ2.getInstance();
```

Afterwards, you can convert `ImagePlus` objects to ClearCL objects which makes them accessible on the OpenCL device:

```python
imageInput = clij2.push(imp);
```

Furthermore, you can create images, for example with the same size as a given one:
```python
imageOutput = clij2.create(imageInput);
```

Alternatively, create an image with a given size and a given type:

```python
imageOutput = clij2.create([imageInput.getWidth(), imageInput.getHeight()], imageInput.getNativeType());

# or
imageOutput = clij2.create([10, 20, 30], clij2.Float);
```

Inplace operations are not well supported by OpenCL 1.2. 
Thus, after creating two images, you can call an operation taking the first image and filling the pixels of second image with data:
```python

clij2.maximumZProjection(imageInput, imageOutput);
```

Then, use the `show()` method of `CLIJ2` to get the image out of the GPU back to view in ImageJ:

```python
clij2.show(imageOutput, "output");
```

You can also get the result image as ImagePlus:

```python
result = clij2.pull(imageOutput);
```

A list of all `clij2....` methods with example code is available for 
[ImageJ Macro, Java, JavaScript and Matlab](https://clij.github.io/clij2-docs/reference).

## Low level API

In order to call your own `kernel.cl` files, use the `clij2.execute()` method. Example code (Jython):

```python
# initialize the GPU 
clij2 = CLIJ2.getInstance();

# convert ImageJ image to CL images (ready for the GPU)
inputCLBuffer = clij2.push(imp);
outputCLBuffer = clij2.create(inputCLBuffer); # allocate memory for result image

# downsample the image stack using ClearCL / OpenCL
clij2.execute(DownsampleXYbyHalfTask, "kernels/downsampling.cl", "downsample_xy_by_half_nearest", inputCLBuffer.getDimensions(), inputCLBuffer.getDimensions(), {"src":inputCLBuffer, "dst":outputCLBuffer});

# convert the result back to imglib2 and show it
result = clij2.pull(outputCLBuffer);
result.show();

# free memory on the GPU - needs to be done explicitly
inputCLBuffer.close();
outputCLBuffer.close();
```
More examples can be found in the 
[beanshell](https://github.com/clij/clij2-docs/blob/master/src/main/beanshell/), 
[groovy](https://github.com/clij/clij2-docs/blob/master/src/main/groovy/),
[javascript](https://github.com/clij/clij2-docs/blob/master/src/main/javascript/), 
[jython](https://github.com/clij/clij2-docs/blob/master/src/main/jython/) 
and 
[java](https://github.com/clij/clij2-docs/blob/master/src/main/java/) directories.

## OpenCL Kernel calls with CLIJ.execute()
The execute function asks for three or four parameters
```
clij2.execute(<Class>, "filename_open.cl", "kernelfunction", outout_image_size, global_size, {"src":image, "dst":image, "more":5, "evenmore":image})

clij2.execute("absolute/or/relative/path/filename_open.cl", "kernelfunction", output_image_size, global_size, {"src":image, "dst":image, "more":5, "evenmore":image})
```
* An optional class file as an anchor to have a point for where to start
  searching for the program file (second parameter).
* The open.cl program file will be searched for in the same folder where the
  class (first parameter) is defined. In the first example above, this class
  comes with the dependency FastFuse. Alternatively, an absolute path can be
  proveded if there is no class given as first parameter. In case a relative
  path is given, it must be relative from the current dir of Fiji.
* The name of the kernel function defined in the program file
* Output image size
* Global size over which tasks are executed; usually equal to output image size
* A dictionary with all the parameters of the kernel function, such as
  "src" and "dst". It is recommended to have at least a "src" and a "dst"
  parameter, because CLIJ derives image data types and global space from
  these parameters.

## Type agnostic OpenCL
As jython is a type-agnostic programming language, CLIJ targets bringing the same convenience to OpenCL as well. However, in order to make the executed OpenCL programs image pixel type agnostic, some conventions must be introduced. The conventions are all optional. OpenCL programmers who know how to pass images of a defined type to OpenCL programs using the correct access functions can skip this section.

Instead of using functions like `read_imagef()`, `write_imagef()`, `write_imageui()` etc.,
it is recommended to use `WRITE_IMAGE()` and `READ_IMAGE_()` function calls. These function
calls will be replaced during runtime with the function accessing the correct image data
type. CLIJ will then for example detect the type of an image parameter called
"src_image" and replace all calls to `READ_IMAGE()` with the respective call to
`image_readui()` or `image_readf()` calls. Read more about the [CLIJ2 OpenCL dialect](https://github.com/clEsperanto/clij-opencl-kernels/blob/master/README.md).


[Back to CLIJ documentation](https://clij.github.io/)

[Imprint](https://clij.github.io/imprint)

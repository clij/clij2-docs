# Frequently asked questions

<a name="supported_gpus"></a>
## Which GPUs are supported by CLIJ?
CLIJ was successfully tested on a variety of Intel, Nvidia and AMD GPUs. See the 
[full list of tested systems](https://clij.github.io/clij-docs/testedsystems)

<a name="buy_gpus"></a>
## Do I have to buy a dedicated GPU in order to benefit from GPU-acceleration using CLIJ?
No. Common Intel Core and AMD Ryzen processors contain built-in GPUs which are compatible with CLIJ. 
However, as dedicated graphics cards come with their own GDDR-memory, additional speed-up can be gained by utilizing dedicated GPUs though.

<a name="supported_os"></a>
## With which operating systems is CLIJ compatible?
CLIJ was successfully tested on Windows 10, MacOS, Fedora linux and Ubuntu linux. 
Current GPU and OpenCL drivers must be installed.

<a name="windows78"></a>
## Are Windows 7 and 8 supported?
Maybe. As Windows 7 and 8 were discontinued before the first CLIJ release, we didn't test it. 
Theoretically, both systems support OpenCL and GPU vendors provide drivers for it. 
Thus, depending on the vendor, it mike work without issues. 
However, we had reports that [serious crashes happened on Windows 7 systems with several different GPUs](https://forum.image.sc/t/clij2-beta-testing-call-for-testers/37911/20).

<a name="windows_server"></a>
## Is using remote access to Windows Server supported?
Yes, if the GPU-configuration allows shared usage.
There have been [reports of failing CLIJ initialization on Windows Server 2019](https://forum.image.sc/t/clij-is-not-running-on-windows-server-2019-quadro-rtx-8000/50645/5) 
when multiple people can access it remotely via the "Remote Desktop Session Host". 
A potential solution is to replace the Java Runtime Environment that is delivered with Fiji. 

* Delete the "java" folder inside your Fiji.app directory (or move it out if this directory if you want to keep a copy).

Then there are 2 options for the replacement of the Java Runtime Environment 

### Option 1 : Use Oracle Java
* Install a current [Java version](https://java.com/en/download/help/download_options.html)
* Set the environment variable "JAVA_HOME" (see also [ImageJ FAQ](https://imagej.net/Frequently_Asked_Questions.html#How_do_I_launch_ImageJ_with_a_different_version_of_Java.3F) ) in the Control Panel › System and Security › System › Advanced Settings › Advanced › Environment Variables. System-administrator priviledges may be necessary if you want this to work for everyone using the Windows Server.

Thanks to Thomas Zobel for [finding this out](https://forum.image.sc/t/clij-is-not-running-on-windows-server-2019-quadro-rtx-8000/50645/13)!

### Option 2 : Use OpenJDK
This second option is similar but use a combination of 2 Java JDK from [AdoptOpenJDK](https://adoptopenjdk.net/).  
See the [original solution on the forum](https://forum.image.sc/t/clij-is-not-running-on-windows-server-2019-quadro-rtx-8000/50645/42).

- first install the OpenJDK 16 (Hotspot) 

- Then install the OpenJDK 8 and tick the option "set JAVA_HOME" in the installer

- Check your system environment variables *Control Panel › System and Security › System › Advanced Settings › Advanced › Environment Variables*
1) `JAVA_HOME` should be like *C:\Program Files\AdoptOpenJDK\jdk-8.0.292.10-hotspot\*
2) Remove the entries related to the OpenJDK 16 from the `Path` variable

- In the Fiji.app directory, if you don't have an ImageJ.cfg file then start Fiji and run the *Edit > Options > Memory and Threads* menu, which creates it.  
You can cancel/close the window. The file should have been created. Close Fiji

- Edit ImageJ.cfg with a text editor

- Replace the second line which was something like *bin/jre/javaw.exe*  
with the equivalent from the OpenJDK 16, which should be something like  
*C:\Program Files\AdoptOpenJDK\jdk-16.0.0.36-hotspot\bin\javaw.exe*  
Importantly dont put quotes " " around this file path.  
Save the file and close it.  

- You can now start Fiji and test CLIJ


<a name="optimal_performance"></a>
## How can I achieve optimal performance using CLIJ?
In order to exploit GPU-accelerated image processing, one should
* Run as many operations as possible in a block without back and forth pulling/pushing image data to/from GPU memory.
* Process images larger than 10 MB (rule of thumb, depends on actual CPU/GPU hardware). Background: Image processing on the CPU can be pretty fast if the accessed memory is smaller than the cache of the CPU. When processing exceeds this cache size, using GPU might become beneficial.
* Process many images of the same size and type subsequently, because in that way compiled GPU-code can be reused.
* Reuse memory. Releasing and allocating memory takes time. Try to reuse memory if possible.
* Use a dedicated graphics card. When deciding for the right GPU, check the memory bandwidth. Image processing is usually memory-bound. The faster the memory access, the faster images can be processed. The computing power / clock rate of the GPU and number of compute cores is of secondary interest.
* Some CLIJ marked with "Box" in their name filters are implemented separable (Gaussian blur, minimum, maximum, mean filters). Separable filters are faster than others (e.g. marked with "Sphere").
* Further speedup can be achieved by combining filters on OpenCL kernel level. This means implementing OpenCL kernels containing whole workflows. This custom OpenCL code can be distributed as custom CLIJ plugin. A plugin template can be found here: https://github.com/clij/clij-plugin-template/

<a name="how_to_measure_speedup"></a>
## How can I measure the speedup of my workflows?
The simplest way for measuring the speedup of workflows is using time measurements before and after execution, e.g. in ImageJ macro:

```
time = getTime(); // gives current time in milliseconds
// ...
// my workflow
// ...
print("Processing the workflow took " + (getTime() - time) + " msec"));
```

However, in order to make these measurements reliable, some hints shall be given:
* Measure the timing of execution in a loop several times. The first execution(s) may be slower than subsequent executions because of so called _warmup_ effects.
* Exclude file input/output from the time measurements to exclude hard drive read/write speed from the performance benchmarking of your workflow.
* Also measure the similarity of the ImageJ and CLIJ workflows results. For example: Some CLIJ_*Box filters are potentially much faster than CLIJ_*Sphere filters, which are more similar to ImageJs filters. In this case, performance can be gained by paying with reduced workflow result similarity.

ImageJ macros benchmarking CPU/GPU performance can be found 
[here](https://github.com/clij/clij-docs/blob/master/src/main/macro/benchmarking.ijm) 
 and 
[here](https://github.com/clij/clij-benchmarking/tree/master/src/main/macro_benchmarking_workflow)

For more professional benchmarking, we recommend the OpenJDK Java Microbenchmark Harness (JMH). As the name suggests, this involves Java programming. You find more details 
[here](https://openjdk.java.net/projects/code-tools/jmh/)

To give an overview, some of CLIJs operations have been 
[benchmarked with JMH](https://github.com/clij/clij-benchmarking-jmh)


<a name="compatibility_imagej"></a>
## Is CLIJ compatible with ImageJ without Fiji?
With some limitations, yes. You find details and installation instructions 
[here](https://github.com/clij/clij-legacy/)

<a name="thread_safe"></a>
## Is CLIJ thread safe?
If you use CLIJ from ImageJ macro, you cannot execute it in parallel from several threads. 
If you use CLIJ from any other programming language, please use one CLIJ instance per thread.
By using multiple threads in combination with multiple CLIJ instances, you can also [execute operations on multiple graphics cards](https://github.com/clij/clij-docs/blob/master/src/main/jython/multi_GPU_demo.py) at a time.

<a name="memory_reuse"></a>
## Does reusing memory bring additional speed-up?
Yes. When processing images of the same size and type, it is recommended to reuse memory instead of releasing memory and reallocating memory in every iteration. An example macro demonstrating this can be found 
[here](https://github.com/clij/clij-docs/blob/master/src/main/macro/memory_reuse_versus_reallocation.ijm)

<a name="result_comparibility_imagej"></a>
## Are results of CLIJ filters expected to be exactly the same as when using ImageJ?
No. While algorithms on the CPU can make use of double-precision, common GPUs only support single precision for floating point numbers. Furthermore, following priorities were set while developing CLIJs filters:
* Mathematical correctness
* Consistency, e.g. results in 2D and 3D should be reasonably similar
* Simplicity of code to ease maintenance
* Performance
* Similarity of results generated with ImageJ

For example, the minimum filter of ImageJ takes different neighborhoods into account when being applied in 2D and 3D. CLIJs filters are consistent in 2D and 3D. Thus, results may differ between ImageJ and CLIJ as shown in Figure 1.
![Image](images/mean_filter_comparison_r1.png)
Figure 1: Comparing CLIJs mean filter (center) and ImageJs mean filter (right) in 2D (top) and 3D (bottom). The result can be reproduced by running the 
[this example macro](https://github.com/clij/clij-docs/blob/master/src/main/macro/mean_detailed_comparison_IJ_CLIJ.ijm)
 with radius = 1:

<a name="image_edge_handling"></a>
## Which pixel values does CLIJ take into account when processing edge pixels of the image?
CLIJ in general uses the strategy `clamp to edge` assuming pixels outside the image have the same pixel value as the closest border pixel of the image. For transforms such as rotation, translation, scaling, and affine transforms, 'zero-padding' is applied assuming pixels having value 0 out of the image.

<a name="physical_units"></a>
## Does CLIJ take physical pixel units into account?
No. All numeric spatial parameters in CLIJ such as radius and sigma are always entered in pixels. There is no operation in CLIJ which makes use of any physical units.

<a name="pixel_indexing"></a>
## Are pixel positions 0- or 1-indiced?
Pixel coordinates in X, Y and Z are zero-based indiced.

<a name="multi_channels"></a>
## Are multi-channel images and timelapse data supported by CLIJ?
Not directly. CLIJ supports two and three dimensional images. 
If the third dimension represents channels or frames, these images can be processed using CLIJs 3D filters. 
In order to process 4D or 5D images, it is recommended to split them into 3D blocks.
There are functions like pushCurrentZStack and pushCurrentSlice to simplify this.

<a name="inplace_operations"></a>
## Are in-place operations supported?
No. There are no in-place operations implemented in CLIJ. No built-in operation overwrites its input images. However, when implementing your own custom OpenCL-code and wrapping it into CLIJ plugins, in-place operations may be supported depending on used hardware, driver version and supported OpenCL version.

<a name="active_imagej_window"></a>
## Does it matter which is the currently active image window in ImageJ?
No. The currently active image window in ImageJ plays no role in CLIJ. Input and output images must be specified in macros by name explicitly.

<a name="output_not_existing_macro"></a>
## What happens in ImageJ macro if a specified output image doesn't exist?
If a specified output image does not exist in GPU memory, it will be generated automatically with a size defined by the executed operation with respect to input image and given parameters.

<a name="output_existing_macro"></a>
## What happens in ImageJ macro if a specified output image exists already?
If a specified output image exists already in GPU memory, it will be overwritten. If the output image has the wrong size, it will not be changed.

<a name="return_values_macro"></a>
## What is the return value of Ext.CLIJ_... methods in ImageJ macro?
CLIJ operations called from ImageJ macro have no return values. They either process pixels and save results to images or they save their results to ImageJs results table.

<a name="binary_image_characteristics"></a>
## How are binary images characterized in CLIJ?
Binary output images are filled with pixel values 0 and 1. Any input image can serve as binary image and will be interpreted by differentiating 0 and non-zero values. In order to pull a binary image back to ImageJ which is compatible, use `pullBinary()`. This delivers a binary 8-bit image with 0 and 255 as pixel values.

<a name="clearcl_vs_clij_performance_benefits"></a>
## Are there performance benefits expected when calling OpenCL kernels directly via ClearCL instead of CLIJ?
Yes. CLIJ brings OpenCL-kernel caching and the possibility of image/pixel-type-independent OpenCL. These benefits come with small performance loss. Calling an OpenCL kernel via ClearCL directly may be about _a millisecond_ faster than calling it via CLIJ. Example code demonstrating this is available 
[here](https://github.com/clij/clij-benchmarking/blob/master/src/main/java/net/haesleinhuepf/clij/benchmark/clearclclijcomparison/ClearCLVersusCLIJComparison.java)

<a name="buffers_vs_images"></a>
## The CLIJ Java API offers methods for processing ClearCLBuffers and ClearCLImages. What's the difference?
Images and buffers are defined in the OpenCL standard. We tried to have as many operations as possible compatible to both, images and buffers. Differences are:
* When applying affine transforms and warping to images, linear interpolation is used. When using buffers, the nearest neighbor pixel delivers the resulting intensity. 
* Images are not generally supported by GPU devices running OpenCL 1.1. 
* For filters which access the local neighborhood of pixels, using images brings performance gain.

We recommend using buffers in general for maximum device compatibility.

<a name="headless"></a>
## Does CLIJ run in Fijis headless mode?
Yes. As operations executed on the GPU anyway don't make use of user interface elements, CLIJs operations in general run headless and need no user interaction. Furthermore, it can be run from the 
[command line](https://github.com/clij/clij-executable-example)
 and in 
[cloud systems using docker](https://github.com/clij/clij-apeer-template).




<a name="uberjar"></a>
## Is it possible to compile a CLIJ dependent project with all dependencies in a single JAR file?
You can pack your clij dependent project together with clij and all its dependencies in an [uber-jar](https://stackoverflow.com/questions/11947037/what-is-an-uber-jar). 
This is also how [clicy](https://clij.github.io/clicy/) and [clatlab](https://github.com/clij/clatlab) projects work. 
It's basically just an entry in their [pom.xml](https://github.com/clij/clicy/blob/master/pom.xml#L94-L120) files.

<a name="own_plugin"></a>
## Can I develop my own OpenCL code and compile it as plugin for CLIJ?
Yes, there is a [template-plugin](https://github.com/clij/clij2-plugin-template) available for clij2, where you can [input your code](https://github.com/clij/clij2-plugin-template/blob/master/src/main/java/com/yourdomain/clijplugin/template.cl). Reminder: It's [OpenCL](https://www.khronos.org/opencl/), not C ;-)
Furthermore, CLIJ brings some convenience functions (actually defines) to make OpenCL easier to use. You find a [full list](https://github.com/clEsperanto/clij-opencl-kernels/blob/master/README.md) online.

<a name="ide"></a>
## How does CLIJ development work in Eclipse and IntelliJ
CLIJ projects are best managed, compiled and deployed with [maven](https://maven.apache.org/). 
Just import the [pom.xml](https://github.com/clij/clij2-plugin-template/blob/83077fc9d23ed9bd099d7f898bc0910572b90767/pom.xml) in your Eclipse, IntelliJ or other [IDE](https://en.wikipedia.org/wiki/Integrated_development_environment) as project.

<a name="cpu"></a>
## Can CLIJ also be executed on CPUs instead of GPUs?
Yes, as CLIJ is build on OpenCL and OpenCL also runs on CPUs. One may have to install [special drivers](https://software.intel.com/content/www/us/en/develop/articles/opencl-drivers.html) to make it work.

<a name="conditional"></a>
## Can one execute CLIJ commands conditionally in ImageJ macro?
Yes, as images are basically managed in variables:
```
Ext.CLIJ2_push(input);

if (user_input) {
	Ext.CLIJ2_gaussianBlur2D(input, output, 1, 1);
} else {
	output = input;
}

Ext.CLIJ2_pull(output);
```

## Big Images on NVidia graphics cards
Errors may pop up when processing big images on NVidia cards on Windows (CL_INVALID_COMMAND_QUEUE, CL_INVALID_PROGRAM_EXECUTABLE, CL_MEM_OBJECT_ALLOCATION_FAILURE): The issue is related to a timeout of the operating system interrupting processing on the GPU. Add these keys to the windows registry and restart the machine (warning, don't do this if you're not sure. Ask you IT department for support. [Read the BSD3 license file](license.txt) for details on what why we're not responsible for your actions on your computer ):
```
[HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\GraphicsDrivers]
"TdrDelay"=dword:0000003c
"TdrDdiDelay"=dword:0000003c
```
Here is more information about what TDR is: https://docs.microsoft.com/en-us/windows-hardware/drivers/display/tdr-registry-keys

## Big Images on AMD graphics cards
Similar to NVidia drives (see above), issues may appear due to a timeout when processing large images. The issue is related to a timeout of the operating system interrupting processing on the GPU. Add these keys to the windows registry and restart the machine (warning, don't do this if you're not sure. Ask you IT department for support. [Read the BSD3 license file](license.txt) for details on what why we're not responsible for your actions on your computer ). Similar to the solution above, enter a new key in the registry of Windows in this path
```
HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\GraphicsDrivers
```
The key should be called `TdrDelay` and have a value of 8.

Sources:
https://community.amd.com/thread/180166
https://support.microsoft.com/en-us/help/2665946/display-driver-stopped-responding-and-has-recovered-error-in-windows-7

<a name="intel_icd"></a>
## Black images on Intel GPUs / Linux
On an "Intel(R) HD Graphics Kabylake Desktop GT1.5" used from Ubuntu Linux 20.04 it was observed that some operations lead to empty images.
Furthermore, a warning is shown on std err `Beignet: "unable to find good values for local_work_size[i], please provide\n" " local_work_size[] explicitly, you can find good values with\n" " trial-and-error method."`.

This issue can be solved using the device "Intel HD Graphics Gen 9 NEO".
Also, please refer to the [installation instructions for linux](https://clij.github.io/clij2-docs/installationInFiji#linux).

## Repeated initialisation fails on AMD Vega 10
When creating CLIJ instances and closing them repeatedly, it crashes after about 40 attempts. [This test](https://github.com/clij/clij-core/blob/master/src/test/java/net/haesleinhuepf/clij/test/InitialisationTest.java#L17) allows reproducing the issue on specified hardward. Workaround:
Don't close the CLIJ instance and keep working with the singleton instance.

<a name="macos_login"></a>
## MacOS shows login screen after running CLIJ for a while
On some MacOS systems with modern AMD Graphics Cards, CLIJ causes a crash which leads to the operating system restarting the session and logging out the user.
Reason is an energy saving mode. To solve this problem, turn off "Automatic graphics switching" under "System Preference" > "Energy Saver".
Thanks to Tanner Fadero for reporting this bug and its [solution](https://forum.image.sc/t/ijm-macro-crashes-after-a-few-loops/40130/16).

## UnsatisfiedLinkError in deconvolution
If `CLIJx_deconvolveRichardsonLucyFFT` outputs a java.lang.UnsatisfiedLinkError as shown [here](https://forum.image.sc/t/clij-deconvolution/35172/83), 
installation of the [Visual Studio Redist package](https://support.microsoft.com/en-us/help/2977003/the-latest-supported-visual-c-downloads) might help.

## Class not found on Linux
CLIJ doesn't start on Ubuntu linux with an error message that a class called ClearCLBackendJOCL cannot be initialized.
This may be cause by a missing GPU driver.
Please refer to the [installation instructions for linux](https://clij.github.io/clij2-docs/installationInFiji#linux).

<a name="exceptions_linux"></a>
## Exceptions on Linux
CLIJ throws various exceptions, like CL_OUT_OF_HOST_MEMORY on Linux. Please refer to the [installation instructions for linux](https://clij.github.io/clij2-docs/installationInFiji#linux).
Furthermore, when exploring such issues in 2019, on Fedora 27 Linux, this command list helped:
```
sudo yum install ocl-icd-devel
sudo yum install cmake
sudo yum install llvm
sudo yum install llvm-devel
sudo yum install libdrm libdrm-devel
sudo yum install libXext-devel
sudo yum install libXfixes-devel
sudo yum install clang-devel

git clone https://github.com/intel/beignet.git
cd beignet/
mkdir build
cd build
cmake ../
make
sudo make install

```
More info can be found on the website of the [beignet project](https://www.freedesktop.org/wiki/Software/Beignet/).

In case you are trying to create a conda environment and you receive this Warning message: `WARNING: No ICDs were found.` or you wish to have several ICDs detected, you can also install via conda the `ocl-icd-system`. It will make sure your system-wide ICDs are also visible in your conda environment (tested on Linux-Mint 20.1). [See here for more informations](https://documen.tician.de/pyopencl/misc.html#using-vendor-supplied-opencl-drivers-mainly-on-linux)
```
conda install -c conda-forge ocl-icd-system
```

<a name="remove_clij_buttons"></a>
# Can I remove the CLIJ buttons from the Fiji toolbar?
Yes, just delete the file `clij2_assistant_autostart.ijm` from the folder `Fiji.app/plugins/Scripts/Plugins/AutoRun/`.

<a name="difference_clij2_clijx_assistant"></a>
# What is the difference between the CLIJ2 and the CLIJx assistants?
The [CLIJ2 assistant](https://github.com/clij/clij2-assistant) exposes CLIJ2 functions only and allows code-export to scripting languages supported by CLIJ2 (Macro, Javascript, Groovy, Jython, Matlab).
The [CLIJx assistant](https://github.com/clij/clijx-assistant) additionally offers experimental [CLIJx](https://github.com/clij/clijx) functions and export to scripting languages such as QuPath-Groovy for [cluPath](https://github.com/clij/clupath) and [clesperanto-Python](https://github.com/clesperanto/pyclesperanto_prototype).
While the CLIJ2-assistant gets delivered via the clij and clij2 update sites in Fiji, the installation of the CLIJx-assistant needs [multiple update sites installed](https://clij.github.io/assistant/installation#extensions).

<a name="noSimpleITK"></a>
# UnsatisfiedLinkError: no SimpleITKJava 
If you experience an error like the following on, you may be using the 32-bit version of ImageJ/Fiji. Only the 64-bit version is supported. 
```
Exception in thread "Run$_AWT-EventQueue-0" java.lang.UnsatisfiedLinkError: no SimpleITKJava in java.library.path
    at java.lang.ClassLoader.loadLibrary(Unknown Source)
    at java.lang.Runtime.loadLibrary0(Unknown Source)
    at java.lang.System.loadLibrary(Unknown Source)
    at org.itk.simple.SimpleITKJNI.<clinit>(SimpleITKJNI.java:257)
    at org.itk.simple.PixelIDValueEnum.<clinit>(PixelIDValueEnum.java:12)
...
```


[Back to CLIJ documentation](https://clij.github.io/)

[Imprint](https://clij.github.io/imprint)




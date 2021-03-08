## Developing and extending CLIJ
If you plan to make a contribution to the CLIJ project, consider sending a pull request to the [CLIJx](https://github.com/clij/clijx) repository.
We collect new functions and plugins in the CLIJx repository, because the X stands for eXperimental and all new plugins should be tested there for a while before they become part of the core library.

## Developing using maven
CLIJ uses the maven build system. In order to develop CLIJx, use git to get the recent version and maven to build it: 

Clone the clijx repository
```
git clone https://github.com/clij/clijx
```

Open pom.xml and enter the path of your Fiji installation in the line containing

```
<imagej.app.directory>C:/path/to/Fiji.app
```

Go to the source dir and install it to your Fiji.app

```
cd clijx
mvn install
```

It is recommended to use an integrated development environment such as IntelliJ or Eclipse.

## Plugin devolopment
For developing a first CLIJ plugin, it is recommended to take a look at the [clij2 plugin template](https://github.com/clij/clij2-plugin-template).

## What plugins consist of
All CLIJ plugins typically consist of one Java class holding mostly information about the plugin such as documentation and compatibility layers.
As an example, we take a closer look at the [AddImageAndScalar](https://github.com/clij/clij2/blob/master/src/main/java/net/haesleinhuepf/clij2/plugins/AddImageAndScalar.java) 
implementation in CLIJ which allows to add a constant value to all pixels of a given source image.
```java
@Plugin(type = CLIJMacroPlugin.class, name = "CLIJ2_addImageAndScalar")
public class AddImageAndScalar extends AbstractCLIJ2Plugin implements CLIJMacroPlugin, CLIJOpenCLProcessor, OffersDocumentation, ...
```
As you can see, the class is annotated as Plugin and has a name property which describes the name of the function used in ImageJ macro. 
This name is also a unique identifier. Please make sure to call your plugin "CLIJx_myCustomName" and not "CLIJ2_..." until it is part of the official distribution.

The class extends `AbstractCLIJ2Plugin` which brings a number of convenience functions.
* `CLIJ2 getCLIJ2()` gives you access to the current GPU context. You can call other clij2 methods on this object for processing your images.
* `static Float asFloat(Object number)` turns a given Object argument into a `Float`. `Float` Objects are necessary as parameters to make the clij core interpret types of OpenCL parameters correctly. If you define a `float` parameter in OpenCL, you need to hand over a `Float`.
* `static Boolean asBoolean(Object object)` analogously turns a given Object argument into a `Boolean`.
* `static Integer asInteger(Object number)` analogously turns a given Object argument into a `Integer`.

The abstract class also implements some default-functions, which can be redefined in case your plugin needs a specific strategy that is different from the default. 
For example, output-images are generated with the same size and type as a given input image. 
If you want to change this, you need to override [the default](https://github.com/clij/clij/blob/master/src/main/java/net/haesleinhuepf/clij/macro/AbstractCLIJPlugin.java#L214), for example:
```java
@Override
public ClearCLBuffer createOutputBufferFromSource(ClearCLBuffer input)
{
    CLIJ2 clij2 = getCLIJ2();
    int custom_width = 100;
    return clij2.create(new long[]{custom_width, input.getHeight()}, clij2.Float);
}
```

You should also overwrite the function `String getParameterHelpText()` to describe what parameters are consumed by your plugin, for example:
```java
@Override
public String getParameterHelpText() {
    return "Image source, ByRef Image destination, Number scalar";
}
```
This string will be analysed to offer the right graphical user interfaces in CLIJ and the [clij-assistant](https://clij.github.io/assistant). 
Also the macro function signature are generated from it. 
You can use these type definitions:
* `Image` an input image. It can be a grey-value image, binary image, label image or a parametric image [see also](https://clij.github.io/clij2-docs/md/image_types/). Also vectors, pointslists and matrices are technically images.
* `ByRef Image` an output image. If this image doesn't exist yet when the macro function is called, it will be generated using the `createOutputBufferFromSource` function specified above.
* `Number` a numeric input parameter which can be `Integer` or `Float` under the hood. `Double` parameters are technically possible but there is no CLIJ plugin yet that has parameters of type `Double`.
* `ByRef Number` a numeric output parameter. If the passed variable doesn't exist before calling the macro function, it will exist afterwards and contain a given output value.
* `String` a text input parameter. It is recommended to not use `String` parameters in underlying OpenCL code as processing Strings in OpenCL is a bit complicated.

Optionally, you can override `getDefaultValues()` to provide the user interface with reasonable default entries. 
The entries in the returned array must be in the same order as specified in the parameter help text. 
Image parameters should be `null` as they are ignored anyway.
```java
@Override
public Object[] getDefaultValues() {
    return new Object[]{null, null, Double.valueOf(1)};
}
```

Also the function `getAvailableForDimensions()` must be implemented to specify which images can be processed. 
It can return "2D", "3D" or "2D, 3D" in case the plugin processes types of both kind.
Furthermore, projections typically return "3D -> 2D".
```java
@Override
public String getAvailableForDimensions() {
    return "2D, 3D";
}
```

Furthermore, the class implements a couple of interfaces needed to describe the plugin in detail. 
They are not mandatory, but the plugin will not show up in certain contexts, in case the interfaces are not implemented.

### Interface CLIJOpenCLProcessor
Only plugins implementing this interface are called to execute code in OpenCL. This interface is de-facto mandatory in clij.
To implement it, you need to have at least an `executeCL()` function implemented.
```java
@Override
public boolean executeCL() {
    return getCLIJ2().addImageAndScalar((ClearCLBuffer)( args[0]), (ClearCLBuffer)(args[1]), asFloat(args[2]));
}
```

Furthermore, we recommend implementing a static funtion that takes a `CLIJ2` instance as parameter and custom parameters depending on a the given functionality.
This is not mandatory but is consistently done in CLIJ:
```java
public static boolean addImageAndScalar(CLIJ2 clij2, ClearCLImageInterface src, ClearCLImageInterface dst, Float scalar) {
    HashMap<String, Object> parameters = new HashMap<>();
    parameters.put("src", src);
    parameters.put("scalar", scalar);
    parameters.put("dst", dst);

    clij2.execute(AddImageAndScalar .class, "add_image_and_scalar_" + src.getDimension() + "d_x.cl", "add_image_and_scalar_" + src.getDimension() + "d", dst.getDimensions(), dst.getDimensions(), parameters);
    return true;
}
```
In this function, you see how parameters in OpenCL are mapped against parameters given by Java. 
The function has to have a boolean return type. This is a design fault in clij which will be removed in the next major release. 
For now, just return `true` or `false`, it doesn't matter.

### Interface OffersDocumentation
This interface is optional but highly recommended. It can be used to provide a description of the plugin. 
For the upcoming next clij release we aim for [numpy-style docstring](https://numpydoc.readthedocs.io/en/latest/format.html) descriptions:
```java
@Override
public String getDescription() {
    return "Adds a scalar value s to all pixels x of a given image X.\n\n" +
            "<pre>f(x, s) = x + s</pre>\n\n" +
            "Parameters\n" +
            "----------\n" +
            "source : Image\n" +
            "    The input image where scalare should be added.\n" +
            "destination : Image\n" +
            "    The output image where results are written into.\n" +
            "scalar : float\n" +
            "    The constant number which will be added to all pixels.\n";
}
```

### Interface IsCategorized
This interface is used to put the plugin in a given category in the [clij-assistant](https://clij.github.io/assistant) user interface and on the documentation website. 
Typical values can be strings with comma separated lists of `Binarize`, `Label`, `Measurement`, `Filter`, `Math`, `Graph`, `Projection`, `Transform` and custom categories. 
```java
@Override
public String getCategories() {
    return "Math";
}
```

### Interface HasClassifiedInputOutput
This interface is uses to describe input and output [image types](https://clij.github.io/clij2-docs/md/image_types/).
It is optional, but needs to be provided so that the plugin shows up in the user interface of the [clij-assistant](https://clij.github.io/assistant).
Typical image types are `Image`, `Binary Image` and `Label Image`. 
Furthermore, it can be `Matrix`, `Vector` and `Pointlist`.
```java
@Override
public String getInputType() {
    return "Image";
}

@Override
public String getOutputType() {
    return "Image";
}
```

### Interface HasAuthor
If you want to let end-users know who wrote a spciefic plugin, use this interface and implement the function `hasAuthor()`:

```java
@Override
public String getAuthorName() {
    return "Robert Haase";
}
```

### Interface HasLicense
CLIJ is [BSD3](https://github.com/clij/clij2/blob/master/license.txt) -licensed. 
If you want to specify a custom license, you can do this with this interface. Keep the text short if possible and provide a link to the license. Otherwise, the user interface may become large because of a long text.
```java
@Override
public String getLicense() {
    return "LGPL";
}
```

### Custom OpenCL code
Many CLIJ plugins come with custom OpenCL code, for example [add_image_and_scalar.cl](https://github.com/clij/clij2/blob/master/src/main/java/net/haesleinhuepf/clij2/plugins/add_image_and_scalar_2d_x.cl). 
There are no conventions for this code, but we recommend using the clij-opencl-dialect which comes with some pre-defined functions allowing you to write type-agnostic OpenCL-Code. The dialect is documented [here](https://github.com/clEsperanto/clij-opencl-kernels/blob/master/README.md) and there are plenty of examples [here](https://github.com/clEsperanto/clij-opencl-kernels/tree/master/kernels).

Feedback, questions and suggestions to this page are welcome! Just open an [issue](https://github.com/clij/clij2-docs/issues) or a thread via [image.sc](https://image.sc)

[Back to CLIJ documentation](https://clij.github.io/)

[Imprint](https://clij.github.io/imprint)


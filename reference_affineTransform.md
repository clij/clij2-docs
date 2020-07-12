## affineTransform
<img src="images/mini_clij1_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/>

By Robert Haase based on work by Martin Weigert

Applies an affine transform to a 3D image. Individual transforms must be separated by spaces.

Supported transforms:
* center: translate the coordinate origin to the center of the image
* -center: translate the coordinate origin back to the initial origin
* rotate=[angle]: rotate in X/Y plane (around Z-axis) by the given angle in degrees
* rotateX=[angle]: rotate in Y/Z plane (around X-axis) by the given angle in degrees
* rotateY=[angle]: rotate in X/Z plane (around Y-axis) by the given angle in degrees
* rotateZ=[angle]: rotate in X/Y plane (around Z-axis) by the given angle in degrees
* scale=[factor]: isotropic scaling according to given zoom factor
* scaleX=[factor]: scaling along X-axis according to given zoom factor
* scaleY=[factor]: scaling along Y-axis according to given zoom factor
* scaleZ=[factor]: scaling along Z-axis according to given zoom factor
* shearXY=[factor]: shearing along X-axis in XY plane according to given factor
* shearXZ=[factor]: shearing along X-axis in XZ plane according to given factor
* shearYX=[factor]: shearing along Y-axis in XY plane according to given factor
* shearYZ=[factor]: shearing along Y-axis in YZ plane according to given factor
* shearZX=[factor]: shearing along Z-axis in XZ plane according to given factor
* shearZY=[factor]: shearing along Z-axis in YZ plane according to given factor
* translateX=[distance]: translate along X-axis by distance given in pixels
* translateY=[distance]: translate along X-axis by distance given in pixels
* translateZ=[distance]: translate along X-axis by distance given in pixels

Example transform:
transform = "center scale=2 rotate=45 -center";

### Usage in ImageJ macro
```
Ext.CLIJ2_affineTransform(Image source, Image destination, String transform);
```




### Example notebooks
<a href="https://clij.github.io/clij2-docs/md/applyVectorFieldMD"><img src="images/language_macro.png" height="20"/></a> [applyVectorFieldMD](https://clij.github.io/clij2-docs/md/applyVectorFieldMD)  
<a href="https://clij.github.io/clij2-docs/md/rotate_comparison_IJ_CLIJ"><img src="images/language_macro.png" height="20"/></a> [rotate_comparison_IJ_CLIJ](https://clij.github.io/clij2-docs/md/rotate_comparison_IJ_CLIJ)  




### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/affineTransform.ijm"><img src="images/language_macro.png" height="20"/></a> [affineTransform.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/affineTransform.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/affineTransform3D.ijm"><img src="images/language_macro.png" height="20"/></a> [affineTransform3D.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/affineTransform3D.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/applyVectorField.ijm"><img src="images/language_macro.png" height="20"/></a> [applyVectorField.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/applyVectorField.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/applyVectorFieldMD.ijm"><img src="images/language_macro.png" height="20"/></a> [applyVectorFieldMD.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/applyVectorFieldMD.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/motionCorrection.ijm"><img src="images/language_macro.png" height="20"/></a> [motionCorrection.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/motionCorrection.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/motionCorrection_compare_stackreg.ijm"><img src="images/language_macro.png" height="20"/></a> [motionCorrection_compare_stackreg.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/motionCorrection_compare_stackreg.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/rotate_comparison_IJ_CLIJ.ijm"><img src="images/language_macro.png" height="20"/></a> [rotate_comparison_IJ_CLIJ.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/rotate_comparison_IJ_CLIJ.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/jython/affineTransform.py"><img src="images/language_jython.png" height="20"/></a> [affineTransform.py](https://github.com/clij/clij2-docs/blob/master/src/main/jython/affineTransform.py)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/jython/applyVectorField.py"><img src="images/language_jython.png" height="20"/></a> [applyVectorField.py](https://github.com/clij/clij2-docs/blob/master/src/main/jython/applyVectorField.py)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/jython/interactiveCylinderProjection.py"><img src="images/language_jython.png" height="20"/></a> [interactiveCylinderProjection.py](https://github.com/clij/clij2-docs/blob/master/src/main/jython/interactiveCylinderProjection.py)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/jython/interactiveSphereProjection.py"><img src="images/language_jython.png" height="20"/></a> [interactiveSphereProjection.py](https://github.com/clij/clij2-docs/blob/master/src/main/jython/interactiveSphereProjection.py)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/jython/rotateFree.py"><img src="images/language_jython.png" height="20"/></a> [rotateFree.py](https://github.com/clij/clij2-docs/blob/master/src/main/jython/rotateFree.py)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/jython/rotateOverwriteOiginal.py"><img src="images/language_jython.png" height="20"/></a> [rotateOverwriteOiginal.py](https://github.com/clij/clij2-docs/blob/master/src/main/jython/rotateOverwriteOiginal.py)  




### License terms
 adapted from: https://github.com/maweigert/gputools/blob/master/gputools/transforms/kernels/transformations.cl  
  
 Copyright (c) 2016, Martin Weigert  
 All rights reserved.  
  
 Redistribution and use in source and binary forms, with or without  
 modification, are permitted provided that the following conditions are met:  
  
 * Redistributions of source code must retain the above copyright notice, this  
   list of conditions and the following disclaimer.  
  
 * Redistributions in binary form must reproduce the above copyright notice,  
   this list of conditions and the following disclaimer in the documentation  
   and/or other materials provided with the distribution.  
  
 * Neither the name of gputools nor the names of its  
   contributors may be used to endorse or promote products derived from  
   this software without specific prior written permission.  
  
 THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"  
 AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE  
 IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE  
 DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE  
 FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL  
 DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR  
 SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER  
 CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,  
 OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE  
 OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

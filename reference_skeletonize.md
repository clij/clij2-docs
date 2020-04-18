## skeletonize
<img src="images/mini_empty_logo.png"/><img src="images/mini_empty_logo.png"/><img src="images/mini_clijx_logo.png"/>

By Robert Haase translated original work by Ignacio Arganda-Carreras

Erodes a binary image until just its skeleton is left. 

The result is similar to Skeletonize3D in Fiji.

### Usage in ImageJ macro
```
Ext.CLIJx_skeletonize(Image source, ByRef Image destination);
```


### Usage in Java
```
// init CLIJ and GPU
import net.haesleinhuepf.clijx.CLIJx;
import net.haesleinhuepf.clij.clearcl.ClearCLBuffer;
CLIJx clijx = CLIJx.getInstance();

// get input parameters
ClearCLBuffer source = clijx.push(sourceImagePlus);
destination = clij.create(source);
```

```
// Execute operation on GPU
clijx.skeletonize(clij, source, destination);
```

```
//show result
destinationImagePlus = clijx.pull(destination);
destinationImagePlus.show();

// cleanup memory on GPU
clijx.release(source);
clijx.release(destination);
```




### Example scripts
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/benchmarkSkeletonize.ijm"><img src="images/language_macro.png" height="20"/></a> [benchmarkSkeletonize.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/benchmarkSkeletonize.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/skeleton.ijm"><img src="images/language_macro.png" height="20"/></a> [skeleton.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/skeleton.ijm)  
<a href="https://github.com/clij/clij2-docs/blob/master/src/main/macro/skeleton3D.ijm"><img src="images/language_macro.png" height="20"/></a> [skeleton3D.ijm](https://github.com/clij/clij2-docs/blob/master/src/main/macro/skeleton3D.ijm)  




### License terms
  
 Skeletonize3D plugin for ImageJ(C).  
 Copyright (C) 2008 Ignacio Arganda-Carreras   
   
 This program is free software; you can redistribute it and/or  
 modify it under the terms of the GNU General Public License  
 as published by the Free Software Foundation (http://www.gnu.org/licenses/gpl.txt )  
  
 This program is distributed in the hope that it will be useful,  
 but WITHOUT ANY WARRANTY; without even the implied warranty of  
 MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the  
 GNU General Public License for more details.  
   
 You should have received a copy of the GNU General Public License  
 along with this program; if not, write to the Free Software  
 Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.  
   


[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)

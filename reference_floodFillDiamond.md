## floodFillDiamond
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_clijx_logo.png"/>

By Robert Haase translated original work by Ignacio Arganda-Carreras

Replaces recursively all pixels of value a with value b if the pixels have a neighbor with value b.

### Usage in ImageJ macro
```
Ext.CLIJ2_floodFillDiamond(Image source, ByRef Image destination, Number value_to_replace, Number value_replacement);
```


### Usage in Java


<details>

<summary>
clij2.floodFillDiamond(source, destination, value_to_replace, value_replacement);
</summary>
<pre class="highlight">// init CLIJ and GPU
import net.haesleinhuepf.clij2.CLIJ2;
import net.haesleinhuepf.clij.clearcl.ClearCLBuffer;
CLIJ2 clij2 = CLIJ2.getInstance();

// get input parameters
ClearCLBuffer source = clij2.push(sourceImagePlus);
destination = clij2.create(source);
float value_to_replace = 1.0;
float value_replacement = 2.0;
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.floodFillDiamond(source, destination, value_to_replace, value_replacement);
</pre>

<pre class="highlight">
//show result
destinationImagePlus = clij2.pull(destination);
destinationImagePlus.show();

// cleanup memory on GPU
clij2.release(source);
clij2.release(destination);
</pre>

</details>



### Usage in Matlab


<details>

<summary>
clij2.floodFillDiamond(source, destination, value_to_replace, value_replacement);
</summary>
<pre class="highlight">% init CLIJ and GPU
clij2 = init_clatlab();

% get input parameters
source = clij2.pushMat(source_matrix);
destination = clij2.create(source);
value_to_replace = 1.0;
value_replacement = 2.0;
</pre>

<pre class="highlight">
% Execute operation on GPU
clij2.floodFillDiamond(source, destination, value_to_replace, value_replacement);
</pre>

<pre class="highlight">
% show result
destination = clij2.pullMat(destination)

% cleanup memory on GPU
clij2.release(source);
clij2.release(destination);
</pre>

</details>



### Usage in Icy


<details>

<summary>
clij2.floodFillDiamond(source, destination, value_to_replace, value_replacement);
</summary>
<pre class="highlight">// init CLIJ and GPU
importClass(net.haesleinhuepf.clicy.CLICY);
importClass(Packages.icy.main.Icy);

clij2 = CLICY.getInstance();

// get input parameters
source_sequence = getSequence();source = clij2.pushSequence(source_sequence);
destination = clij2.create(source);
value_to_replace = 1.0;
value_replacement = 2.0;
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.floodFillDiamond(source, destination, value_to_replace, value_replacement);
</pre>

<pre class="highlight">
// show result
destination_sequence = clij2.pullSequence(destination)
Icy.addSequence(destination_sequence
// cleanup memory on GPU
clij2.release(source);
clij2.release(destination);
</pre>

</details>





### License terms
  
Code was translated from    
  
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

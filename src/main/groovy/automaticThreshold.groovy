// automaticThreshold.groovy
// =========================
//
// Apply an automatic threshold method to an image on the GPU
//
// Author: Robert Haase, rhaase@mpi-cbg.de
//         April 2019
//////////////////////////////////////////

import ij.IJ;
import net.haesleinhuepf.clij2.CLIJ2;


IJ.run("Close All");

// load example image
imp = IJ.openImage("http://wsr.imagej.net/images/blobs.gif");
imp.show();

// init GPU
clij2 = CLIJ2.getInstance();

// push image to GPU
input = clij2.push(imp);

// reserve memory for output, same size and type as input
output = clij2.create(input);

// apply threshold method on GPU
clij2.thresholdOtsu(input, output);

// show result
clij2.pullBinary(output).show();

// clean up 
clij2.clear();

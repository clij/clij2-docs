package net.haesleinhuepf.cli2.examples;

import ij.IJ;
import ij.ImageJ;
import ij.ImagePlus;
import net.haesleinhuepf.clij.CLIJ;
import net.haesleinhuepf.clij.clearcl.ClearCLBuffer;
import net.haesleinhuepf.clij2.CLIJ2;

/**
 * AutoThresholdDemo
 *
 * This java example shows how to apply an automatic
 * threshold method to an image in the GPU.
 *
 * Author: @haesleinhuepf
 * June 2019
 */
public class AutoThresholdDemo {
    public static void main(String[] args) {
        new ImageJ();

        // get test image
        ImagePlus imp = IJ.openImage("https://samples.fiji.sc/blobs.png");
        IJ.run(imp,"32-bit", "");
        imp.setTitle("blobs");


        // init GPU
        CLIJ2 clij2 = CLIJ2.getInstance();

        // push image to GPU and allocate memory for result
        ClearCLBuffer blobsGPU = clij2.push(imp);
        ClearCLBuffer thresholded = clij2.create(blobsGPU);

        // apply threshold
        clij2.thresholdOtsu(blobsGPU, thresholded);

        // show result
        ImagePlus result = clij2.pull(thresholded);
        result.show();

        // cleanup
        blobsGPU.close();
        thresholded.close();

    }
}

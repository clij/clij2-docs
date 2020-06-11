package net.haesleinhuepf.cli2.examples;

import ij.IJ;
import ij.ImageJ;
import ij.ImagePlus;
import net.haesleinhuepf.clij.CLIJ;
import net.haesleinhuepf.clij.clearcl.ClearCLBuffer;
import net.haesleinhuepf.clij2.CLIJ2;
import net.imglib2.realtransform.AffineTransform3D;

/**
 * MaximumProjectionDemo
 * <p>
 * <p>
 * <p>
 * Author: @haesleinhuepf
 * 06 2019
 */
public class MaximumProjectionDemo {
    public static void main(String[] args) {
        new ImageJ();

        // load example image
        ImagePlus input = IJ.openImage("https://imagej.nih.gov/ij/images/t1-head.zip");

        // initialize GPU
        CLIJ2 clij2 = CLIJ2.getInstance();

        // push image to GPU
        ClearCLBuffer inputOnGPU = clij2.push(input);
        // create memory for target
        ClearCLBuffer resultOnGPU = clij2.create(new long[]{inputOnGPU.getWidth(), inputOnGPU.getHeight()}, inputOnGPU.getNativeType());

        // apply transform
        clij2.maximumZProjection(inputOnGPU, resultOnGPU);

        // retrieve result or show it
        ImagePlus result = clij2.pull(resultOnGPU);
        clij2.show(resultOnGPU, "result");

        // free memory
        inputOnGPU.close();
        resultOnGPU.close();
    }
}

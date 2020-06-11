package net.haesleinhuepf.cli2.examples;

import ij.IJ;
import ij.ImageJ;
import ij.ImagePlus;
import net.haesleinhuepf.clij.CLIJ;
import net.haesleinhuepf.clij.clearcl.ClearCLBuffer;
import net.haesleinhuepf.clij2.CLIJ2;
import net.imglib2.realtransform.AffineTransform3D;

/**
 * AffineTransformDemo
 * <p>
 * <p>
 * <p>
 * Author: @haesleinhuepf
 * 01 2019
 */
public class AffineTransformDemo {
    public static void main(String... args) {
        new ImageJ();

        // load example image
        ImagePlus input = IJ.openImage("src/main/resources/flybrain.tif");

        // initialize GPU
        CLIJ2 clij2 = CLIJ2.getInstance();

        // push image to GPU
        ClearCLBuffer inputOnGPU = clij2.push(input);
        // create memory for target
        ClearCLBuffer resultOnGPU = clij2.create(inputOnGPU);

        // define affine transform
        AffineTransform3D transform = new AffineTransform3D();
        transform.translate(-inputOnGPU.getWidth() / 2, -inputOnGPU.getHeight() / 2, -inputOnGPU.getDepth() / 2);
        transform.rotate(2, 45);
        transform.translate(inputOnGPU.getWidth() / 2, inputOnGPU.getHeight() / 2, inputOnGPU.getDepth() / 2);

        // apply transform
        clij2.affineTransform3D(inputOnGPU, resultOnGPU, transform);

        // retrieve result or show it
        ImagePlus result = clij2.pull(resultOnGPU);
        clij2.show(resultOnGPU, "result");

        // free memory
        inputOnGPU.close();
        resultOnGPU.close();

    }
}

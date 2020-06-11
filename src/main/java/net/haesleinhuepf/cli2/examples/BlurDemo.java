package net.haesleinhuepf.cli2.examples;

import ij.IJ;
import ij.ImagePlus;
import net.haesleinhuepf.clij.CLIJ;
import net.haesleinhuepf.clij.clearcl.ClearCLBuffer;
import net.haesleinhuepf.clij2.CLIJ2;

/**
 * Apply a Gaussian blur to an image on the GPU
 *
 * Author: @haesleinhuepf
 * June 2019
 */
public class BlurDemo {
    public static void main(String... args) {
        ImagePlus imp = IJ.openImage("https://samples.fiji.sc/blobs.png");

        CLIJ2 clij2 = CLIJ2.getInstance();

        // conversion
        ClearCLBuffer input = clij2.push(imp);
        ClearCLBuffer output = clij2.create(input);

        // blur
        float sigma = 2;
        clij2.gaussianBlur(input, output, sigma, sigma);

        ImagePlus result = clij2.pull(output);
        result.show();

        // free memory afterwards
        input.close();
        output.close();
    }
}

package net.haesleinhuepf.cli2.examples;

import ij.IJ;
import ij.ImagePlus;
import net.haesleinhuepf.clij.CLIJ;
import net.haesleinhuepf.clij.clearcl.ClearCLBuffer;
import net.haesleinhuepf.clij.kernels.Kernels;
import net.haesleinhuepf.clij2.CLIJ2;

/**
 * * Mean filter for background determination,
 * * background subtractionand
 * * thresholding
 *
 * Author: @haesleinhuepf
 * May 2019
 */
public class BackgroundSubtractionandThresholdingDemo {
    public static void main(String... args) {
        ImagePlus imp = IJ.openImage("src/main/resources/droso_crop.tif");

        CLIJ2 clij2 = CLIJ2.getInstance();

        // conversion
        ClearCLBuffer input = clij2.push(imp);
        ClearCLBuffer output = clij2.create(input);
        ClearCLBuffer background = clij2.create(input);
        ClearCLBuffer backgroundSubtracted = clij2.create(input);

        // blur
        clij2.meanBox(input, background, 2, 2, 2);

        // background subtraction
        clij2.subtractImages(input, background, backgroundSubtracted);

        // threshold
        clij2.automaticThreshold(backgroundSubtracted, output, "Otsu");

        // show results
        clij2.show(input, "original");
        clij2.show(output, "mask");

        // free memory afterwards
        input.close();
        output.close();
        background.close();
        backgroundSubtracted.close();
    }
}

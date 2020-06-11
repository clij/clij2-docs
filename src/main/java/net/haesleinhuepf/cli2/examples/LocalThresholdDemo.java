package net.haesleinhuepf.cli2.examples;

import ij.IJ;
import ij.ImagePlus;
import net.haesleinhuepf.clij.CLIJ;
import net.haesleinhuepf.clij.clearcl.ClearCLBuffer;
import net.haesleinhuepf.clij.kernels.Kernels;
import net.haesleinhuepf.clij2.CLIJ2;

/**
 * LocalThresholdDemo
 * <p>
 * <p>
 * <p>
 * Author: @haesleinhuepf
 * 06 2018
 */
public class LocalThresholdDemo {
    public static void main(String... args) {
        ImagePlus imp = IJ.openImage("src/main/resources/droso_crop.tif");

        CLIJ2 clij2 = CLIJ2.getInstance();

        // conversion
        ClearCLBuffer input = clij2.push(imp);
        ClearCLBuffer output = clij2.create(input);
        ClearCLBuffer temp = clij2.create(input);

        // blur
        clij2.gaussianBlur(input, temp, 2f, 2f, 2f);

        // local threshold
        clij2.localThreshold(input, output, temp);

        clij2.erodeSphere(output, temp);
        clij2.erodeSphere(temp, output);

        // show results
        clij2.show(input, "original");
        clij2.show(output, "mask");

        input.close();
        output.close();
        temp.close();
    }
}

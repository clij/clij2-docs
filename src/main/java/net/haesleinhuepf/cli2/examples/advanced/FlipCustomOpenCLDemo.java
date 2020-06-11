package net.haesleinhuepf.cli2.examples.advanced;

import ij.IJ;
import ij.ImageJ;
import ij.ImagePlus;
import ij.plugin.Duplicator;
import net.haesleinhuepf.clij.clearcl.ClearCLBuffer;
import net.haesleinhuepf.clij2.CLIJ2;
import net.imglib2.RandomAccessibleInterval;
import net.imglib2.img.display.imagej.ImageJFunctions;
import net.imglib2.type.numeric.integer.UnsignedShortType;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

/**
 * This
 * <p>
 * Author: Robert Haase (http://haesleinhuepf.net) at MPI CBG (http://mpi-cbg.de)
 * February 2018
 */
public class FlipCustomOpenCLDemo {
    public static void main(String... args) throws IOException {
        new ImageJ();
        ImagePlus inputImagePlus = IJ.openImage("https://github.com/clij/clij-docs/raw/master/src/main/resources/flybrain.tif");

        RandomAccessibleInterval<UnsignedShortType> input = ImageJFunctions.wrap(inputImagePlus);


        ImageJFunctions.show(input);

        CLIJ2 clij2 = CLIJ2.getInstance();

        // ---------------------------------------------------------------
        // Example 1: Flip image in X
        {
            ClearCLBuffer srcImage = clij2.push(input);
            ClearCLBuffer dstImage = clij2.create(srcImage);

            HashMap<String, Object> parameterMap = new HashMap<>();
            parameterMap.put("src", srcImage);
            parameterMap.put("dst", dstImage);
            parameterMap.put("flipx", 1);
            parameterMap.put("flipy", 0);
            parameterMap.put("flipz", 0);

            clij2.execute(FlipCustomOpenCLDemo.class, "flip.cl", "flip_3d", srcImage.getDimensions(), srcImage.getDimensions(), parameterMap);

            ImagePlus result = clij2.pull(dstImage);
            result.show();
            IJ.run(result,"Enhance Contrast", "saturated=0.35");
        }

    }
}

# jaccardIndex.py
# ===============
#
# Compute the Jaccard index of two binary 
# images on the GPU.
#
# Author: Robert Haase, rhaase@mpi-cbg.de
#         December 2019
#########################################

from ij import IJ;
from net.haesleinhuepf.clij2 import CLIJ2;

IJ.run("Close All");

# init GPU
clij2 = CLIJ2.getInstance();

# init two binary images
image1 = clij2.create([100, 100, 10], clij2.UnsignedByte);
image2 = clij2.create([100, 100, 10], clij2.UnsignedByte);
temp = clij2.create([100, 100, 10], clij2.UnsignedByte);
clij2.set(image1, 0);
clij2.set(image2, 0);

# set two spheres
clij2.drawSphere(image1, 50, 50, 5, 20, 20, 5);
clij2.drawSphere(image2, 40, 40, 5, 20, 20, 5);

# visualize
clij2.show(image1, "image1");
clij2.show(image2, "image2");

# compute and output overlap
jaccardIndex = clij2.jaccardIndex(image1, image2);
diceIndex = clij2.sorensenDiceCoefficient(image1, image2);
print("Jaccard index:" + str(jaccardIndex));
print("Dice index:" + str(diceIndex));

# cleanup by the end
clij2.clear();

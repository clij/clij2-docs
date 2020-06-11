# CLIJ example macro: mesh_closest_points.py
#
# This script shows how to draw lines between closest points in the GPU.
#
# Author: Robert Haase
#         September 2019
# ---------------------------------------------

# Get test data
from ij import IJ;
imp = IJ.openImage("http://wsr.imagej.net/images/blobs.gif");
# IJ.openImage("C:/structure/data/blobs.gif");

# Init GPU
from net.haesleinhuepf.clij2 import CLIJ2;
clij2 = CLIJ2.getInstance();

# push data to GPU
inputImage = clij2.push(imp);

# blur a bit and detect maxima
blurred = clij2.create(inputImage);
detected_spots = clij2.create(inputImage);

clij2.gaussianBlur(inputImage, blurred, 15, 15, 0);

print(str(blurred));

clij2.detectMaximaBox(blurred, detected_spots, 10);

clij2.show(detected_spots, "spots");

# convert spots image to spot list
number_of_spots = clij2.sumOfAllPixels(detected_spots);
pointlist = clij2.create([number_of_spots, 2]);
clij2.spotsToPointList(detected_spots, pointlist);

distance_matrix = clij2.create([number_of_spots, number_of_spots]);
clij2.generateDistanceMatrix(pointlist, pointlist, distance_matrix);

n_closest_points = 5;
closestPointsIndices = clij2.create([number_of_spots, n_closest_points]);
clij2.nClosestPoints(distance_matrix, closestPointsIndices);


mesh = clij2.create(inputImage);
clij2.set(mesh, 0);
clij2.pointIndexListToMesh(pointlist, closestPointsIndices, mesh);

# show result
clij2.show(mesh, "mesh");
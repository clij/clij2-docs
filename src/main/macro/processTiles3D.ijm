// CLIJ example macro: addImages3D.ijm
//
// This macro shows how add images of different bit-type
//
// Author: Robert Haase
// January 2019
// ---------------------------------------------

run("Close All");

// Get test data
//run("Blobs (25K)");
//open("C:/structure/data/t1-head.tif");
run("T1 Head (2.4M, 16-bits)");

original = "original";

rename(original);
getDimensions(width, height, channels, depth, frames)

// init GPU
run("CLIJ Macro Extensions", "cl_device=");
Ext.CLIJ2_clear();

// create output image with 32 bits
result = "result";
newImage(result, "16-bit", width, height, depth);
Stack.setSlice(64);
//Ext.CLIJ2_create3D(result, width, height, depth, 32);

numTilesX = 10;
numTilesY = 10;
numTilesZ = 10;

tileWidth = floor(width / numTilesX);
tileHeight = floor(height / numTilesY);
tileDepth = floor(depth / numTilesZ);

margin = 3;

for (x = 0; x < numTilesX; x++) {
	for (y = 0; y < numTilesY; y++) {
		for (z = 0; z < numTilesZ; z++) {
			Ext.CLIJx_pushTile(original, x, y, z, tileWidth, tileHeight, tileDepth, margin, margin, margin);
			
			Ext.CLIJ2_mean3DBox(original, result, 3, 3, 3);

			Ext.CLIJx_pullTile(result, x, y, z, tileWidth, tileHeight, tileDepth, margin, margin, margin);
			run("Enhance Contrast", "saturated=0.35");
		}
	}
}

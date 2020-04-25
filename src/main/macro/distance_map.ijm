run("Leaf (36K)");
makeRectangle(8, 81, 486, 356);
run("Duplicate...", " ");
close();
run("Crop");
run("8-bit");
run("CLIJ2 Macro Extensions", "cl_device=[gfx900]");

// threshold otsu
image2 = "leaf.jpg";
Ext.CLIJ_push(image2);
image3 = "threshold_otsu1213781482";
Ext.CLIJ2_thresholdOtsu(image2, image3);
Ext.CLIJ_pull(image3);

Ext.CLIJ2_binaryNot(image3, image3a);

// distance map
image4 = "distance_map-2129094080";
Ext.CLIJ2_distanceMap(image3a, image4);
Ext.CLIJ_pull(image4);

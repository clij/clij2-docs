run("Close All");

run("Tracks for TrackMate (807K)");
stack = getTitle();

newImage("Untitled", "8-bit ramp", 256, 1, 1);
lut = getTitle();
run("Green Fire Blue");
run("RGB Color");
run("RGB Stack");
run("CLIJ2 Macro Extensions", "cl_device=[GeForce RTX 2060 SUPER]");
Ext.CLIJ2_clear();

// depth color projection
Ext.CLIJ2_push(stack);
Ext.CLIJ2_push(lut);
getMinAndMax(min_display_intensity, max_display_intensity);
Ext.CLIJ2_depthColorProjection(stack, lut, projection, min_display_intensity, max_display_intensity);
Ext.CLIJ2_pull(projection);


run("Stack to RGB");


// CLIJ example macro: reduceAndCombineImages.ijm
//
// This macro shows how to reduce image stacks and
// combine them on a GPU.
//
// Author: Robert Haase
//         May 2020
// ---------------------------------------------

run("Close All");

// Get test data
run("T1 Head (2.4M, 16-bits)");
original = getTitle();

// init GPU
run("CLIJ2 Macro Extensions", "cl_device=");
Ext.CLIJ2_clear();

// push images to GPU
Ext.CLIJ2_push(original);

// cleanup imagej
run("Close All");

// make four stacks out of the original by skipping slices
Ext.CLIJ2_reduceStack(original, stack0, 4, 0);
Ext.CLIJ2_reduceStack(original, stack1, 4, 1);
Ext.CLIJ2_reduceStack(original, stack2, 4, 2);
Ext.CLIJ2_reduceStack(original, stack3, 4, 3);

// cobine the four stacks in a collage
Ext.CLIJ2_combineHorizontally(stack0, stack1, stack01);
Ext.CLIJ2_combineHorizontally(stack2, stack3, stack23);
Ext.CLIJ2_combineVertically(stack01, stack23, result);


// show result
Ext.CLIJ2_pull(result);

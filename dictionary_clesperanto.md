# The big dictionary
This list contains the dictionary to translate between clij2, clijx, clEsperantoJ, Macro and pyclesperanto.
* Methods marked as <span style="color:red">(missing)</span> still need to be translated.
* Methods marked as <span style="color:orange">(deprecated)</span> should not be translated.
* Methods marked as <span style="color:green">(experimental)</span> are not decided yet if they become part of a stable release.

## absolute
**CLIJ2**
* boolean absolute(ClearCLImageInterface source, ClearCLImageInterface destination)

**CLIc**
* void Absolute(Buffer&, Buffer&);

**clEsperantoJ**
* ClearCLImageInterface absolute(ClearCLImageInterface source, ClearCLImageInterface destination)

**Macro**
* Ext.CLIJ2_absolute(Image source, ByRef Image destination)

**pyclesperanto**
* absolute(source : Image, destintation : Image = None):

## absolute_difference
**CLIJ2**
* boolean absoluteDifference(ClearCLBuffer source1, ClearCLBuffer source2, ClearCLBuffer destination)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer absolute_difference(ClearCLBuffer source1, ClearCLBuffer source2, ClearCLBuffer destination)

**Macro**
* Ext.CLIJ2_absoluteDifference(Image source1, Image source2, ByRef Image destination)

**pyclesperanto**
* absolute_difference(source1 : Image, source2 : Image, destination : Image = None):

## absolute_inplace
<span style="color:orange">(deprecated)</span>

**CLIJx**
* boolean absoluteInplace(ClearCLBuffer source_destination)

**Macro**
* Ext.CLIJx_absoluteInplace(Image source_destination)

## add_image_and_scalar
**CLIJ2**
* boolean addImageAndScalar(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface add_image_and_scalar(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3)

**Macro**
* Ext.CLIJ2_addImageAndScalar(Image source, ByRef Image destination, Number scalar)

**pyclesperanto**
* add_image_and_scalar(source : Image, destination : Image = None, scalar : float = 1):

## add_images
**CLIJ2**
* boolean addImages(ClearCLImageInterface summand1, ClearCLImageInterface summand2, ClearCLImageInterface destination)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface add_images(ClearCLImageInterface summand1, ClearCLImageInterface summand2, ClearCLImageInterface destination)

**Macro**
* Ext.CLIJ2_addImages(Image summand1, Image summand2, ByRef Image destination)

**pyclesperanto**
* add_images(summand1 : Image, summand2 : Image, destination : Image = None):

## add_images_weighted
**CLIJ2**
* boolean addImagesWeighted(ClearCLImageInterface arg1, ClearCLImageInterface arg2, ClearCLImageInterface arg3, double arg4, double arg5)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface add_images_weighted(ClearCLImageInterface arg1, ClearCLImageInterface arg2, ClearCLImageInterface arg3, double arg4, double arg5)

**Macro**
* Ext.CLIJ2_addImagesWeighted(Image summand1, Image summand2, ByRef Image destination, Number factor1, Number factor2)

**pyclesperanto**
* add_images_weighted(summand1:Image, summand2:Image, destination :Image = None, factor1:float=1, factor2:float=1):

## adjacency_matrix_to_touch_matrix
**CLIJ2**
* boolean adjacencyMatrixToTouchMatrix(ClearCLBuffer adjacency_matrix, ClearCLBuffer touch_matrix)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer adjacency_matrix_to_touch_matrix(ClearCLBuffer adjacency_matrix, ClearCLBuffer touch_matrix)

**Macro**
* Ext.CLIJ2_adjacencyMatrixToTouchMatrix(Image adjacency_matrix, ByRef Image touch_matrix)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## affine_transform
<span style="color:green">(experimental)</span>

**pyclesperanto**
* affine_transform(source : Image, destination : Image = None, transform : Union[np.ndarray, AffineTransform3D, AffineTransform] = None, linear_interpolation : bool = False):

## affine_transform
**CLIJ2**
* boolean affineTransform2D(ClearCLBuffer arg1, ClearCLImageInterface arg2, float[] arg3)
* boolean affineTransform2D(ClearCLBuffer source, ClearCLImageInterface destination, String transform)
* boolean affineTransform2D(ClearCLBuffer arg1, ClearCLImageInterface arg2, net.imglib2.realtransform.AffineTransform2D arg3)
* boolean affineTransform2D(ClearCLImage arg1, ClearCLImageInterface arg2, float[] arg3)
* boolean affineTransform2D(ClearCLImage arg1, ClearCLImageInterface arg2, net.imglib2.realtransform.AffineTransform2D arg3)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface affine_transform2d(ClearCLBuffer arg1, ClearCLImageInterface arg2, float[] arg3)
* ClearCLImageInterface affine_transform2d(ClearCLBuffer source, ClearCLImageInterface destination, String transform)
* ClearCLImageInterface affine_transform2d(ClearCLBuffer arg1, ClearCLImageInterface arg2, net.imglib2.realtransform.AffineTransform2D arg3)
* ClearCLImageInterface affine_transform2d(ClearCLImage arg1, ClearCLImageInterface arg2, float[] arg3)
* ClearCLImageInterface affine_transform2d(ClearCLImage arg1, ClearCLImageInterface arg2, net.imglib2.realtransform.AffineTransform2D arg3)

**Macro**
* Ext.CLIJ2_affineTransform2D(Image source, ByRef Image destination, String transform)

**pyclesperanto**
* affine_transform(source : Image, destination : Image = None, transform : Union[np.ndarray, AffineTransform3D, AffineTransform] = None, linear_interpolation : bool = False):

## affine_transform
**CLIJ2**
* boolean affineTransform3D(ClearCLBuffer arg1, ClearCLImageInterface arg2, float[] arg3)
* boolean affineTransform3D(ClearCLBuffer source, ClearCLImageInterface destination, String transform)
* boolean affineTransform3D(ClearCLBuffer arg1, ClearCLImageInterface arg2, net.imglib2.realtransform.AffineTransform3D arg3)
* boolean affineTransform3D(ClearCLImage arg1, ClearCLImageInterface arg2, float[] arg3)
* boolean affineTransform3D(ClearCLImage arg1, ClearCLImageInterface arg2, net.imglib2.realtransform.AffineTransform3D arg3)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface affine_transform3d(ClearCLBuffer arg1, ClearCLImageInterface arg2, float[] arg3)
* ClearCLImageInterface affine_transform3d(ClearCLBuffer source, ClearCLImageInterface destination, String transform)
* ClearCLImageInterface affine_transform3d(ClearCLBuffer arg1, ClearCLImageInterface arg2, net.imglib2.realtransform.AffineTransform3D arg3)
* ClearCLImageInterface affine_transform3d(ClearCLImage arg1, ClearCLImageInterface arg2, float[] arg3)
* ClearCLImageInterface affine_transform3d(ClearCLImage arg1, ClearCLImageInterface arg2, net.imglib2.realtransform.AffineTransform3D arg3)

**Macro**
* Ext.CLIJ2_affineTransform3D(Image source, ByRef Image destination, String transform)

**pyclesperanto**
* affine_transform(source : Image, destination : Image = None, transform : Union[np.ndarray, AffineTransform3D, AffineTransform] = None, linear_interpolation : bool = False):

## apply_auto_context_weka_model_with_options
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean applyAutoContextWekaModelWithOptions(ClearCLBuffer arg1, ClearCLBuffer arg2, String arg3, String arg4, double arg5)

**clEsperantoJ**
* ClearCLBuffer apply_auto_context_weka_model_with_options(ClearCLBuffer arg1, ClearCLBuffer arg2, String arg3, String arg4, double arg5)

## apply_vector_field
**CLIJ2**
* boolean applyVectorField(ClearCLImageInterface source, ClearCLImageInterface vector_x, ClearCLImageInterface vector_y, ClearCLImageInterface destination)
* boolean applyVectorField(ClearCLImageInterface arg1, ClearCLImageInterface arg2, ClearCLImageInterface arg3, ClearCLImageInterface arg4, ClearCLImageInterface arg5)

**CLIJx**
* boolean applyVectorfield(ClearCLBuffer source, ClearCLBuffer vector_x, ClearCLBuffer vector_y, ClearCLBuffer destination)
* boolean applyVectorfield(ClearCLBuffer arg1, ClearCLBuffer arg2, ClearCLBuffer arg3, ClearCLBuffer arg4, ClearCLBuffer arg5)
* boolean applyVectorfield(ClearCLImage source, ClearCLImage vector_x, ClearCLImage vector_y, ClearCLImage destination)
* boolean applyVectorfield(ClearCLImage arg1, ClearCLImage arg2, ClearCLImage arg3, ClearCLImage arg4, ClearCLImage arg5)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface apply_vector_field(ClearCLImageInterface source, ClearCLImageInterface vector_x, ClearCLImageInterface vector_y, ClearCLImageInterface destination)
* ClearCLImageInterface apply_vector_field(ClearCLImageInterface arg1, ClearCLImageInterface arg2, ClearCLImageInterface arg3, ClearCLImageInterface arg4, ClearCLImageInterface arg5)

**Macro**
* Ext.CLIJ2_applyVectorField2D(Image source, Image vector_x, Image vector_y, ByRef Image destination)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## apply_vector_field
**CLIJ2**
* boolean applyVectorField2D(ClearCLImageInterface source, ClearCLImageInterface vector_x, ClearCLImageInterface vector_y, ClearCLImageInterface destination)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface apply_vector_field2d(ClearCLImageInterface source, ClearCLImageInterface vector_x, ClearCLImageInterface vector_y, ClearCLImageInterface destination)

**Macro**
* Ext.CLIJ2_applyVectorField2D(Image source, Image vector_x, Image vector_y, ByRef Image destination)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## apply_vector_field
**CLIJ2**
* boolean applyVectorField3D(ClearCLImageInterface source, ClearCLImageInterface vectorX, ClearCLImageInterface vectorY, ClearCLImageInterface vectorZ, ClearCLImageInterface destination)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface apply_vector_field3d(ClearCLImageInterface source, ClearCLImageInterface vectorX, ClearCLImageInterface vectorY, ClearCLImageInterface vectorZ, ClearCLImageInterface destination)

**Macro**
* Ext.CLIJ2_applyVectorField3D(Image source, Image vectorX, Image vectorY, Image vectorZ, ByRef Image destination)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## apply_vectorfield
**CLIJ2**
* boolean applyVectorField(ClearCLImageInterface source, ClearCLImageInterface vector_x, ClearCLImageInterface vector_y, ClearCLImageInterface destination)
* boolean applyVectorField(ClearCLImageInterface arg1, ClearCLImageInterface arg2, ClearCLImageInterface arg3, ClearCLImageInterface arg4, ClearCLImageInterface arg5)

**CLIJx**
* boolean applyVectorfield(ClearCLBuffer source, ClearCLBuffer vector_x, ClearCLBuffer vector_y, ClearCLBuffer destination)
* boolean applyVectorfield(ClearCLBuffer arg1, ClearCLBuffer arg2, ClearCLBuffer arg3, ClearCLBuffer arg4, ClearCLBuffer arg5)
* boolean applyVectorfield(ClearCLImage source, ClearCLImage vector_x, ClearCLImage vector_y, ClearCLImage destination)
* boolean applyVectorfield(ClearCLImage arg1, ClearCLImage arg2, ClearCLImage arg3, ClearCLImage arg4, ClearCLImage arg5)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* <span style="color:red">(Missing)</span>

**Macro**
* Ext.CLIJ2_applyVectorField2D(Image source, Image vector_x, Image vector_y, ByRef Image destination)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## apply_weka_model
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean applyWekaModel(ClearCLBuffer arg1, ClearCLBuffer arg2, CLIJxWeka2 arg3)
* CLIJxWeka2 applyWekaModel(ClearCLBuffer featureStack3D, ClearCLBuffer prediction2D_destination, String loadModelFilename)

**clEsperantoJ**
* ClearCLBuffer apply_weka_model(ClearCLBuffer arg1, ClearCLBuffer arg2, CLIJxWeka2 arg3)
* ClearCLBuffer apply_weka_model(ClearCLBuffer featureStack3D, ClearCLBuffer prediction2D_destination, String loadModelFilename)

**Macro**
* Ext.CLIJx_applyWekaModel(Image featureStack3D, Image prediction2D_destination, String loadModelFilename)

## apply_weka_to_table
<span style="color:green">(experimental)</span>

**CLIJx**
* CLIJxWeka2 applyWekaToTable(ResultsTable arg1, String arg2, String arg3)
* CLIJxWeka2 applyWekaToTable(ResultsTable arg1, String arg2, CLIJxWeka2 arg3)

**clEsperantoJ**
* CLIJxWeka2 apply_weka_to_table(ResultsTable arg1, String arg2, String arg3)
* CLIJxWeka2 apply_weka_to_table(ResultsTable arg1, String arg2, CLIJxWeka2 arg3)

**Macro**
* Ext.CLIJx_applyWekaToTable(String predictionColumnName, String loadModelFilename)

## arg_maximum_z_projection
**CLIJ2**
* boolean argMaximumZProjection(ClearCLImageInterface source, ClearCLImageInterface destination_max, ClearCLImageInterface destination_arg_max)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface arg_maximum_z_projection(ClearCLImageInterface source, ClearCLImageInterface destination_max, ClearCLImageInterface destination_arg_max)

**Macro**
* Ext.CLIJ2_argMaximumZProjection(Image source, ByRef Image destination_max, ByRef Image destination_arg_max)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## artificial_tissue_2d
<span style="color:green">(experimental)</span>

**pyclesperanto**
* artificial_tissue_2d(width: int = 256, height: int = 256, delta_x=24, delta_y=16, random_sigma_x=3, random_sigma_y=3):

## automatic_threshold
**CLIJ2**
* boolean automaticThreshold(ClearCLBuffer input, ClearCLBuffer destination, String method)
* boolean automaticThreshold(ClearCLBuffer arg1, ClearCLBuffer arg2, String arg3, double arg4, double arg5, double arg6)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer automatic_threshold(ClearCLBuffer input, ClearCLBuffer destination, String method)
* ClearCLBuffer automatic_threshold(ClearCLBuffer arg1, ClearCLBuffer arg2, String arg3, double arg4, double arg5, double arg6)

**Macro**
* Ext.CLIJ2_automaticThreshold(Image input, ByRef Image destination, String method)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## automatic_threshold_inplace
<span style="color:orange">(deprecated)</span>

**CLIJx**
* boolean automaticThresholdInplace(ClearCLBuffer input_and_destination, String method)

**Macro**
* Ext.CLIJx_automaticThresholdInplace(Image input_and_destination, String method)

## available_device_names
<span style="color:green">(experimental)</span>

**pyclesperanto**
* available_device_names(dev_type: str = None, score_key = None) -> List[str]:

## average_distance_of_closest_points
**CLIJ2**
* boolean averageDistanceOfClosestPoints(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* <span style="color:red">(Missing)</span>

**Macro**
* <span style="color:red">(Missing)</span>

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## average_distance_of_n_closest_neighbors_map
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean averageDistanceOfNClosestNeighborsMap(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3)

**clEsperantoJ**
* ClearCLBuffer average_distance_of_n_closest_neighbors_map(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3)

**Macro**
* Ext.CLIJx_averageDistanceOfNClosestNeighborsMap(Image input, ByRef Image destination, Number n)

**pyclesperanto**
* average_distance_of_n_closest_neighbors_map(labels : Image, distance_map : Image = None, n : int = 1):

## average_distance_of_n_closest_points
**CLIJ2**
* boolean averageDistanceOfNClosestPoints(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer average_distance_of_n_closest_points(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3)

**Macro**
* Ext.CLIJ2_averageDistanceOfNClosestPoints(Image distance_matrix, ByRef Image distance_list_destination, Number n_closest_points_to_find)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## average_distance_of_n_far_off_points
**CLIJ2**
* boolean averageDistanceOfNFarOffPoints(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer average_distance_of_n_far_off_points(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3)

**Macro**
* Ext.CLIJ2_averageDistanceOfNFarOffPoints(Image distance_matrix, ByRef Image distance+_list_destination, Number n_far_off_points_to_find)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## average_distance_of_touching_neighbors
**CLIJ2**
* boolean averageDistanceOfTouchingNeighbors(ClearCLBuffer distance_matrix, ClearCLBuffer touch_matrix, ClearCLBuffer average_distancelist_destination)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer average_distance_of_touching_neighbors(ClearCLBuffer distance_matrix, ClearCLBuffer touch_matrix, ClearCLBuffer average_distancelist_destination)

**Macro**
* Ext.CLIJ2_averageDistanceOfTouchingNeighbors(Image distance_matrix, Image touch_matrix, ByRef Image average_distancelist_destination)

**pyclesperanto**
* average_distance_of_touching_neighbors(distance_matrix : Image, touch_matrix: Image, average_distancelist_destination: Image = None):

## average_neighbor_distance_map
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean averageNeighborDistanceMap(ClearCLBuffer input, ClearCLBuffer destination)

**clEsperantoJ**
* ClearCLBuffer average_neighbor_distance_map(ClearCLBuffer input, ClearCLBuffer destination)

**Macro**
* Ext.CLIJx_averageNeighborDistanceMap(Image input, ByRef Image destination)

**pyclesperanto**
* average_neighbor_distance_map(labels : Image, distance_map : Image = None):

## average_distance_of_n_far_off_distances
<span style="color:green">(experimental)</span>

**pyclesperanto**
* average_distance_of_n_far_off_distances(distance_matrix : Image, distance_vector_destination: Image = None, n : int = 1):

## average_distance_of_n_shortest_distances
<span style="color:green">(experimental)</span>

**pyclesperanto**
* average_distance_of_n_shortest_distances(distance_matrix : Image, distance_vector_destination: Image = None, n : int = 1):

## bilateral
<span style="color:orange">(deprecated)</span>

**CLIJx**
* boolean bilateral(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3, double arg4, double arg5, double arg6, double arg7)

**Macro**
* Ext.CLIJx_bilateral(Image input, ByRef Image destination, Number radiusX, Number radiusY, Number radiusZ, Number sigma_intensity, Number sigma_space)

## binary_and
**CLIJ2**
* boolean binaryAnd(ClearCLImageInterface operand1, ClearCLImageInterface operand2, ClearCLImageInterface destination)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface binary_and(ClearCLImageInterface operand1, ClearCLImageInterface operand2, ClearCLImageInterface destination)

**Macro**
* Ext.CLIJ2_binaryAnd(Image operand1, Image operand2, ByRef Image destination)

**pyclesperanto**
* binary_and(operand1 : Image, operand2 : Image, destination : Image = None):

## binary_edge_detection
**CLIJ2**
* boolean binaryEdgeDetection(ClearCLImageInterface source, ClearCLImageInterface destination)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface binary_edge_detection(ClearCLImageInterface source, ClearCLImageInterface destination)

**Macro**
* Ext.CLIJ2_binaryEdgeDetection(Image source, ByRef Image destination)

**pyclesperanto**
* binary_edge_detection(source : Image, destination : Image = None):

## binary_fill_holes
**CLIJ2**
* boolean binaryFillHoles(ClearCLImageInterface source, ClearCLImageInterface destination)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface binary_fill_holes(ClearCLImageInterface source, ClearCLImageInterface destination)

**Macro**
* Ext.CLIJ2_binaryFillHoles(Image source, ByRef Image destination)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## binary_fill_holes_slice_by_slice
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean binaryFillHolesSliceBySlice(ClearCLImageInterface source, ClearCLImageInterface destination)

**clEsperantoJ**
* ClearCLImageInterface binary_fill_holes_slice_by_slice(ClearCLImageInterface source, ClearCLImageInterface destination)

**Macro**
* Ext.CLIJx_binaryFillHolesSliceBySlice(Image source, ByRef Image destination)

## binary_intersection
**CLIJ2**
* boolean binaryIntersection(ClearCLBuffer operand1, ClearCLBuffer operand2, ClearCLBuffer destination)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer binary_intersection(ClearCLBuffer operand1, ClearCLBuffer operand2, ClearCLBuffer destination)

**Macro**
* Ext.CLIJ2_binaryIntersection(Image operand1, Image operand2, ByRef Image destination)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## binary_not
**CLIJ2**
* boolean binaryNot(ClearCLImageInterface source, ClearCLImageInterface destination)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface binary_not(ClearCLImageInterface source, ClearCLImageInterface destination)

**Macro**
* Ext.CLIJ2_binaryNot(Image source, ByRef Image destination)

**pyclesperanto**
* binary_not(source : Image, destination : Image = None):

## binary_or
**CLIJ2**
* boolean binaryOr(ClearCLImageInterface operand1, ClearCLImageInterface operand2, ClearCLImageInterface destination)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface binary_or(ClearCLImageInterface operand1, ClearCLImageInterface operand2, ClearCLImageInterface destination)

**Macro**
* Ext.CLIJ2_binaryOr(Image operand1, Image operand2, ByRef Image destination)

**pyclesperanto**
* binary_or(operand1 : Image, operand2 : Image, destination : Image = None):

## binary_subtract
**CLIJ2**
* boolean binarySubtract(ClearCLImageInterface minuend, ClearCLImageInterface subtrahend, ClearCLImageInterface destination)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface binary_subtract(ClearCLImageInterface minuend, ClearCLImageInterface subtrahend, ClearCLImageInterface destination)

**Macro**
* Ext.CLIJ2_binarySubtract(Image minuend, Image subtrahend, ByRef Image destination)

**pyclesperanto**
* binary_subtract(minuend : Image, subtrahend : Image, destination : Image = None):

## binary_union
**CLIJ2**
* boolean binaryUnion(ClearCLBuffer operand1, ClearCLBuffer operand2, ClearCLBuffer destination)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer binary_union(ClearCLBuffer operand1, ClearCLBuffer operand2, ClearCLBuffer destination)

**Macro**
* Ext.CLIJ2_binaryUnion(Image operand1, Image operand2, ByRef Image destination)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## binary_weka_pixel_classifier
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean binaryWekaPixelClassifier(ClearCLBuffer input, ClearCLBuffer destination, String features, String modelfilename)

**clEsperantoJ**
* ClearCLBuffer binary_weka_pixel_classifier(ClearCLBuffer input, ClearCLBuffer destination, String features, String modelfilename)

**Macro**
* Ext.CLIJx_binaryWekaPixelClassifier(Image input, ByRef Image destination, String features, String modelfilename)

## binary_xor
**CLIJ2**
* boolean binaryXOr(ClearCLImageInterface operand1, ClearCLImageInterface operand2, ClearCLImageInterface destination)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface binary_xor(ClearCLImageInterface operand1, ClearCLImageInterface operand2, ClearCLImageInterface destination)

**Macro**
* Ext.CLIJ2_binaryXOr(Image operand1, Image operand2, ByRef Image destination)

**pyclesperanto**
* binary_xor(operand1 : Image, operand2 : Image, destination : Image = None):

## block_enumerate
<span style="color:green">(experimental)</span>

**pyclesperanto**
* block_enumerate(src : Image, src_sums : Image, dst : Image = sum, blocksize : int = 256):

## blur
<span style="color:orange">(deprecated)</span>

**CLIJ2**
* boolean blur(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3, double arg4)
* boolean blur(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3, double arg4, double arg5)

**Macro**
* Ext.CLIJ2_blur2D(Image source, ByRef Image destination, Number sigma_x, Number sigma_y)

## blur
<span style="color:orange">(deprecated)</span>

**CLIJ2**
* boolean blur2D(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3, double arg4)

**Macro**
* Ext.CLIJ2_blur2D(Image source, ByRef Image destination, Number sigma_x, Number sigma_y)

## blur
<span style="color:orange">(deprecated)</span>

**CLIJ2**
* boolean blur3D(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3, double arg4, double arg5)

**Macro**
* Ext.CLIJ2_blur3D(Image source, ByRef Image destination, Number sigma_x, Number sigma_y, Number sigma_z)

## blur_slice_by_slice
<span style="color:orange">(deprecated)</span>

**CLIJx**
* boolean blurSliceBySlice(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3, double arg4)
* boolean blurSliceBySlice(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3, double arg4, double arg5, double arg6)

**Macro**
* Ext.CLIJ2_blur3DSliceBySlice(Image source, ByRef Image destination, Number sigmaX, Number sigmaY)

## bonej_connected_components_labeling
<span style="color:green">(experimental)</span>

**Macro**
* Ext.CLIJx_boneJConnectedComponentsLabeling(Image input, ByRef Image destination)

## bonej_skeletonize
<span style="color:green">(experimental)</span>

**Macro**
* Ext.CLIJx_boneJSkeletonize3D(Image input, ByRef Image destination)

## bottom_hat_box
**CLIJ2**
* boolean bottomHatBox(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3, double arg4, double arg5)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer bottom_hat_box(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3, double arg4, double arg5)

**Macro**
* Ext.CLIJ2_bottomHatBox(Image input, ByRef Image destination, Number radiusX, Number radiusY, Number radiusZ)

**pyclesperanto**
* bottom_hat_box(input : Image, destination : Image = None, radius_x : float = 1, radius_y : float = 1, radius_z : float = 1):

## bottom_hat_sphere
**CLIJ2**
* boolean bottomHatSphere(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3, double arg4, double arg5)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer bottom_hat_sphere(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3, double arg4, double arg5)

**Macro**
* Ext.CLIJ2_bottomHatSphere(Image input, ByRef Image destination, Number radiusX, Number radiusY, Number radiusZ)

**pyclesperanto**
* bottom_hat_sphere(input : Image, destination : Image = None, radius_x : float = 1, radius_y : float = 1, radius_z : float = 1):

## bounding_box
**CLIJ2**
* double[] boundingBox(ClearCLBuffer source)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer bounding_box(ClearCLBuffer source)

**Macro**
* Ext.CLIJ2_boundingBox(Image source)

**pyclesperanto**
* bounding_box(source : Image):

## capture_webcam_image
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean captureWebcamImage(ClearCLBuffer arg1, double arg2, double arg3, double arg4)

**clEsperantoJ**
* ClearCLBuffer capture_webcam_image(ClearCLBuffer arg1, double arg2, double arg3, double arg4)

**Macro**
* Ext.CLIJx_captureWebcamImage(ByRef Image destination, Number cameraDeviceIndex, Number imageWidth, Number imageHeight)

## center_of_mass
**CLIJ2**
* double[] centerOfMass(ClearCLBuffer source)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer center_of_mass(ClearCLBuffer source)

**Macro**
* Ext.CLIJ2_centerOfMass(Image source)

**pyclesperanto**
* center_of_mass(source : Image):

## centroids_of_background_and_labels
**CLIJ2**
* boolean centroidsOfBackgroundAndLabels(ClearCLBuffer source, ClearCLBuffer pointlist_destination)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer centroids_of_background_and_labels(ClearCLBuffer source, ClearCLBuffer pointlist_destination)

**Macro**
* Ext.CLIJ2_centroidsOfBackgroundAndLabels(Image source, ByRef Image pointlist_destination)

**pyclesperanto**
* centroids_of_background_and_labels(source:Image, pointlist_destination :Image = None):

## centroids_of_labels
**CLIJ2**
* boolean centroidsOfLabels(ClearCLBuffer source, ClearCLBuffer pointlist_destination)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer centroids_of_labels(ClearCLBuffer source, ClearCLBuffer pointlist_destination)

**Macro**
* Ext.CLIJ2_centroidsOfLabels(Image source, ByRef Image pointlist_destination)

**pyclesperanto**
* centroids_of_labels(labels:Image, pointlist_destination :Image = None, include_background :bool = False):

## cl_info
**CLIJ2**
* String clinfo()

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* <span style="color:red">(Missing)</span>

**Macro**
* <span style="color:red">(Missing)</span>

**pyclesperanto**
* cl_info():

## cl_image
<span style="color:green">(experimental)</span>

## clear
**CLIJ2**
* void clear()
* clear();
* clear();
* clear();

**CLIJx**
* clear();

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* void clear()

**Macro**
* <span style="color:red">(Missing)</span>

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## close_index_gaps_in_label_map
**CLIJ2**
* boolean closeIndexGapsInLabelMap(ClearCLBuffer labeling_input, ClearCLImageInterface labeling_destination)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface close_index_gaps_in_label_map(ClearCLBuffer labeling_input, ClearCLImageInterface labeling_destination)

**Macro**
* Ext.CLIJ2_closeIndexGapsInLabelMap(Image labeling_input, ByRef Image labeling_destination)

**pyclesperanto**
* close_index_gaps_in_label_map(input : Image, output : Image = None, blocksize = 4096):

## closing_box
**CLIJ2**
* boolean closingBox(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer closing_box(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3)

**Macro**
* Ext.CLIJ2_closingBox(Image input, ByRef Image destination, Number number_of_dilations_and_erosions)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## closing_diamond
**CLIJ2**
* boolean closingDiamond(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer closing_diamond(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3)

**Macro**
* Ext.CLIJ2_closingDiamond(Image input, ByRef Image destination, Number number_of_dilations_and_erotions)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## combine_horizontally
**CLIJ2**
* boolean combineHorizontally(ClearCLImageInterface stack1, ClearCLImageInterface stack2, ClearCLImageInterface destination)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface combine_horizontally(ClearCLImageInterface stack1, ClearCLImageInterface stack2, ClearCLImageInterface destination)

**Macro**
* Ext.CLIJ2_combineHorizontally(Image stack1, Image stack2, ByRef Image destination)

**pyclesperanto**
* combine_horizontally(stack1 : Image, stack2 : Image, destination : Image = None):

## combine_vertically
**CLIJ2**
* boolean combineVertically(ClearCLImageInterface stack1, ClearCLImageInterface stack2, ClearCLImageInterface destination)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface combine_vertically(ClearCLImageInterface stack1, ClearCLImageInterface stack2, ClearCLImageInterface destination)

**Macro**
* Ext.CLIJ2_combineVertically(Image stack1, Image stack2, ByRef Image destination)

**pyclesperanto**
* combine_vertically(stack1 : Image, stack2 : Image, destination : Image = None):

## concatenate_stacks
**CLIJ2**
* boolean concatenateStacks(ClearCLImageInterface stack1, ClearCLImageInterface stack2, ClearCLImageInterface destination)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface concatenate_stacks(ClearCLImageInterface stack1, ClearCLImageInterface stack2, ClearCLImageInterface destination)

**Macro**
* Ext.CLIJ2_concatenateStacks(Image stack1, Image stack2, ByRef Image destination)

**pyclesperanto**
* concatenate_stacks(stack1 : Image, stack2 : Image, destination : Image = None):

## connected_components_labeling
<span style="color:orange">(deprecated)</span>

**CLIJ2**
* boolean connectedComponentsLabeling(ClearCLImageInterface binary_input, ClearCLImageInterface labeling_destination)

**Macro**
* Ext.CLIJ2_connectedComponentsLabeling(Image binary_input, ByRef Image labeling_destination)

## connected_components_labeling_box
**CLIJ2**
* boolean connectedComponentsLabelingBox(ClearCLImageInterface binary_input, ClearCLImageInterface labeling_destination)
* boolean connectedComponentsLabelingBox(ClearCLImageInterface arg1, ClearCLImageInterface arg2, boolean arg3)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface connected_components_labeling_box(ClearCLImageInterface binary_input, ClearCLImageInterface labeling_destination)
* ClearCLImageInterface connected_components_labeling_box(ClearCLImageInterface arg1, ClearCLImageInterface arg2, boolean arg3)

**Macro**
* Ext.CLIJ2_connectedComponentsLabelingBox(Image binary_input, ByRef Image labeling_destination)

**pyclesperanto**
* connected_components_labeling_box(binary_input : Image, labeling_destination : Image = None, flagged_nonzero_minimum_filter : callable = nonzero_minimum_box):

## connected_components_labeling_diamond
**CLIJ2**
* boolean connectedComponentsLabelingDiamond(ClearCLImageInterface binary_input, ClearCLImageInterface labeling_destination)
* boolean connectedComponentsLabelingDiamond(ClearCLImageInterface arg1, ClearCLImageInterface arg2, boolean arg3)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface connected_components_labeling_diamond(ClearCLImageInterface binary_input, ClearCLImageInterface labeling_destination)
* ClearCLImageInterface connected_components_labeling_diamond(ClearCLImageInterface arg1, ClearCLImageInterface arg2, boolean arg3)

**Macro**
* Ext.CLIJ2_connectedComponentsLabelingDiamond(Image binary_input, ByRef Image labeling_destination)

**pyclesperanto**
* connected_components_labeling_diamond(binary_input: Image, labeling_destination: Image = None):

## connected_components_labeling_inplace
<span style="color:orange">(deprecated)</span>

**CLIJx**
* boolean connectedComponentsLabelingInplace(ClearCLBuffer binary_source_labeling_destination)

**Macro**
* Ext.CLIJx_connectedComponentsLabelingInplace(Image binary_source_labeling_destination)

## convert_float
<span style="color:green">(experimental)</span>

## convert_r_g_b_stack_to_gray_slice
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean convertRGBStackToGraySlice(ClearCLBuffer stack_source, ClearCLBuffer slice_destination)

**clEsperantoJ**
* ClearCLBuffer convert_r_g_b_stack_to_gray_slice(ClearCLBuffer stack_source, ClearCLBuffer slice_destination)

**Macro**
* Ext.CLIJx_convertRGBStackToGraySlice(Image stack_source, ByRef Image slice_destination)

## convert_to_float
<span style="color:green">(experimental)</span>

**Macro**
* Ext.CLIJx_convertToFloat(Image input, ByRef Image destination)

## convert_to_binary
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean convertToImageJBinary(ClearCLBuffer arg1, ClearCLBuffer arg2)
* boolean convertToImageJBinary(ClearCLImage arg1, ClearCLImage arg2)

## convert_to_unsigned_byte
<span style="color:green">(experimental)</span>

**Macro**
* Ext.CLIJx_convertToUnsignedByte(Image input, ByRef Image destination)

## convert_to_unsigned_short
<span style="color:green">(experimental)</span>

**Macro**
* Ext.CLIJx_convertToUnsignedShort(Image input, ByRef Image destination)

## convert_u_int16
<span style="color:green">(experimental)</span>

## convert_u_int8
<span style="color:green">(experimental)</span>

## convolve
**CLIJ2**
* boolean convolve(ClearCLBuffer source, ClearCLBuffer convolution_kernel, ClearCLBuffer destination)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer convolve(ClearCLBuffer source, ClearCLBuffer convolution_kernel, ClearCLBuffer destination)

**Macro**
* Ext.CLIJ2_convolve(Image source, Image convolution_kernel, ByRef Image destination)

**pyclesperanto**
* convolve(source : Image, convolution_kernel : Image, destination : Image = None):

## copy
**CLIJ2**
* boolean copy(ClearCLImageInterface source, ClearCLImageInterface destination)

**CLIc**
* void Copy(Buffer&, Buffer&);

**clEsperantoJ**
* ClearCLImageInterface copy(ClearCLImageInterface source, ClearCLImageInterface destination)

**Macro**
* Ext.CLIJ2_copy(Image source, ByRef Image destination)

**pyclesperanto**
* copy(source : Image, destination : Image = None):

## copy_slice
**CLIJ2**
* boolean copySlice(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface copy_slice(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3)

**Macro**
* Ext.CLIJ2_copySlice(Image source, ByRef Image destination, Number slice_index)

**pyclesperanto**
* copy_slice(source : Image, destination : Image = None, slice_index : int = 0):

## cosinus
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean cosinus(ClearCLImageInterface source, ClearCLImageInterface destination)

**clEsperantoJ**
* ClearCLImageInterface cosinus(ClearCLImageInterface source, ClearCLImageInterface destination)

**Macro**
* Ext.CLIJx_cosinus(Image source, ByRef Image destination)

## count_non_zero_pixels
**CLIJ2**
* double countNonZeroPixels(ClearCLBuffer source)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer count_non_zero_pixels(ClearCLBuffer source)

**Macro**
* Ext.CLIJ2_countNonZeroPixels(Image source)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## count_non_zero_pixels_sphere
**CLIJ2**
* boolean countNonZeroPixels2DSphere(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3, double arg4)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer count_non_zero_pixels2d_sphere(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3, double arg4)

**Macro**
* Ext.CLIJ2_countNonZeroPixels2DSphere(Image source, ByRef Image destination, Number radiusX, Number radiusY)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## count_non_zero_pixels_locally
**CLIJ2**
* boolean countNonZeroPixelsLocally(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3, double arg4)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* <span style="color:red">(Missing)</span>

**Macro**
* <span style="color:red">(Missing)</span>

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## count_non_zero_pixels_locally_slice_by_slice
**CLIJ2**
* boolean countNonZeroPixelsLocallySliceBySlice(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3, double arg4)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* <span style="color:red">(Missing)</span>

**Macro**
* <span style="color:red">(Missing)</span>

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## count_non_zero_pixels_slice_by_slice_sphere
**CLIJ2**
* boolean countNonZeroPixelsSliceBySliceSphere(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3, double arg4)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer count_non_zero_pixels_slice_by_slice_sphere(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3, double arg4)

**Macro**
* Ext.CLIJ2_countNonZeroPixelsSliceBySliceSphere(Image source, ByRef Image destination, Number radiusX, Number radiusY)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## count_non_zero_voxels_sphere
**CLIJ2**
* boolean countNonZeroVoxels3DSphere(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3, double arg4, double arg5)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer count_non_zero_voxels3d_sphere(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3, double arg4, double arg5)

**Macro**
* Ext.CLIJ2_countNonZeroVoxels3DSphere(Image source, ByRef Image destination, Number radiusX, Number radiusY, Number radiusZ)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## count_non_zero_voxels_locally
**CLIJ2**
* boolean countNonZeroVoxelsLocally(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3, double arg4, double arg5)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* <span style="color:red">(Missing)</span>

**Macro**
* <span style="color:red">(Missing)</span>

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## count_touching_neighbors
**CLIJ2**
* boolean countTouchingNeighbors(ClearCLBuffer touch_matrix, ClearCLBuffer touching_neighbors_count_destination)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer count_touching_neighbors(ClearCLBuffer touch_matrix, ClearCLBuffer touching_neighbors_count_destination)

**Macro**
* Ext.CLIJ2_countTouchingNeighbors(Image touch_matrix, ByRef Image touching_neighbors_count_destination)

**pyclesperanto**
* count_touching_neighbors(touch_matrix: Image, touching_neighbors_count_destination: Image = None):

## create
<span style="color:green">(experimental)</span>

**pyclesperanto**
* create(dimensions):

## create
<span style="color:green">(experimental)</span>

**pyclesperanto**
* create(dimensions):

## crop
**CLIJ2**
* boolean crop(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3, double arg4)
* boolean crop(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3, double arg4, double arg5)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface crop(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3, double arg4)
* ClearCLImageInterface crop(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3, double arg4, double arg5)

**Macro**
* Ext.CLIJ2_crop2D(Image source, ByRef Image destination, Number start_x, Number start_z, Number width, Number height)

**pyclesperanto**
* crop(input : Image, output : Image = None, start_x : int = 0, start_y : int = 0, start_z : int = 0, width : int = 1, height : int = 1, depth : int = 1):

## crop
**CLIJ2**
* boolean crop2D(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3, double arg4)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface crop2d(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3, double arg4)

**Macro**
* Ext.CLIJ2_crop2D(Image source, ByRef Image destination, Number start_x, Number start_z, Number width, Number height)

**pyclesperanto**
* crop(input : Image, output : Image = None, start_x : int = 0, start_y : int = 0, start_z : int = 0, width : int = 1, height : int = 1, depth : int = 1):

## crop
**CLIJ2**
* boolean crop3D(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3, double arg4, double arg5)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface crop3d(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3, double arg4, double arg5)

**Macro**
* Ext.CLIJ2_crop3D(Image source, ByRef Image destination, Number start_x, Number start_y, Number start_z, Number width, Number height, Number depth)

**pyclesperanto**
* crop(input : Image, output : Image = None, start_x : int = 0, start_y : int = 0, start_z : int = 0, width : int = 1, height : int = 1, depth : int = 1):

## cross_correlation
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean crossCorrelation(ClearCLBuffer arg1, ClearCLBuffer arg2, ClearCLBuffer arg3, ClearCLBuffer arg4, ClearCLBuffer arg5, double arg6, double arg7, double arg8)
* boolean crossCorrelation(ClearCLImage arg1, ClearCLImage arg2, ClearCLImage arg3, ClearCLImage arg4, ClearCLImage arg5, double arg6, double arg7, double arg8)

**clEsperantoJ**
* ClearCLBuffer cross_correlation(ClearCLBuffer arg1, ClearCLBuffer arg2, ClearCLBuffer arg3, ClearCLBuffer arg4, ClearCLBuffer arg5, double arg6, double arg7, double arg8)
* ClearCLImage cross_correlation(ClearCLImage arg1, ClearCLImage arg2, ClearCLImage arg3, ClearCLImage arg4, ClearCLImage arg5, double arg6, double arg7, double arg8)

**Macro**
* Ext.CLIJx_crossCorrelation(Image input1, Image meanInput1, Image input2, Image meanInput2, ByRef Image destination, Number radius, Number deltaPos, Number dimension)

## custom_operation
**CLIJ2**
* boolean customOperation(String arg1, String arg2, HashMap arg3)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* boolean custom_operation(String arg1, String arg2, HashMap arg3)

**Macro**
* Ext.CLIJ2_customOperation(String operation_code, String global_code, Array image_parameters)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## cylinder_transform
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean cylinderTransform(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3, double arg4, double arg5, double arg6)

**clEsperantoJ**
* ClearCLBuffer cylinder_transform(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3, double arg4, double arg5, double arg6)

**Macro**
* Ext.CLIJx_cylinderTransform(Image input, ByRef Image destination, Number number_of_angles, Number delta_angle_in_degrees, Number relative_center_x, Number relative_center_z)

## deformable_registration
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean deformableRegistration2D(ClearCLBuffer arg1, ClearCLBuffer arg2, ClearCLBuffer arg3, double arg4, double arg5)

**clEsperantoJ**
* ClearCLBuffer deformable_registration2d(ClearCLBuffer arg1, ClearCLBuffer arg2, ClearCLBuffer arg3, double arg4, double arg5)

**Macro**
* Ext.CLIJx_deformableRegistration2D(Image input1, Image input2, ByRef Image destination, Number maxDeltaX, Number maxDeltaY)

## degrees_to_radians
<span style="color:green">(experimental)</span>

**pyclesperanto**
* degrees_to_radians(source : Image, destination : Image = None):

## depth_color_projection
**CLIJ2**
* boolean depthColorProjection(ClearCLImageInterface arg1, ClearCLBuffer arg2, ClearCLBuffer arg3, double arg4, double arg5)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer depth_color_projection(ClearCLImageInterface arg1, ClearCLBuffer arg2, ClearCLBuffer arg3, double arg4, double arg5)

**Macro**
* Ext.CLIJ2_depthColorProjection(Image source, Image lookup_table, ByRef Image destination_max, Number min_display_intensity, Number max_display_intensity)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## detect_and_label_maxima
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean detectAndLabelMaxima(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3, double arg4, double arg5, boolean arg6)

**clEsperantoJ**
* ClearCLBuffer detect_and_label_maxima(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3, double arg4, double arg5, boolean arg6)

**Macro**
* Ext.CLIJx_detectAndLabelMaxima(Image input, ByRef Image destination, Number sigma_x, Numer sigma_y, Number sigma_z, Boolean invert)

## detect_label_edges
**CLIJ2**
* boolean detectLabelEdges(ClearCLImageInterface label_map, ClearCLBuffer edge_image_destination)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer detect_label_edges(ClearCLImageInterface label_map, ClearCLBuffer edge_image_destination)

**Macro**
* Ext.CLIJ2_detectLabelEdges(Image label_map, ByRef Image edge_image_destination)

**pyclesperanto**
* detect_label_edges(label_source :Image, binary_destination :Image = None):

## detect_maxima_box
**CLIJ2**
* boolean detectMaxima2DBox(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3, double arg4)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer detect_maxima2d_box(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3, double arg4)

**Macro**
* Ext.CLIJ2_detectMaxima2DBox(Image source, ByRef Image destination, Number radiusX, Number radiusY)

**pyclesperanto**
* detect_maxima_box(source :Image, destination :Image = None, radius_x : int = 0, radius_y : int = 0, radius_z : int = 0):

## detect_maxima_box
**CLIJ2**
* boolean detectMaxima3DBox(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3, double arg4, double arg5)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer detect_maxima3d_box(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3, double arg4, double arg5)

**Macro**
* Ext.CLIJ2_detectMaxima3DBox(Image source, ByRef Image destination, Number radiusX, Number radiusY, Number radiusZ)

**pyclesperanto**
* detect_maxima_box(source :Image, destination :Image = None, radius_x : int = 0, radius_y : int = 0, radius_z : int = 0):

## detect_maxima_box
**CLIJ2**
* boolean detectMaximaBox(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3)
* boolean detectMaximaBox(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3, double arg4, double arg5)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface detect_maxima_box(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3, double arg4, double arg5)

**Macro**
* Ext.CLIJ2_detectMaximaBox(Image source, ByRef Image destination, Number radius)

**pyclesperanto**
* detect_maxima_box(source :Image, destination :Image = None, radius_x : int = 0, radius_y : int = 0, radius_z : int = 0):

## detect_maxima_slice_by_slice_box
**CLIJ2**
* boolean detectMaximaSliceBySliceBox(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3, double arg4)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer detect_maxima_slice_by_slice_box(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3, double arg4)

**Macro**
* Ext.CLIJ2_detectMaximaSliceBySliceBox(Image source, ByRef Image destination, Number radiusX, Number radiusY)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## detect_minima_box
**CLIJ2**
* boolean detectMinima2DBox(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3, double arg4)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer detect_minima2d_box(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3, double arg4)

**Macro**
* Ext.CLIJ2_detectMinima2DBox(Image source, ByRef Image destination, Number radiusX, Number radiusY)

**pyclesperanto**
* detect_minima_box(source :Image, destination :Image = None, radius_x : int = 0, radius_y : int = 0, radius_z : int = 0):

## detect_minima_box
**CLIJ2**
* boolean detectMinima3DBox(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3, double arg4, double arg5)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer detect_minima3d_box(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3, double arg4, double arg5)

**Macro**
* Ext.CLIJ2_detectMinima3DBox(Image source, ByRef Image destination, Number radiusX, Number radiusY, Number radiusZ)

**pyclesperanto**
* detect_minima_box(source :Image, destination :Image = None, radius_x : int = 0, radius_y : int = 0, radius_z : int = 0):

## detect_minima_box
**CLIJ2**
* boolean detectMinimaBox(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3)
* boolean detectMinimaBox(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3, double arg4, double arg5)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface detect_minima_box(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3, double arg4, double arg5)

**Macro**
* Ext.CLIJ2_detectMinimaBox(Image source, ByRef Image destination, Number radius)

**pyclesperanto**
* detect_minima_box(source :Image, destination :Image = None, radius_x : int = 0, radius_y : int = 0, radius_z : int = 0):

## detect_minima_slice_by_slice_box
**CLIJ2**
* boolean detectMinimaSliceBySliceBox(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3, double arg4)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer detect_minima_slice_by_slice_box(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3, double arg4)

**Macro**
* Ext.CLIJ2_detectMinimaSliceBySliceBox(Image source, ByRef Image destination, Number radiusX, Number RadiusY)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## detect_optima
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean detectOptima(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3, boolean arg4)
* boolean detectOptima(ClearCLImage arg1, ClearCLImage arg2, double arg3, boolean arg4)

## detect_optima_slice_by_slice
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean detectOptimaSliceBySlice(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3, boolean arg4)
* boolean detectOptimaSliceBySlice(ClearCLImage arg1, ClearCLImage arg2, double arg3, boolean arg4)

## difference_of_gaussian
**CLIJ2**
* boolean differenceOfGaussian(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3, double arg4, double arg5, double arg6)
* boolean differenceOfGaussian(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3, double arg4, double arg5, double arg6, double arg7, double arg8)

**CLIJx**
* boolean differenceOfGaussian(ClearCLImage arg1, ClearCLImage arg2, double arg3, double arg4, double arg5)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer difference_of_gaussian(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3, double arg4, double arg5, double arg6)
* ClearCLBuffer difference_of_gaussian(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3, double arg4, double arg5, double arg6, double arg7, double arg8)

**Macro**
* Ext.CLIJ2_differenceOfGaussian2D(Image input, ByRef Image destination, Number sigma1x, Number sigma1y, Number sigma2x, Number sigma2y)

**pyclesperanto**
* difference_of_gaussian(input : Image, destination : Image = None, sigma1_x : float = 2, sigma1_y : float = 2, sigma1_z : float = 2, sigma2_x : float = 2, sigma2_y : float = 2, sigma2_z : float = 2):

## difference_of_gaussian
**CLIJ2**
* boolean differenceOfGaussian2D(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3, double arg4, double arg5, double arg6)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer difference_of_gaussian2d(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3, double arg4, double arg5, double arg6)

**Macro**
* Ext.CLIJ2_differenceOfGaussian2D(Image input, ByRef Image destination, Number sigma1x, Number sigma1y, Number sigma2x, Number sigma2y)

**pyclesperanto**
* difference_of_gaussian(input : Image, destination : Image = None, sigma1_x : float = 2, sigma1_y : float = 2, sigma1_z : float = 2, sigma2_x : float = 2, sigma2_y : float = 2, sigma2_z : float = 2):

## difference_of_gaussian
**CLIJ2**
* boolean differenceOfGaussian3D(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3, double arg4, double arg5, double arg6, double arg7, double arg8)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer difference_of_gaussian3d(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3, double arg4, double arg5, double arg6, double arg7, double arg8)

**Macro**
* Ext.CLIJ2_differenceOfGaussian3D(Image input, ByRef Image destination, Number sigma1x, Number sigma1y, Number sigma1z, Number sigma2x, Number sigma2y, Number sigma2z)

**pyclesperanto**
* difference_of_gaussian(input : Image, destination : Image = None, sigma1_x : float = 2, sigma1_y : float = 2, sigma1_z : float = 2, sigma2_x : float = 2, sigma2_y : float = 2, sigma2_z : float = 2):

## difference_of_gaussian_inplace
<span style="color:orange">(deprecated)</span>

**CLIJx**
* boolean differenceOfGaussianInplace3D(ClearCLBuffer arg1, double arg2, double arg3, double arg4, double arg5, double arg6, double arg7)

**Macro**
* Ext.CLIJx_differenceOfGaussianInplace3D(Image input_and_destination, Number sigma1x, Number sigma1y, Number sigma1z, Number sigma2x, Number sigma2y, Number sigma2z)

## different
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean different(ClearCLBuffer arg1, ClearCLBuffer arg2, ClearCLBuffer arg3, double arg4)

**clEsperantoJ**
* ClearCLBuffer different(ClearCLBuffer arg1, ClearCLBuffer arg2, ClearCLBuffer arg3, double arg4)

**Macro**
* Ext.CLIJx_different(Image input_image1, Image input_image2, ByRef Image binary_destination, Number tolerance)

## dilate_box
**CLIJ2**
* boolean dilateBox(ClearCLImageInterface source, ClearCLImageInterface destination)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface dilate_box(ClearCLImageInterface source, ClearCLImageInterface destination)

**Macro**
* Ext.CLIJ2_dilateBox(Image source, ByRef Image destination)

**pyclesperanto**
* dilate_box(source : Image, destination : Image = None):

## dilate_box_slice_by_slice
**CLIJ2**
* boolean dilateBoxSliceBySlice(ClearCLImageInterface source, ClearCLImageInterface destination)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface dilate_box_slice_by_slice(ClearCLImageInterface source, ClearCLImageInterface destination)

**Macro**
* Ext.CLIJ2_dilateBoxSliceBySlice(Image source, ByRef Image destination)

**pyclesperanto**
* dilate_box_slice_by_slice(src : Image, dst : Image = None):

## dilate_sphere
**CLIJ2**
* boolean dilateSphere(ClearCLImageInterface source, ClearCLImageInterface destination)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface dilate_sphere(ClearCLImageInterface source, ClearCLImageInterface destination)

**Macro**
* Ext.CLIJ2_dilateSphere(Image source, ByRef Image destination)

**pyclesperanto**
* dilate_sphere(source : Image, destination : Image = None):

## dilate_sphere_slice_by_slice
**CLIJ2**
* boolean dilateSphereSliceBySlice(ClearCLImageInterface source, ClearCLImageInterface destination)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface dilate_sphere_slice_by_slice(ClearCLImageInterface source, ClearCLImageInterface destination)

**Macro**
* Ext.CLIJ2_dilateSphereSliceBySlice(Image source, ByRef Image destination)

**pyclesperanto**
* dilate_sphere_slice_by_slice(src : Image, dst : Image = None):

## distance_map
**CLIJ2**
* boolean distanceMap(ClearCLBuffer source, ClearCLBuffer destination)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer distance_map(ClearCLBuffer source, ClearCLBuffer destination)

**Macro**
* Ext.CLIJ2_distanceMap(Image source, ByRef Image destination)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## distance_matrix_to_mesh
**CLIJ2**
* boolean distanceMatrixToMesh(ClearCLBuffer arg1, ClearCLBuffer arg2, ClearCLBuffer arg3, double arg4)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer distance_matrix_to_mesh(ClearCLBuffer arg1, ClearCLBuffer arg2, ClearCLBuffer arg3, double arg4)

**Macro**
* Ext.CLIJ2_distanceMatrixToMesh(Image pointlist, Image distance_matrix, ByRef Image mesh_destination, Number maximum_distance)

**pyclesperanto**
* distance_matrix_to_mesh(pointlist : Image, distance_matrix : Image, mesh_destination : Image, maximum_distance : float = 1):

## divide_by_gaussian_background
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean divideByGaussianBackground(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3, double arg4, double arg5)

**clEsperantoJ**
* ClearCLImageInterface divide_by_gaussian_background(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3, double arg4, double arg5)

**Macro**
* Ext.CLIJx_divideByGaussianBackground(Image input, ByRef Image destination, Number sigmaX, Number sigmaY, Number sigmaZ)

**pyclesperanto**
* divide_by_gaussian_background(input : Image, destination : Image = None, sigma_x : float = 2, sigma_y : float = 2, sigma_z : float = 2):

## divide_images
**CLIJ2**
* boolean divideImages(ClearCLImageInterface divident, ClearCLImageInterface divisor, ClearCLImageInterface destination)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface divide_images(ClearCLImageInterface divident, ClearCLImageInterface divisor, ClearCLImageInterface destination)

**Macro**
* Ext.CLIJ2_divideImages(Image divident, Image divisor, ByRef Image destination)

**pyclesperanto**
* divide_images(divident : Image, divisor : Image, destination : Image = None):

## divide_scalar_by_image
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean divideScalarByImage(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3)

**clEsperantoJ**
* ClearCLImageInterface divide_scalar_by_image(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3)

**Macro**
* Ext.CLIJx_divideScalarByImage(Image image, ByRef Image destination, Number scalar)

## downsample
**CLIJ2**
* boolean downsample(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3, double arg4)
* boolean downsample(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3, double arg4, double arg5)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* <span style="color:red">(Missing)</span>

**Macro**
* Ext.CLIJ2_downsample2D(Image source, ByRef Image destination, Number factorX, Number factorY)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## downsample
**CLIJ2**
* boolean downsample2D(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3, double arg4)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* <span style="color:red">(Missing)</span>

**Macro**
* Ext.CLIJ2_downsample2D(Image source, ByRef Image destination, Number factorX, Number factorY)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## downsample
**CLIJ2**
* boolean downsample3D(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3, double arg4, double arg5)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* <span style="color:red">(Missing)</span>

**Macro**
* Ext.CLIJ2_downsample3D(Image source, ByRef Image destination, Number factorX, Number factorY, Number factorZ)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## downsample_slice_by_slice_half_median
**CLIJ2**
* boolean downsampleSliceBySliceHalfMedian(ClearCLImageInterface source, ClearCLImageInterface destination)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface downsample_slice_by_slice_half_median(ClearCLImageInterface source, ClearCLImageInterface destination)

**Macro**
* Ext.CLIJ2_downsampleSliceBySliceHalfMedian(Image source, ByRef Image destination)

**pyclesperanto**
* downsample_slice_by_slice_half_median(source : Image, destination : Image = None):

## draw_box
**CLIJ2**
* boolean drawBox(ClearCLImageInterface arg1, double arg2, double arg3, double arg4, double arg5)
* boolean drawBox(ClearCLImageInterface arg1, double arg2, double arg3, double arg4, double arg5, double arg6, double arg7)
* boolean drawBox(ClearCLImageInterface arg1, double arg2, double arg3, double arg4, double arg5, double arg6, double arg7, double arg8)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface draw_box(ClearCLImageInterface arg1, double arg2, double arg3, double arg4, double arg5)
* ClearCLImageInterface draw_box(ClearCLImageInterface arg1, double arg2, double arg3, double arg4, double arg5, double arg6, double arg7)
* ClearCLImageInterface draw_box(ClearCLImageInterface arg1, double arg2, double arg3, double arg4, double arg5, double arg6, double arg7, double arg8)

**Macro**
* Ext.CLIJ2_drawBox(ByRef Image destination, Number x, Number y, Number z, Number width, Number height, Number depth, Number value)

**pyclesperanto**
* draw_box(destination: Image, x: int = 0, y: int = 0, z: int = 0, width: int = 1, height: int = 1, depth: int = 1, value : float = 1):

## draw_distance_mesh_between_touching_labels
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean drawDistanceMeshBetweenTouchingLabels(ClearCLBuffer input, ClearCLBuffer destination)

**clEsperantoJ**
* ClearCLBuffer draw_distance_mesh_between_touching_labels(ClearCLBuffer input, ClearCLBuffer destination)

**Macro**
* Ext.CLIJx_drawDistanceMeshBetweenTouchingLabels(Image input, ByRef Image destination)

**pyclesperanto**
* draw_distance_mesh_between_touching_labels(labels : Image, distance_mesh_destination : Image = None):

## draw_line
**CLIJ2**
* boolean drawLine(ClearCLImageInterface arg1, double arg2, double arg3, double arg4, double arg5, double arg6, double arg7, double arg8)
* boolean drawLine(ClearCLImageInterface arg1, double arg2, double arg3, double arg4, double arg5, double arg6, double arg7, double arg8, double arg9)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface draw_line(ClearCLImageInterface arg1, double arg2, double arg3, double arg4, double arg5, double arg6, double arg7, double arg8)
* ClearCLImageInterface draw_line(ClearCLImageInterface arg1, double arg2, double arg3, double arg4, double arg5, double arg6, double arg7, double arg8, double arg9)

**Macro**
* Ext.CLIJ2_drawLine(ByRef Image destination, Number x1, Number y1, Number z1, Number x2, Number y2, Number z2, Number thickness, Number value)

**pyclesperanto**
* draw_line(destination : Image, x1 : float = 0, y1 : float = 0, z1 : float = 0, x2 : float = 1, y2 : float = 1, z2 : float = 1, thickness : float = 1, value : float = 1):

## draw_mesh_between_n_closest_labels
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean drawMeshBetweenNClosestLabels(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3)

**clEsperantoJ**
* ClearCLBuffer draw_mesh_between_n_closest_labels(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3)

**Macro**
* Ext.CLIJx_drawMeshBetweenNClosestLabels(Image input, ByRef Image destination, Number number_of_closest_labels)

**pyclesperanto**
* draw_mesh_between_n_closest_labels(labels : Image, mesh_target : Image = None, n : int = 1):

## draw_mesh_between_proximal_labels
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean drawMeshBetweenProximalLabels(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3)

**clEsperantoJ**
* ClearCLBuffer draw_mesh_between_proximal_labels(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3)

**Macro**
* Ext.CLIJx_drawMeshBetweenProximalLabels(Image input, ByRef Image destination, Number maximum_distance)

**pyclesperanto**
* draw_mesh_between_proximal_labels(labels : Image, mesh_target : Image = None, maximum_distance : int = 1):

## draw_mesh_between_touching_labels
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean drawMeshBetweenTouchingLabels(ClearCLBuffer input, ClearCLBuffer destination)

**clEsperantoJ**
* ClearCLBuffer draw_mesh_between_touching_labels(ClearCLBuffer input, ClearCLBuffer destination)

**Macro**
* Ext.CLIJx_drawMeshBetweenTouchingLabels(Image input, ByRef Image destination)

**pyclesperanto**
* draw_mesh_between_touching_labels(labels : Image, distance_mesh_destination : Image = None):

## draw_sphere
**CLIJ2**
* boolean drawSphere(ClearCLImageInterface arg1, double arg2, double arg3, double arg4, double arg5)
* boolean drawSphere(ClearCLImageInterface arg1, double arg2, double arg3, double arg4, double arg5, double arg6)
* boolean drawSphere(ClearCLImageInterface arg1, double arg2, double arg3, double arg4, double arg5, double arg6, double arg7)
* boolean drawSphere(ClearCLImageInterface arg1, double arg2, double arg3, double arg4, double arg5, double arg6, double arg7, double arg8)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface draw_sphere(ClearCLImageInterface arg1, double arg2, double arg3, double arg4, double arg5)
* ClearCLImageInterface draw_sphere(ClearCLImageInterface arg1, double arg2, double arg3, double arg4, double arg5, double arg6)
* ClearCLImageInterface draw_sphere(ClearCLImageInterface arg1, double arg2, double arg3, double arg4, double arg5, double arg6, double arg7)
* ClearCLImageInterface draw_sphere(ClearCLImageInterface arg1, double arg2, double arg3, double arg4, double arg5, double arg6, double arg7, double arg8)

**Macro**
* Ext.CLIJ2_drawSphere(ByRef Image destination, Number x, Number y, Number z, Number radius_x, Number radius_y, Number radius_z, Number value)

**pyclesperanto**
* draw_sphere(destination : Image, x : float = 0, y : float = 0, z : float = 0, radius_x : float = 1, radius_y : float = 1, radius_z : float = 1, value : float = 1):

## draw_touch_count_mesh_between_touching_labels
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean drawTouchCountMeshBetweenTouchingLabels(ClearCLBuffer input, ClearCLBuffer destination)

**clEsperantoJ**
* ClearCLBuffer draw_touch_count_mesh_between_touching_labels(ClearCLBuffer input, ClearCLBuffer destination)

**Macro**
* Ext.CLIJx_drawTouchCountMeshBetweenTouchingLabels(Image input, ByRef Image destination)

## draw_two_value_line
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean drawTwoValueLine(ClearCLBuffer arg1, double arg2, double arg3, double arg4, double arg5, double arg6, double arg7, double arg8, double arg9, double arg10)

**clEsperantoJ**
* ClearCLBuffer draw_two_value_line(ClearCLBuffer arg1, double arg2, double arg3, double arg4, double arg5, double arg6, double arg7, double arg8, double arg9, double arg10)

**Macro**
* Ext.CLIJx_drawTwoValueLine(ByRef Image destination, Number x1, Number y1, Number z1, Number x2, Number y2, Number z2, Number thickness, Number value1, Number value2)

## draw_angle_mesh_between_touching_labels
<span style="color:green">(experimental)</span>

**pyclesperanto**
* draw_angle_mesh_between_touching_labels(labels : Image, angle_mesh_destination : Image = None):

## drift_correction_by_center_of_mass_fixation
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean driftCorrectionByCenterOfMassFixation(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3, double arg4, double arg5)

**clEsperantoJ**
* ClearCLBuffer drift_correction_by_center_of_mass_fixation(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3, double arg4, double arg5)

**Macro**
* Ext.CLIJx_driftCorrectionByCenterOfMassFixation(Image input, ByRef Image destination, Number relative_center_x, Number relative_center_y, Number relative_center_z)

## drift_correction_by_centroid_fixation
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean driftCorrectionByCentroidFixation(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3, double arg4, double arg5, double arg6)

**clEsperantoJ**
* ClearCLBuffer drift_correction_by_centroid_fixation(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3, double arg4, double arg5, double arg6)

**Macro**
* Ext.CLIJx_driftCorrectionByCentroidFixation(Image input, ByRef Image destination, Number relative_center_x, Number relative_center_y, Number relative_center_z, Number threshold)

## entropy_box
**CLIJ2**
* boolean entropyBox(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3, double arg4, double arg5)
* boolean entropyBox(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3, double arg4, double arg5, double arg6, double arg7)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer entropy_box(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3, double arg4, double arg5)
* ClearCLBuffer entropy_box(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3, double arg4, double arg5, double arg6, double arg7)

**Macro**
* Ext.CLIJ2_entropyBox(Image input, ByRef Image destination, Number radiusX, number radiusY, Number radiusZ)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## equal
**CLIJ2**
* boolean equal(ClearCLImageInterface source1, ClearCLImageInterface source2, ClearCLImageInterface destination)

**CLIc**
* void Equal(Buffer&, Buffer&, Buffer&);

**clEsperantoJ**
* ClearCLImageInterface equal(ClearCLImageInterface source1, ClearCLImageInterface source2, ClearCLImageInterface destination)

**Macro**
* Ext.CLIJ2_equal(Image source1, Image source2, ByRef Image destination)

**pyclesperanto**
* equal(source1 : Image, source2 : Image, destination : Image = None):

## equal_constant
**CLIJ2**
* boolean equalConstant(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface equal_constant(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3)

**Macro**
* Ext.CLIJ2_equalConstant(Image source, ByRef Image destination, Number constant)

**pyclesperanto**
* equal_constant(source : Image, destination : Image = None, constant : float = 0):

## equalize_mean_intensities_of_slices
**CLIJ2**
* boolean equalizeMeanIntensitiesOfSlices(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer equalize_mean_intensities_of_slices(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3)

**Macro**
* Ext.CLIJ2_equalizeMeanIntensitiesOfSlices(Image input, ByRef Image destination, Number referenceSlice)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## erode_box
**CLIJ2**
* boolean erodeBox(ClearCLImageInterface source, ClearCLImageInterface destination)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface erode_box(ClearCLImageInterface source, ClearCLImageInterface destination)

**Macro**
* Ext.CLIJ2_erodeBox(Image source, ByRef Image destination)

**pyclesperanto**
* erode_box(source : Image, destination : Image = None):

## erode_box_slice_by_slice
**CLIJ2**
* boolean erodeBoxSliceBySlice(ClearCLImageInterface source, ClearCLImageInterface destination)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface erode_box_slice_by_slice(ClearCLImageInterface source, ClearCLImageInterface destination)

**Macro**
* Ext.CLIJ2_erodeBoxSliceBySlice(Image source, ByRef Image destination)

**pyclesperanto**
* erode_box_slice_by_slice(source : Image, destination : Image = None):

## erode_sphere
**CLIJ2**
* boolean erodeSphere(ClearCLImageInterface source, ClearCLImageInterface destination)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface erode_sphere(ClearCLImageInterface source, ClearCLImageInterface destination)

**Macro**
* Ext.CLIJ2_erodeSphere(Image source, ByRef Image destination)

**pyclesperanto**
* erode_sphere(source : Image, destination : Image = None):

## erode_sphere_slice_by_slice
**CLIJ2**
* boolean erodeSphereSliceBySlice(ClearCLImageInterface source, ClearCLImageInterface destination)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface erode_sphere_slice_by_slice(ClearCLImageInterface source, ClearCLImageInterface destination)

**Macro**
* Ext.CLIJ2_erodeSphereSliceBySlice(Image source, ByRef Image destination)

**pyclesperanto**
* erode_sphere_slice_by_slice(source : Image, destination : Image = None):

## euclidean_distance_from_label_centroid_map
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean euclideanDistanceFromLabelCentroidMap(ClearCLBuffer labelmap_input, ClearCLBuffer destination)

**clEsperantoJ**
* ClearCLBuffer euclidean_distance_from_label_centroid_map(ClearCLBuffer labelmap_input, ClearCLBuffer destination)

**Macro**
* Ext.CLIJx_euclideanDistanceFromLabelCentroidMap(Image labelmap_input, ByRef Image destination)

**pyclesperanto**
* euclidean_distance_from_label_centroid_map(labels:Image, centroids_pointlist:Image = None, distance_map_destination:Image = None):

## exclude_labels
**CLIJ2**
* boolean excludeLabels(ClearCLBuffer binary_flaglist, ClearCLBuffer label_map_input, ClearCLBuffer label_map_destination)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer exclude_labels(ClearCLBuffer binary_flaglist, ClearCLBuffer label_map_input, ClearCLBuffer label_map_destination)

**Macro**
* Ext.CLIJ2_excludeLabels(Image binary_flaglist, Image label_map_input, ByRef Image label_map_destination)

**pyclesperanto**
* exclude_labels(binary_flaglist : Image, label_map_input : Image, label_map_destination : Image = None):

## exclude_labels_on_edges
**CLIJ2**
* boolean excludeLabelsOnEdges(ClearCLBuffer label_map_input, ClearCLBuffer label_map_destination)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer exclude_labels_on_edges(ClearCLBuffer label_map_input, ClearCLBuffer label_map_destination)

**Macro**
* Ext.CLIJ2_excludeLabelsOnEdges(Image label_map_input, ByRef Image label_map_destination)

**pyclesperanto**
* exclude_labels_on_edges(label_map_input : Image, label_map_destination : Image = None):

## exclude_labels_on_surface
**CLIJ2**
* boolean excludeLabelsOnSurface(ClearCLBuffer arg1, ClearCLBuffer arg2, ClearCLBuffer arg3, double arg4, double arg5, double arg6)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer exclude_labels_on_surface(ClearCLBuffer arg1, ClearCLBuffer arg2, ClearCLBuffer arg3, double arg4, double arg5, double arg6)

**Macro**
* Ext.CLIJ2_excludeLabelsOnSurface(Image pointlist, Image label_map_input, ByRef Image label_map_destination, Number centerX, Number centerY, Number centerZ)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## exclude_labels_outside_size_range
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean excludeLabelsOutsideSizeRange(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3, double arg4)

**clEsperantoJ**
* ClearCLBuffer exclude_labels_outside_size_range(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3, double arg4)

**Macro**
* Ext.CLIJx_excludeLabelsOutsideSizeRange(Image input, ByRef Image destination, Number minimum_size, Number maximum_size)

**pyclesperanto**
* exclude_labels_outside_size_range(input : Image, destination : Image = None, minimum_size : float = 0, maximum_size : float = 100):

## exclude_labels_sub_surface
**CLIJ2**
* boolean excludeLabelsSubSurface(ClearCLBuffer arg1, ClearCLBuffer arg2, ClearCLBuffer arg3, double arg4, double arg5, double arg6)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer exclude_labels_sub_surface(ClearCLBuffer arg1, ClearCLBuffer arg2, ClearCLBuffer arg3, double arg4, double arg5, double arg6)

**Macro**
* Ext.CLIJ2_excludeLabelsSubSurface(Image pointlist, Image label_map_input, ByRef Image label_map_destination, Number centerX, Number centerY, Number centerZ)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## exclude_labels_with_values_out_of_range
**CLIJ2**
* boolean excludeLabelsWithValuesOutOfRange(ClearCLBuffer arg1, ClearCLBuffer arg2, ClearCLBuffer arg3, double arg4, double arg5)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer exclude_labels_with_values_out_of_range(ClearCLBuffer arg1, ClearCLBuffer arg2, ClearCLBuffer arg3, double arg4, double arg5)

**Macro**
* Ext.CLIJ2_excludeLabelsWithValuesOutOfRange(Image values_vector, Image label_map_input, ByRef Image label_map_destination, Number minimum_value_range, Number maximum_value_range)

**pyclesperanto**
* exclude_labels_with_values_out_of_range(values_vector : Image, label_map_input : Image, label_map_destination : Image = None, minimum_value_range : float = 0, maximum_value_range : float = 100):

## exclude_labels_with_values_within_range
**CLIJ2**
* boolean excludeLabelsWithValuesWithinRange(ClearCLBuffer arg1, ClearCLBuffer arg2, ClearCLBuffer arg3, double arg4, double arg5)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer exclude_labels_with_values_within_range(ClearCLBuffer arg1, ClearCLBuffer arg2, ClearCLBuffer arg3, double arg4, double arg5)

**Macro**
* Ext.CLIJ2_excludeLabelsWithValuesWithinRange(Image values_vector, Image label_map_input, ByRef Image label_map_destination, Number minimum_value_range, Number maximum_value_range)

**pyclesperanto**
* exclude_labels_with_values_within_range(values_vector : Image, label_map_input : Image, label_map_destination : Image = None, minimum_value_range : float = 0, maximum_value_range : float = 100):

## execute
**CLIJ2**
* void execute(String programFilename, String kernelname, long[] dimensions, long[] globalsizes, Map<String, Object> parameters, Map<String, Object> constants)
* void execute(Class anchorClass, String programFilename, String kernelname, long[] dimensions, long[] globalsizes, Map<String, Object> parameters, Map<String, Object> constants)
* void execute(Class anchorClass, String programFilename, String kernelname, long[] dimensions, long[] globalsizes, Map<String, Object> parameters)
* void execute(Class anchorClass, String programFilename, String kernelname, long[] dimensions, long[] globalsizes, long[] localSizes, Map<String, Object> parameters)
* void execute(Class anchorClass, String programFilename, String kernelname, long[] dimensions, long[] globalsizes, long[] localSizes, Map<String, Object> parameters, Map<String, Object> constants)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* <span style="color:red">(Missing)</span>

**Macro**
* <span style="color:red">(Missing)</span>

**pyclesperanto**
* execute(anchor, opencl_kernel_filename, kernel_name, global_size, parameters, prog : OCLProgram = None, constants = None, image_size_independent_kernel_compilation : bool = True):

## execute_separable_kernel
<span style="color:green">(experimental)</span>

**pyclesperanto**
* execute_separable_kernel(src, dst, anchor, opencl_kernel_filename, kernel_name, kernel_size_x, kernel_size_y, kernel_size_z, sigma_x, sigma_y, sigma_z, dimensions) :

## exponential
**CLIJ2**
* boolean exponential(ClearCLImageInterface source, ClearCLImageInterface destination)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface exponential(ClearCLImageInterface source, ClearCLImageInterface destination)

**Macro**
* Ext.CLIJ2_exponential(Image source, ByRef Image destination)

**pyclesperanto**
* exponential(source : Image, destination : Image = None):

## extend_labeling_via_voronoi
**CLIJ2**
* boolean extendLabelingViaVoronoi(ClearCLBuffer input, ClearCLImageInterface destination)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface extend_labeling_via_voronoi(ClearCLBuffer input, ClearCLImageInterface destination)

**Macro**
* Ext.CLIJ2_extendLabelingViaVoronoi(Image input, ByRef Image destination)

**pyclesperanto**
* extend_labeling_via_voronoi(labeling_source : Image, labeling_destination : Image = None):

## extend_labels_with_maximum_radius
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean extendLabelsWithMaximumRadius(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3)

**clEsperantoJ**
* ClearCLBuffer extend_labels_with_maximum_radius(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3)

**Macro**
* Ext.CLIJx_extendLabelsWithMaximumRadius(Image input, ByRef Image destination, Number radius)

**pyclesperanto**
* extend_labels_with_maximum_radius(labeling_source : Image, labeling_destination : Image = None, radius: int = 2):

## extended_depth_of_focus_tenengrad_projection
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean extendedDepthOfFocusTenengradProjection(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3)

**clEsperantoJ**
* ClearCLImageInterface extended_depth_of_focus_tenengrad_projection(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3)

**Macro**
* Ext.CLIJx_extendedDepthOfFocusTenengradProjection(Image source, ByRef Image destination, Number sigma)

## extended_depth_of_focus_variance_projection
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean extendedDepthOfFocusVarianceProjection(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3)
* boolean extendedDepthOfFocusVarianceProjection(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3, double arg4, double arg5)

**clEsperantoJ**
* ClearCLImageInterface extended_depth_of_focus_variance_projection(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3)
* ClearCLImageInterface extended_depth_of_focus_variance_projection(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3, double arg4, double arg5)

**Macro**
* Ext.CLIJx_extendedDepthOfFocusVarianceProjection(Image source, ByRef Image destination, Number radius_x, Number radius_y, Number sigma)

## extrema
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean extrema(ClearCLBuffer input1, ClearCLBuffer input2, ClearCLBuffer destination)

**clEsperantoJ**
* ClearCLBuffer extrema(ClearCLBuffer input1, ClearCLBuffer input2, ClearCLBuffer destination)

**Macro**
* Ext.CLIJx_extrema(Image input1, Image input2, ByRef Image destination)

## fill_histogram
**CLIJ2**
* boolean fillHistogram(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3, double arg4)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* <span style="color:red">(Missing)</span>

**Macro**
* <span style="color:red">(Missing)</span>

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## find_and_label_maxima
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean findAndLabelMaxima(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3, boolean arg4)

**clEsperantoJ**
* ClearCLBuffer find_and_label_maxima(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3, boolean arg4)

**Macro**
* Ext.CLIJx_findAndLabelMaxima(Image input, ByRef Image destination, Number tolerance, Boolean invert)

## find_maxima
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean findMaxima(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3)

**clEsperantoJ**
* ClearCLBuffer find_maxima(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3)

**Macro**
* Ext.CLIJx_findMaxima(Image source, ByRef Image destination, Number noise_threshold)

## flag_labels_on_edges
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean flagLabelsOnEdges(ClearCLBuffer label_map_input, ClearCLBuffer flag_vector_destination)

**clEsperantoJ**
* ClearCLBuffer flag_labels_on_edges(ClearCLBuffer label_map_input, ClearCLBuffer flag_vector_destination)

**Macro**
* Ext.CLIJx_flagLabelsOnEdges(Image label_map_input, ByRef Image flag_vector_destination)

## flag_existing_labels
<span style="color:green">(experimental)</span>

**pyclesperanto**
* flag_existing_labels(label_src : Image, flag_vector_destination : Image = None):

## flip
**CLIJ2**
* boolean flip(ClearCLImageInterface arg1, ClearCLImageInterface arg2, boolean arg3, boolean arg4)
* boolean flip(ClearCLImageInterface arg1, ClearCLImageInterface arg2, boolean arg3, boolean arg4, boolean arg5)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface flip(ClearCLImageInterface arg1, ClearCLImageInterface arg2, boolean arg3, boolean arg4)
* ClearCLImageInterface flip(ClearCLImageInterface arg1, ClearCLImageInterface arg2, boolean arg3, boolean arg4, boolean arg5)

**Macro**
* Ext.CLIJ2_flip2D(Image source, ByRef Image destination, Boolean flip_x, Boolean flip_y)

**pyclesperanto**
* flip(source : Image, destination : Image = None, flip_x : bool = True, flip_y : bool = True, flip_z : bool = True):

## flip
**CLIJ2**
* boolean flip2D(ClearCLImageInterface arg1, ClearCLImageInterface arg2, boolean arg3, boolean arg4)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface flip2d(ClearCLImageInterface arg1, ClearCLImageInterface arg2, boolean arg3, boolean arg4)

**Macro**
* Ext.CLIJ2_flip2D(Image source, ByRef Image destination, Boolean flip_x, Boolean flip_y)

**pyclesperanto**
* flip(source : Image, destination : Image = None, flip_x : bool = True, flip_y : bool = True, flip_z : bool = True):

## flip
**CLIJ2**
* boolean flip3D(ClearCLImageInterface arg1, ClearCLImageInterface arg2, boolean arg3, boolean arg4, boolean arg5)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface flip3d(ClearCLImageInterface arg1, ClearCLImageInterface arg2, boolean arg3, boolean arg4, boolean arg5)

**Macro**
* Ext.CLIJ2_flip3D(Image source, ByRef Image destination, Boolean flip_x, Boolean flip_y, Boolean flip_z)

**pyclesperanto**
* flip(source : Image, destination : Image = None, flip_x : bool = True, flip_y : bool = True, flip_z : bool = True):

## flood_fill_diamond
**CLIJ2**
* boolean floodFillDiamond(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3, double arg4)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer flood_fill_diamond(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3, double arg4)

**Macro**
* Ext.CLIJ2_floodFillDiamond(Image source, ByRef Image destination, Number value_to_replace, Number value_replacement)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## gamma_correction
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean gammaCorrection(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3)

**clEsperantoJ**
* ClearCLBuffer gamma_correction(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3)

**Macro**
* Ext.CLIJx_gammaCorrection(Image input, ByRef Image destination, Number gamma)

**pyclesperanto**
* gamma_correction(source : Image, target : Image = None, gamma : float = 1):

## gauss_jordan
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean gaussJordan(ClearCLBuffer A_matrix, ClearCLBuffer B_result_vector, ClearCLBuffer solution_destination)

**clEsperantoJ**
* ClearCLBuffer gauss_jordan(ClearCLBuffer A_matrix, ClearCLBuffer B_result_vector, ClearCLBuffer solution_destination)

**Macro**
* Ext.CLIJx_gaussJordan(Image A_matrix, Image B_result_vector, ByRef Image solution_destination)

## gaussian_blur
**CLIJ2**
* boolean gaussianBlur(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3, double arg4)
* boolean gaussianBlur(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3, double arg4, double arg5)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface gaussian_blur(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3, double arg4)
* ClearCLImageInterface gaussian_blur(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3, double arg4, double arg5)

**Macro**
* Ext.CLIJ2_gaussianBlur2D(Image source, ByRef Image destination, Number sigma_x, Number sigma_y)

**pyclesperanto**
* gaussian_blur(source : Image, destination : Image = None, sigma_x : float = 0, sigma_y : float = 0, sigma_z : float = 0):

## gaussian_blur
**CLIJ2**
* boolean gaussianBlur2D(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3, double arg4)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface gaussian_blur2d(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3, double arg4)

**Macro**
* Ext.CLIJ2_gaussianBlur2D(Image source, ByRef Image destination, Number sigma_x, Number sigma_y)

**pyclesperanto**
* gaussian_blur(source : Image, destination : Image = None, sigma_x : float = 0, sigma_y : float = 0, sigma_z : float = 0):

## gaussian_blur
**CLIJ2**
* boolean gaussianBlur3D(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3, double arg4, double arg5)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface gaussian_blur3d(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3, double arg4, double arg5)

**Macro**
* Ext.CLIJ2_gaussianBlur3D(Image source, ByRef Image destination, Number sigma_x, Number sigma_y, Number sigma_z)

**pyclesperanto**
* gaussian_blur(source : Image, destination : Image = None, sigma_x : float = 0, sigma_y : float = 0, sigma_z : float = 0):

## generate_angle_matrix
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean generateAngleMatrix(ClearCLBuffer coordinate_list1, ClearCLBuffer coordinate_list2, ClearCLBuffer angle_matrix_destination)

**clEsperantoJ**
* ClearCLBuffer generate_angle_matrix(ClearCLBuffer coordinate_list1, ClearCLBuffer coordinate_list2, ClearCLBuffer angle_matrix_destination)

**Macro**
* Ext.CLIJx_generateAngleMatrix(Image coordinate_list1, Image coordinate_list2, ByRef Image angle_matrix_destination)

**pyclesperanto**
* generate_angle_matrix(coordinate_list1 :Image, coordinate_list2 :Image, angle_matrix_destination :Image = None):

## generate_binary_overlap_matrix
**CLIJ2**
* boolean generateBinaryOverlapMatrix(ClearCLBuffer label_map1, ClearCLBuffer label_map2, ClearCLBuffer binary_overlap_matrix_destination)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer generate_binary_overlap_matrix(ClearCLBuffer label_map1, ClearCLBuffer label_map2, ClearCLBuffer binary_overlap_matrix_destination)

**Macro**
* Ext.CLIJ2_generateBinaryOverlapMatrix(Image label_map1, Image label_map2, ByRef Image binary_overlap_matrix_destination)

**pyclesperanto**
* generate_binary_overlap_matrix(label_map1 : Image, label_map2 : Image, binary_overlap_matrix_destination : Image = None):

## generate_distance_matrix
**CLIJ2**
* boolean generateDistanceMatrix(ClearCLBuffer coordinate_list1, ClearCLBuffer coordinate_list2, ClearCLBuffer distance_matrix_destination)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer generate_distance_matrix(ClearCLBuffer coordinate_list1, ClearCLBuffer coordinate_list2, ClearCLBuffer distance_matrix_destination)

**Macro**
* Ext.CLIJ2_generateDistanceMatrix(Image coordinate_list1, Image coordinate_list2, ByRef Image distance_matrix_destination)

**pyclesperanto**
* generate_distance_matrix(coordindate_list1 :Image, coordinate_list2 :Image, distance_matrix_destination :Image = None):

## generate_distance_matrix_along_axis
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean generateDistanceMatrixAlongAxis(ClearCLBuffer arg1, ClearCLBuffer arg2, ClearCLBuffer arg3, double arg4)

**clEsperantoJ**
* ClearCLBuffer generate_distance_matrix_along_axis(ClearCLBuffer arg1, ClearCLBuffer arg2, ClearCLBuffer arg3, double arg4)

**Macro**
* Ext.CLIJx_generateDistanceMatrixAlongAxis(Image coordinate_list1, Image coordinate_list2, ByRef Image distance_matrix_destination)

## generate_feature_stack
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean generateFeatureStack(ClearCLBuffer input, ClearCLBuffer feature_stack_destination, String feature_definitions)
* ClearCLBuffer generateFeatureStack(ClearCLBuffer arg1, String arg2)

**clEsperantoJ**
* ClearCLBuffer generate_feature_stack(ClearCLBuffer input, ClearCLBuffer feature_stack_destination, String feature_definitions)
* ClearCLBuffer generate_feature_stack(ClearCLBuffer arg1, String arg2)

**Macro**
* Ext.CLIJx_generateFeatureStack(Image input, Image feature_stack_destination, String feature_definitions)

## generate_grey_value_cooccurrence_matrix_box
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean generateGreyValueCooccurrenceMatrixBox(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3, double arg4)

**clEsperantoJ**
* ClearCLBuffer generate_grey_value_cooccurrence_matrix_box(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3, double arg4)

**Macro**
* Ext.CLIJx_generateGreyValueCooccurrenceMatrixBox(Image integer_image, ByRef Image grey_value_cooccurrence_matrix_destination, Number min_grey_value, Number max_grey_value)

## generate_integer_grey_value_cooccurrence_count_matrix_half_box
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean generateIntegerGreyValueCooccurrenceCountMatrixHalfBox(ClearCLBuffer integer_image, ClearCLBuffer grey_value_cooccurrence_matrix_destination)

**clEsperantoJ**
* ClearCLBuffer generate_integer_grey_value_cooccurrence_count_matrix_half_box(ClearCLBuffer integer_image, ClearCLBuffer grey_value_cooccurrence_matrix_destination)

**Macro**
* Ext.CLIJx_generateIntegerGreyValueCooccurrenceCountMatrixHalfBox(Image integer_image, ByRef Image grey_value_cooccurrence_matrix_destination)

## generate_integer_grey_value_cooccurrence_count_matrix_half_diamond
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean generateIntegerGreyValueCooccurrenceCountMatrixHalfDiamond(ClearCLBuffer integer_image, ClearCLBuffer grey_value_cooccurrence_matrix_destination)

**clEsperantoJ**
* ClearCLBuffer generate_integer_grey_value_cooccurrence_count_matrix_half_diamond(ClearCLBuffer integer_image, ClearCLBuffer grey_value_cooccurrence_matrix_destination)

**Macro**
* Ext.CLIJx_generateIntegerGreyValueCooccurrenceCountMatrixHalfDiamond(Image integer_image, ByRef Image grey_value_cooccurrence_matrix_destination)

## generate_jaccard_index_matrix
**CLIJ2**
* boolean generateJaccardIndexMatrix(ClearCLBuffer label_map1, ClearCLBuffer label_map2, ClearCLBuffer jaccard_index_matrix_destination)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer generate_jaccard_index_matrix(ClearCLBuffer label_map1, ClearCLBuffer label_map2, ClearCLBuffer jaccard_index_matrix_destination)

**Macro**
* Ext.CLIJ2_generateJaccardIndexMatrix(Image label_map1, Image label_map2, ByRef Image jaccard_index_matrix_destination)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## generate_label_feature_image
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean generateLabelFeatureImage(ClearCLBuffer input, ClearCLBuffer label_map, ClearCLBuffer label_feature_image_destination, String feature_definitions)
* ClearCLBuffer generateLabelFeatureImage(ClearCLBuffer arg1, ClearCLBuffer arg2, String arg3)

**clEsperantoJ**
* ClearCLBuffer generate_label_feature_image(ClearCLBuffer input, ClearCLBuffer label_map, ClearCLBuffer label_feature_image_destination, String feature_definitions)
* ClearCLBuffer generate_label_feature_image(ClearCLBuffer arg1, ClearCLBuffer arg2, String arg3)

**Macro**
* Ext.CLIJx_generateLabelFeatureImage(Image input, Image label_map, Image label_feature_image_destination, String feature_definitions)

## generate_n_nearest_neighbors_matrix
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean generateNNearestNeighborsMatrix(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3)

**clEsperantoJ**
* ClearCLBuffer generate_n_nearest_neighbors_matrix(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3)

**Macro**
* Ext.CLIJx_generateNNearestNeighborsMatrix(Image distance_matrix, ByRef Image touch_matrix_destination, Number n)

**pyclesperanto**
* generate_n_nearest_neighbors_matrix(distance_matrix :Image, touch_matrix_destination :Image = None, n : int = 1):

## generate_parametric_image
**CLIJ2**
* boolean generateParametricImage(ClearCLImageInterface label_map, ClearCLImageInterface parameter_value_vector, ClearCLImageInterface parametric_image_destination)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface generate_parametric_image(ClearCLImageInterface label_map, ClearCLImageInterface parameter_value_vector, ClearCLImageInterface parametric_image_destination)

**Macro**
* Ext.CLIJ2_generateParametricImage(Image label_map, Image parameter_value_vector, ByRef Image parametric_image_destination)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## generate_parametric_image_from_results_table_column
**CLIJ2**
* boolean generateParametricImageFromResultsTableColumn(ClearCLImageInterface arg1, ClearCLImageInterface arg2, ResultsTable arg3, String arg4)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface generate_parametric_image_from_results_table_column(ClearCLImageInterface arg1, ClearCLImageInterface arg2, ResultsTable arg3, String arg4)

**Macro**
* Ext.CLIJ2_generateParametricImageFromResultsTableColumn(Image label_map, ByRef Image parametric_image_destination, String column)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## generate_proximal_neighbors_matrix
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean generateProximalNeighborsMatrix(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3, double arg4)

**clEsperantoJ**
* ClearCLBuffer generate_proximal_neighbors_matrix(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3, double arg4)

**Macro**
* Ext.CLIJx_generateProximalNeighborsMatrix(Image distance_matrix, ByRef Image touch_matrix_destination, Number min_distance, Number max_distance)

**pyclesperanto**
* generate_proximal_neighbors_matrix(distance_matrix :Image, touch_matrix_destination :Image = None, min_distance : float = 0, max_distance : float = np.finfo(np.float32).max):

## generate_regional_label_feature_image
<span style="color:green">(experimental)</span>

**CLIJx**
* ClearCLBuffer generateRegionalLabelFeatureImage(ClearCLBuffer arg1, ClearCLBuffer arg2, String arg3, int arg4, int arg5, int arg6, int arg7)

**clEsperantoJ**
* ClearCLBuffer generate_regional_label_feature_image(ClearCLBuffer arg1, ClearCLBuffer arg2, String arg3, int arg4, int arg5, int arg6, int arg7)

## generate_touch_count_matrix
**CLIJ2**
* boolean generateTouchCountMatrix(ClearCLBuffer label_map, ClearCLBuffer touch_count_matrix_destination)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer generate_touch_count_matrix(ClearCLBuffer label_map, ClearCLBuffer touch_count_matrix_destination)

**Macro**
* Ext.CLIJ2_generateTouchCountMatrix(Image label_map, ByRef Image touch_count_matrix_destination)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## generate_touch_matrix
**CLIJ2**
* boolean generateTouchMatrix(ClearCLBuffer label_map, ClearCLBuffer touch_matrix_destination)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer generate_touch_matrix(ClearCLBuffer label_map, ClearCLBuffer touch_matrix_destination)

**Macro**
* Ext.CLIJ2_generateTouchMatrix(Image label_map, ByRef Image touch_matrix_destination)

**pyclesperanto**
* generate_touch_matrix(label_map :Image, touch_matrix_destination :Image = None):

## get_automatic_threshold
**CLIJ2**
* double getAutomaticThreshold(ClearCLBuffer arg1, String arg2)
* double getAutomaticThreshold(ClearCLBuffer arg1, String arg2, double arg3, double arg4, double arg5)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer get_automatic_threshold(ClearCLBuffer arg1, String arg2)
* ClearCLBuffer get_automatic_threshold(ClearCLBuffer arg1, String arg2, double arg3, double arg4, double arg5)

**Macro**
* Ext.CLIJ2_getAutomaticThreshold(Image input, String method, ByRef Number threshold_value)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## get_bounding_box
**CLIJ2**
* double[] getBoundingBox(ClearCLBuffer arg1)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer get_bounding_box(ClearCLBuffer arg1)

**Macro**
* Ext.CLIJ2_getBoundingBox(Image source, ByRef Number boundingBoxX, ByRef Number boundingBoxY, ByRef Number boundingBoxZ, ByRef Number boundingBoxWidth, ByRef Number boundingBoxHeight, ByRef Number boundingBoxDepth)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## get_center_of_mass
**CLIJ2**
* double[] getCenterOfMass(ClearCLBuffer arg1)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer get_center_of_mass(ClearCLBuffer arg1)

**Macro**
* Ext.CLIJ2_getCenterOfMass(Image source, ByRef Number centerOfMassX, ByRef Number centerOfMassY, ByRef Number centerOfMassZ)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## get_dimensions
**CLIJ2**
* long[] getDimensions(ClearCLBuffer arg1)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer get_dimensions(ClearCLBuffer arg1)

**Macro**
* Ext.CLIJ2_getDimensions(Image source, ByRef Number width, ByRef Number height, ByRef Number depth)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## get_g_p_u_properties
<span style="color:green">(experimental)</span>

## get_jaccard_index
**CLIJ2**
* double getJaccardIndex(ClearCLBuffer arg1, ClearCLBuffer arg2)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer get_jaccard_index(ClearCLBuffer arg1, ClearCLBuffer arg2)

**Macro**
* Ext.CLIJ2_getJaccardIndex(Image source1, Image source2, ByRef Number jaccard_index)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## get_maximum_of_all_pixels
**CLIJ2**
* double getMaximumOfAllPixels(ClearCLImageInterface arg1)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface get_maximum_of_all_pixels(ClearCLImageInterface arg1)

**Macro**
* Ext.CLIJ2_getMaximumOfAllPixels(Image source, ByRef Number maximum_of_all_pixels)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## get_mean_of_all_pixels
**CLIJ2**
* double getMeanOfAllPixels(ClearCLImageInterface arg1)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface get_mean_of_all_pixels(ClearCLImageInterface arg1)

**Macro**
* Ext.CLIJ2_getMeanOfAllPixels(Image source, ByRef Number mean_of_all_pixels)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## get_mean_of_masked_pixels
**CLIJ2**
* double getMeanOfMaskedPixels(ClearCLBuffer arg1, ClearCLBuffer arg2)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer get_mean_of_masked_pixels(ClearCLBuffer arg1, ClearCLBuffer arg2)

**Macro**
* Ext.CLIJ2_getMeanOfMaskedPixels(Image source, Image mask, ByRef Number mean_of_masked_pixels)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## get_minimum_of_all_pixels
**CLIJ2**
* double getMinimumOfAllPixels(ClearCLImageInterface arg1)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface get_minimum_of_all_pixels(ClearCLImageInterface arg1)

**Macro**
* Ext.CLIJ2_getMinimumOfAllPixels(Image source, ByRef Number minimum_of_all_pixels)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## get_size
<span style="color:orange">(deprecated)</span>

**CLIJ2**
* long[] getSize(ClearCLBuffer source)

**Macro**
* Ext.CLIJ2_getSize(Image source)

## get_sorensen_dice_coefficient
**CLIJ2**
* double getSorensenDiceCoefficient(ClearCLBuffer arg1, ClearCLBuffer arg2)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer get_sorensen_dice_coefficient(ClearCLBuffer arg1, ClearCLBuffer arg2)

**Macro**
* Ext.CLIJ2_getSorensenDiceCoefficient(Image source1, Image source2, ByRef Number sorensen_dice_coefficient)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## get_sum_of_all_pixels
**CLIJ2**
* double getSumOfAllPixels(ClearCLImageInterface arg1)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface get_sum_of_all_pixels(ClearCLImageInterface arg1)

**Macro**
* Ext.CLIJ2_getSumOfAllPixels(Image source, ByRef Number sum_of_all_pixels)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## gradient_x
**CLIJ2**
* boolean gradientX(ClearCLBuffer source, ClearCLBuffer destination)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer gradient_x(ClearCLBuffer source, ClearCLBuffer destination)

**Macro**
* Ext.CLIJ2_gradientX(Image source, ByRef Image destination)

**pyclesperanto**
* gradient_x(source : Image, destination : Image = None):

## gradient_y
**CLIJ2**
* boolean gradientY(ClearCLBuffer source, ClearCLBuffer destination)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer gradient_y(ClearCLBuffer source, ClearCLBuffer destination)

**Macro**
* Ext.CLIJ2_gradientY(Image source, ByRef Image destination)

**pyclesperanto**
* gradient_y(source : Image, destination : Image = None):

## gradient_z
**CLIJ2**
* boolean gradientZ(ClearCLBuffer source, ClearCLBuffer destination)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer gradient_z(ClearCLBuffer source, ClearCLBuffer destination)

**Macro**
* Ext.CLIJ2_gradientZ(Image source, ByRef Image destination)

**pyclesperanto**
* gradient_z(source : Image, destination : Image = None):

## greater
**CLIJ2**
* boolean greater(ClearCLImageInterface source1, ClearCLImageInterface source2, ClearCLImageInterface destination)

**CLIc**
* void Greater(Buffer&, Buffer&, Buffer&);

**clEsperantoJ**
* ClearCLImageInterface greater(ClearCLImageInterface source1, ClearCLImageInterface source2, ClearCLImageInterface destination)

**Macro**
* Ext.CLIJ2_greater(Image source1, Image source2, ByRef Image destination)

**pyclesperanto**
* greater(source1 : Image, source2 : Image, destination : Image = None):

## greater_constant
**CLIJ2**
* boolean greaterConstant(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface greater_constant(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3)

**Macro**
* Ext.CLIJ2_greaterConstant(Image source, ByRef Image destination, Number constant)

**pyclesperanto**
* greater_constant(source : Image, destination :Image = None, constant :float = 0):

## greater_or_equal
**CLIJ2**
* boolean greaterOrEqual(ClearCLImageInterface source1, ClearCLImageInterface source2, ClearCLImageInterface destination)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface greater_or_equal(ClearCLImageInterface source1, ClearCLImageInterface source2, ClearCLImageInterface destination)

**Macro**
* Ext.CLIJ2_greaterOrEqual(Image source1, Image source2, ByRef Image destination)

**pyclesperanto**
* greater_or_equal(source1 : Image, source2 : Image, destination : Image = None):

## greater_or_equal_constant
**CLIJ2**
* boolean greaterOrEqualConstant(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface greater_or_equal_constant(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3)

**Macro**
* Ext.CLIJ2_greaterOrEqualConstant(Image source, ByRef Image destination, Number constant)

**pyclesperanto**
* greater_or_equal_constant(source : Image, destination : Image = None, constant : float = 0):

## grey_level_atttribute_filtering
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean greyLevelAtttributeFiltering(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3, double arg4)

**clEsperantoJ**
* ClearCLBuffer grey_level_atttribute_filtering(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3, double arg4)

**Macro**
* Ext.CLIJx_greyLevelAtttributeFiltering(Image source, ByRef Image destination, Number number_of_bins, Number minimum_pixel_count)

## histogram
**CLIJ2**
* boolean histogram(ClearCLBuffer arg1, ClearCLBuffer arg2)
* boolean histogram(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3, double arg4, double arg5, boolean arg6)
* boolean histogram(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3, double arg4, double arg5, boolean arg6, boolean arg7)
* float[] histogram(ClearCLBuffer arg1, double arg2, double arg3, double arg4)
* ClearCLBuffer histogram(ClearCLBuffer arg1)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer histogram(ClearCLBuffer arg1, ClearCLBuffer arg2)
* ClearCLBuffer histogram(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3, double arg4, double arg5, boolean arg6)
* ClearCLBuffer histogram(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3, double arg4, double arg5, boolean arg6, boolean arg7)
* ClearCLBuffer histogram(ClearCLBuffer arg1, double arg2, double arg3, double arg4)
* ClearCLBuffer histogram(ClearCLBuffer arg1)

**Macro**
* Ext.CLIJ2_histogram(Image source, ByRef Image destination, Number number_of_bins, Number minimum_intensity, Number maximum_intensity, Boolean determine_min_max)

**pyclesperanto**
* histogram(source : Image, destination : Image = None, num_bins = 256, minimum_intensity : float = None, maximum_intensity : float = None, determine_min_max : bool = True):

## image_to_results_table
**CLIJ2**
* ResultsTable image2DToResultsTable(ClearCLBuffer arg1, ResultsTable arg2)
* ResultsTable image2DToResultsTable(ClearCLImage arg1, ResultsTable arg2)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* <span style="color:red">(Missing)</span>

**Macro**
* Ext.CLIJ2_image2DToResultsTable(Image source)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## frangi_vesselness
<span style="color:green">(experimental)</span>

## gaussian_blur
<span style="color:green">(experimental)</span>

**clEsperantoJ**
* ClearCLImageInterface gaussian_blur(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3, double arg4)
* ClearCLImageInterface gaussian_blur(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3, double arg4, double arg5)

**Macro**
* Ext.CLIJx_imageJ2GaussianBlur(Image input, ByRef Image destination, Number sigma_x, Number sigma_y, Number sigma_z)

**pyclesperanto**
* gaussian_blur(source : Image, destination : Image = None, sigma_x : float = 0, sigma_y : float = 0, sigma_z : float = 0):

## median_box
<span style="color:green">(experimental)</span>

## median_sphere
<span style="color:green">(experimental)</span>

## richardson_lucy_deconvolution
<span style="color:green">(experimental)</span>

**Macro**
* Ext.CLIJx_imageJ2RichardsonLucyDeconvolution(Image input, Image kernel_input, ByRef Image destination, Number num_iterations)

## tubeness
<span style="color:green">(experimental)</span>

## image_j_suite_connected_components_labeling
<span style="color:green">(experimental)</span>

**Macro**
* Ext.CLIJx_imageJ3DSuiteConnectedComponentsLabeling(Image input, ByRef Image destination)

## image_j_fill_holes
<span style="color:green">(experimental)</span>

**Macro**
* Ext.CLIJx_imageJFillHoles(Image input, ByRef Image destination)

## image_j_gaussian_blur
<span style="color:green">(experimental)</span>

**Macro**
* Ext.CLIJx_imageJGaussianBlur(Image input, ByRef Image destination, Number sigma_x, Number sigma_y, Number sigma_z)

## image_j_variance
<span style="color:green">(experimental)</span>

**Macro**
* Ext.CLIJx_imageJVariance(Image input, ByRef Image destination, Number sigma_x, Number sigma_y, Number sigma_z)

## image_j_watershed
<span style="color:green">(experimental)</span>

**Macro**
* Ext.CLIJx_imageJWatershed(Image input, ByRef Image destination)

## image_to_stack
**CLIJ2**
* boolean imageToStack(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer image_to_stack(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3)

**Macro**
* Ext.CLIJ2_imageToStack(Image source, ByRef Image destination, Number num_slices)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## imglib2_connected_components_labeling
<span style="color:green">(experimental)</span>

**Macro**
* Ext.CLIJx_imglib2ConnectedComponentsLabeling(Image input, ByRef Image destination)

## imread
<span style="color:green">(experimental)</span>

**clEsperantoJ**
* ClearCLBuffer imread(String filename)

**pyclesperanto**
* imread(filename : str) -> Image:

## imshow
<span style="color:green">(experimental)</span>

**clEsperantoJ**
* void imshow(Object object)
* imshow(object, null, false, null, null);
* void imshow(Object object, String title)
* imshow(object, title, false, null, null);
* void imshow(Object object, String title, boolean labels)
* imshow(object, title, labels, null, null);
* void imshow(Object object, String title, boolean labels, Double min_intensity, Double max_intensity)

**pyclesperanto**
* imshow(image : Image, title : str = None, labels : bool = False, min_display_intensity : float = None, max_display_intensity : float = None, color_map = None, plot = None):

## intensity_correction
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean intensityCorrection(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3)

**clEsperantoJ**
* ClearCLBuffer intensity_correction(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3)

**Macro**
* Ext.CLIJx_intensityCorrection(Image input, ByRef Image destination, Number reference_mean_intensity)

## intensity_correction_above_threshold_otsu
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean intensityCorrectionAboveThresholdOtsu(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3)

**clEsperantoJ**
* ClearCLBuffer intensity_correction_above_threshold_otsu(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3)

**Macro**
* Ext.CLIJx_intensityCorrectionAboveThresholdOtsu(Image input, ByRef Image destination, Number reference_mean_intensity)

## invalidate_kernel_cache
<span style="color:green">(experimental)</span>

## invert
**CLIJ2**
* boolean invert(ClearCLImageInterface source, ClearCLImageInterface destination)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface invert(ClearCLImageInterface source, ClearCLImageInterface destination)

**Macro**
* Ext.CLIJ2_invert(Image source, ByRef Image destination)

**pyclesperanto**
* invert(source : Image, destination :Image = None):

## jaccard_index
**CLIJ2**
* double jaccardIndex(ClearCLBuffer source1, ClearCLBuffer source2)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer jaccard_index(ClearCLBuffer source1, ClearCLBuffer source2)

**Macro**
* Ext.CLIJ2_jaccardIndex(Image source1, Image source2)

**pyclesperanto**
* jaccard_index(source1 : Image, source2 : Image):

## k_means_label_clusterer
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean kMeansLabelClusterer(ClearCLBuffer arg1, ClearCLBuffer arg2, ClearCLBuffer arg3, String arg4, String arg5, double arg6, double arg7, boolean arg8)

**clEsperantoJ**
* ClearCLBuffer k_means_label_clusterer(ClearCLBuffer arg1, ClearCLBuffer arg2, ClearCLBuffer arg3, String arg4, String arg5, double arg6, double arg7, boolean arg8)

**Macro**
* Ext.CLIJx_kMeansLabelClusterer(Image input, Image label_map, ByRef Image destination, String features, String modelfilename, Number number_of_classes, Number neighbor_radius, Boolean train)

## label_maximum_extension_map
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean labelMaximumExtensionMap(ClearCLBuffer input, ClearCLBuffer destination)

**clEsperantoJ**
* ClearCLBuffer label_maximum_extension_map(ClearCLBuffer input, ClearCLBuffer destination)

**Macro**
* Ext.CLIJx_labelMaximumExtensionMap(Image input, ByRef Image destination)

**pyclesperanto**
* label_maximum_extension_map(labels : Image, destination : Image = None):

## label_maximum_extension_ratio_map
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean labelMaximumExtensionRatioMap(ClearCLBuffer input, ClearCLBuffer destination)

**clEsperantoJ**
* ClearCLBuffer label_maximum_extension_ratio_map(ClearCLBuffer input, ClearCLBuffer destination)

**Macro**
* Ext.CLIJx_labelMaximumExtensionRatioMap(Image input, ByRef Image destination)

**pyclesperanto**
* label_maximum_extension_ratio_map(labels : Image, destination : Image = None):

## label_maximum_intensity_map
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean labelMaximumIntensityMap(ClearCLBuffer arg1, ClearCLBuffer arg2, ClearCLBuffer arg3)

**clEsperantoJ**
* ClearCLBuffer label_maximum_intensity_map(ClearCLBuffer arg1, ClearCLBuffer arg2, ClearCLBuffer arg3)

**pyclesperanto**
* label_maximum_intensity_map(intensity_image : Image, labels : Image, maximum_intensity_map : Image = None):

## label_mean_extension_map
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean labelMeanExtensionMap(ClearCLBuffer input, ClearCLBuffer destination)

**clEsperantoJ**
* ClearCLBuffer label_mean_extension_map(ClearCLBuffer input, ClearCLBuffer destination)

**Macro**
* Ext.CLIJx_labelMeanExtensionMap(Image input, ByRef Image destination)

**pyclesperanto**
* label_mean_extension_map(labels : Image, destination : Image = None):

## label_mean_intensity_map
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean labelMeanIntensityMap(ClearCLBuffer input, ClearCLBuffer label_map, ClearCLBuffer destination)

**clEsperantoJ**
* ClearCLBuffer label_mean_intensity_map(ClearCLBuffer input, ClearCLBuffer label_map, ClearCLBuffer destination)

**Macro**
* Ext.CLIJx_labelMeanIntensityMap(Image input, Image label_map, ByRef Image destination)

**pyclesperanto**
* label_mean_intensity_map(input : Image, label_map : Image, destination : Image = None):

## label_mean_of_laplacian_map
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean labelMeanOfLaplacianMap(ClearCLBuffer input, ClearCLBuffer label_map, ClearCLBuffer destination)

**clEsperantoJ**
* ClearCLBuffer label_mean_of_laplacian_map(ClearCLBuffer input, ClearCLBuffer label_map, ClearCLBuffer destination)

**Macro**
* Ext.CLIJx_labelMeanOfLaplacianMap(Image input, Image label_map, ByRef Image destination)

## label_minimum_intensity_map
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean labelMinimumIntensityMap(ClearCLBuffer arg1, ClearCLBuffer arg2, ClearCLBuffer arg3)

**clEsperantoJ**
* ClearCLBuffer label_minimum_intensity_map(ClearCLBuffer arg1, ClearCLBuffer arg2, ClearCLBuffer arg3)

**pyclesperanto**
* label_minimum_intensity_map(intensity_image : Image, labels : Image, minimum_intensity_map : Image = None):

## label_overlap_count_map
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean labelOverlapCountMap(ClearCLBuffer label_map1, ClearCLBuffer label_map2, ClearCLBuffer overlap_count_map_destination)

**clEsperantoJ**
* ClearCLBuffer label_overlap_count_map(ClearCLBuffer label_map1, ClearCLBuffer label_map2, ClearCLBuffer overlap_count_map_destination)

**Macro**
* Ext.CLIJx_labelOverlapCountMap(Image label_map1, Image label_map2, ByRef Image overlap_count_map_destination)

## label_pixel_count_map
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean labelPixelCountMap(ClearCLBuffer input, ClearCLBuffer destination)

**clEsperantoJ**
* ClearCLBuffer label_pixel_count_map(ClearCLBuffer input, ClearCLBuffer destination)

**Macro**
* Ext.CLIJx_labelPixelCountMap(Image input, ByRef Image destination)

**pyclesperanto**
* label_pixel_count_map(input : Image, destination : Image = None):

## label_proximal_neighbor_count_map
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean labelProximalNeighborCountMap(ClearCLBuffer arg1, ClearCLBuffer arg2, ClearCLBuffer arg3, double arg4, double arg5)

**clEsperantoJ**
* ClearCLBuffer label_proximal_neighbor_count_map(ClearCLBuffer arg1, ClearCLBuffer arg2, ClearCLBuffer arg3, double arg4, double arg5)

**Macro**
* Ext.CLIJx_labelProximalNeighborCountMap(Image label_map1, Image label_map2, ByRef Image proximal_neighbor_count_map_destination, Number min_distance, Number max_distance)

## label_spots
**CLIJ2**
* boolean labelSpots(ClearCLBuffer input_spots, ClearCLBuffer labelled_spots_destination)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer label_spots(ClearCLBuffer input_spots, ClearCLBuffer labelled_spots_destination)

**Macro**
* Ext.CLIJ2_labelSpots(Image input_spots, ByRef Image labelled_spots_destination)

**pyclesperanto**
* label_spots(input_spots : Image, labelled_spots_destination : Image = None):

## label_standard_deviation_intensity_map
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean labelStandardDeviationIntensityMap(ClearCLBuffer input, ClearCLBuffer label_map, ClearCLBuffer destination)

**clEsperantoJ**
* ClearCLBuffer label_standard_deviation_intensity_map(ClearCLBuffer input, ClearCLBuffer label_map, ClearCLBuffer destination)

**Macro**
* Ext.CLIJx_labelStandardDeviationIntensityMap(Image input, Image label_map, ByRef Image destination)

**pyclesperanto**
* label_standard_deviation_intensity_map(intensity_image : Image, labels : Image, standard_deviation_intensity_map : Image = None):

## label_surface
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean labelSurface(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3, double arg4, double arg5)

**clEsperantoJ**
* ClearCLBuffer label_surface(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3, double arg4, double arg5)

**Macro**
* Ext.CLIJx_labelSurface(Image input_labels, ByRef Image destination_labels, Number relative_center_x, Number relative_center_y, Number relative_center_z)

## label_to_mask
**CLIJ2**
* boolean labelToMask(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer label_to_mask(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3)

**Macro**
* Ext.CLIJ2_labelToMask(Image label_map_source, ByRef Image mask_destination, Number label_index)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## label_voronoi_octagon
**CLIJ2**
* boolean labelVoronoiOctagon(ClearCLBuffer label_map, ClearCLBuffer label_voronoi_destination)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer label_voronoi_octagon(ClearCLBuffer label_map, ClearCLBuffer label_voronoi_destination)

**Macro**
* Ext.CLIJ2_labelVoronoiOctagon(Image label_map, ByRef Image label_voronoi_destination)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## labelled_spots_to_point_list
**CLIJ2**
* boolean labelledSpotsToPointList(ClearCLBuffer input_labelled_spots, ClearCLBuffer destination_pointlist)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer labelled_spots_to_point_list(ClearCLBuffer input_labelled_spots, ClearCLBuffer destination_pointlist)

**Macro**
* Ext.CLIJ2_labelledSpotsToPointList(Image input_labelled_spots, ByRef Image destination_pointlist)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## labelled_spots_to_pointlist
<span style="color:green">(experimental)</span>

**pyclesperanto**
* labelled_spots_to_pointlist(input_labelled_spots:Image, destination_pointlist :Image = None):

## laplace_box
**CLIJ2**
* boolean laplaceBox(ClearCLBuffer input, ClearCLBuffer destination)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer laplace_box(ClearCLBuffer input, ClearCLBuffer destination)

**Macro**
* Ext.CLIJ2_laplaceBox(Image input, ByRef Image destination)

**pyclesperanto**
* laplace_box(input : Image, destination : Image = None):

## laplace_sphere
**CLIJ2**
* boolean laplaceSphere(ClearCLBuffer input, ClearCLBuffer destination)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer laplace_sphere(ClearCLBuffer input, ClearCLBuffer destination)

**Macro**
* Ext.CLIJx_laplaceSphere(Image input, ByRef Image destination)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## laplace_diamond
<span style="color:green">(experimental)</span>

**pyclesperanto**
* laplace_diamond(source : Image, destination : Image = None):

## local_dog_threshold
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean localDoGThreshold(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3, double arg4, double arg5, boolean arg6)

## local_extrema_box
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean localExtremaBox(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3, double arg4, double arg5)

**clEsperantoJ**
* ClearCLBuffer local_extrema_box(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3, double arg4, double arg5)

**Macro**
* Ext.CLIJx_localExtremaBox(Image input, ByRef Image destination, Number radiusX, Number radiusY, Number radiusZ)

## local_i_d
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean localID(ClearCLBuffer input, ClearCLBuffer destination)

**clEsperantoJ**
* ClearCLBuffer local_i_d(ClearCLBuffer input, ClearCLBuffer destination)

**Macro**
* Ext.CLIJx_localID(Image input, ByRef Image destination)

## local_maximum_average_distance_of_n_closest_neighbors_map
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean localMaximumAverageDistanceOfNClosestNeighborsMap(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3)

**clEsperantoJ**
* ClearCLBuffer local_maximum_average_distance_of_n_closest_neighbors_map(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3)

**Macro**
* Ext.CLIJx_localMaximumAverageDistanceOfNClosestNeighborsMap(Image input, ByRef Image destination, Number n)

## local_maximum_average_neighbor_distance_map
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean localMaximumAverageNeighborDistanceMap(ClearCLBuffer input, ClearCLBuffer destination)

**clEsperantoJ**
* ClearCLBuffer local_maximum_average_neighbor_distance_map(ClearCLBuffer input, ClearCLBuffer destination)

**Macro**
* Ext.CLIJx_localMaximumAverageNeighborDistanceMap(Image input, ByRef Image destination)

## local_maximum_touching_neighbor_count_map
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean localMaximumTouchingNeighborCountMap(ClearCLBuffer input, ClearCLBuffer destination)

**clEsperantoJ**
* ClearCLBuffer local_maximum_touching_neighbor_count_map(ClearCLBuffer input, ClearCLBuffer destination)

**Macro**
* Ext.CLIJx_localMaximumTouchingNeighborCountMap(Image input, ByRef Image destination)

**pyclesperanto**
* local_maximum_touching_neighbor_count_map(input : Image, destination : Image = None):

## local_mean_average_distance_of_n_closest_neighbors_map
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean localMeanAverageDistanceOfNClosestNeighborsMap(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3)

**clEsperantoJ**
* ClearCLBuffer local_mean_average_distance_of_n_closest_neighbors_map(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3)

**Macro**
* Ext.CLIJx_localMeanAverageDistanceOfNClosestNeighborsMap(Image input, ByRef Image destination, Number n)

## local_mean_average_neighbor_distance_map
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean localMeanAverageNeighborDistanceMap(ClearCLBuffer input, ClearCLBuffer destination)

**clEsperantoJ**
* ClearCLBuffer local_mean_average_neighbor_distance_map(ClearCLBuffer input, ClearCLBuffer destination)

**Macro**
* Ext.CLIJx_localMeanAverageNeighborDistanceMap(Image input, ByRef Image destination)

## local_mean_touch_portion_map
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean localMeanTouchPortionMap(ClearCLBuffer input, ClearCLBuffer destination)

**clEsperantoJ**
* ClearCLBuffer local_mean_touch_portion_map(ClearCLBuffer input, ClearCLBuffer destination)

**Macro**
* Ext.CLIJx_localMeanTouchPortionMap(Image input, ByRef Image destination)

## local_mean_touching_neighbor_count_map
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean localMeanTouchingNeighborCountMap(ClearCLBuffer input, ClearCLBuffer destination)

**clEsperantoJ**
* ClearCLBuffer local_mean_touching_neighbor_count_map(ClearCLBuffer input, ClearCLBuffer destination)

**Macro**
* Ext.CLIJx_localMeanTouchingNeighborCountMap(Image input, ByRef Image destination)

**pyclesperanto**
* local_mean_touching_neighbor_count_map(input : Image, destination : Image = None):

## local_median_average_distance_of_n_closest_neighbors_map
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean localMedianAverageDistanceOfNClosestNeighborsMap(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3)

**clEsperantoJ**
* ClearCLBuffer local_median_average_distance_of_n_closest_neighbors_map(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3)

**Macro**
* Ext.CLIJx_localMedianAverageDistanceOfNClosestNeighborsMap(Image input, ByRef Image destination, Number n)

## local_median_average_neighbor_distance_map
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean localMedianAverageNeighborDistanceMap(ClearCLBuffer input, ClearCLBuffer destination)

**clEsperantoJ**
* ClearCLBuffer local_median_average_neighbor_distance_map(ClearCLBuffer input, ClearCLBuffer destination)

**Macro**
* Ext.CLIJx_localMedianAverageNeighborDistanceMap(Image input, ByRef Image destination)

## local_median_touching_neighbor_count_map
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean localMedianTouchingNeighborCountMap(ClearCLBuffer input, ClearCLBuffer destination)

**clEsperantoJ**
* ClearCLBuffer local_median_touching_neighbor_count_map(ClearCLBuffer input, ClearCLBuffer destination)

**Macro**
* Ext.CLIJx_localMedianTouchingNeighborCountMap(Image input, ByRef Image destination)

**pyclesperanto**
* local_median_touching_neighbor_count_map(input : Image, destination : Image = None):

## local_minimum_average_distance_of_n_closest_neighbors_map
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean localMinimumAverageDistanceOfNClosestNeighborsMap(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3)

**clEsperantoJ**
* ClearCLBuffer local_minimum_average_distance_of_n_closest_neighbors_map(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3)

**Macro**
* Ext.CLIJx_localMinimumAverageDistanceOfNClosestNeighborsMap(Image input, ByRef Image destination, Number n)

## local_minimum_average_neighbor_distance_map
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean localMinimumAverageNeighborDistanceMap(ClearCLBuffer input, ClearCLBuffer destination)

**clEsperantoJ**
* ClearCLBuffer local_minimum_average_neighbor_distance_map(ClearCLBuffer input, ClearCLBuffer destination)

**Macro**
* Ext.CLIJx_localMinimumAverageNeighborDistanceMap(Image input, ByRef Image destination)

## local_minimum_touching_neighbor_count_map
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean localMinimumTouchingNeighborCountMap(ClearCLBuffer input, ClearCLBuffer destination)

**clEsperantoJ**
* ClearCLBuffer local_minimum_touching_neighbor_count_map(ClearCLBuffer input, ClearCLBuffer destination)

**Macro**
* Ext.CLIJx_localMinimumTouchingNeighborCountMap(Image input, ByRef Image destination)

**pyclesperanto**
* local_minimum_touching_neighbor_count_map(input : Image, destination : Image = None):

## local_standard_deviation_average_distance_of_n_closest_neighbors_map
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean localStandardDeviationAverageDistanceOfNClosestNeighborsMap(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3)

**clEsperantoJ**
* ClearCLBuffer local_standard_deviation_average_distance_of_n_closest_neighbors_map(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3)

**Macro**
* Ext.CLIJx_localStandardDeviationAverageDistanceOfNClosestNeighborsMap(Image input, ByRef Image destination, Number n)

## local_standard_deviation_average_neighbor_distance_map
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean localStandardDeviationAverageNeighborDistanceMap(ClearCLBuffer input, ClearCLBuffer destination)

**clEsperantoJ**
* ClearCLBuffer local_standard_deviation_average_neighbor_distance_map(ClearCLBuffer input, ClearCLBuffer destination)

**Macro**
* Ext.CLIJx_localStandardDeviationAverageNeighborDistanceMap(Image input, ByRef Image destination)

## local_standard_deviation_touching_neighbor_count_map
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean localStandardDeviationTouchingNeighborCountMap(ClearCLBuffer input, ClearCLBuffer destination)

**clEsperantoJ**
* ClearCLBuffer local_standard_deviation_touching_neighbor_count_map(ClearCLBuffer input, ClearCLBuffer destination)

**Macro**
* Ext.CLIJx_localStandardDeviationTouchingNeighborCountMap(Image input, ByRef Image destination)

**pyclesperanto**
* local_standard_deviation_touching_neighbor_count_map(input : Image, destination : Image = None):

## local_threshold
**CLIJ2**
* boolean localThreshold(ClearCLImageInterface source, ClearCLImageInterface localThreshold, ClearCLImageInterface destination)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface local_threshold(ClearCLImageInterface source, ClearCLImageInterface localThreshold, ClearCLImageInterface destination)

**Macro**
* Ext.CLIJ2_localThreshold(Image source, Image localThreshold, ByRef Image destination)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## local_threshold_phansalkar
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean localThresholdPhansalkar(ClearCLBuffer arg1, ClearCLBuffer arg2, float arg3, float arg4, float arg5)

**clEsperantoJ**
* ClearCLBuffer local_threshold_phansalkar(ClearCLBuffer arg1, ClearCLBuffer arg2, float arg3, float arg4, float arg5)

**Macro**
* Ext.CLIJx_localThresholdPhansalkar(Image source, ByRef Image destination, Number radius, Number k, Number r)

## logarithm
**CLIJ2**
* boolean logarithm(ClearCLImageInterface source, ClearCLImageInterface destination)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface logarithm(ClearCLImageInterface source, ClearCLImageInterface destination)

**Macro**
* Ext.CLIJ2_logarithm(Image source, ByRef Image destination)

**pyclesperanto**
* logarithm(source : Image, destination : Image = None):

## make_isotropic
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean makeIsotropic(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3, double arg4, double arg5, double arg6)

**clEsperantoJ**
* ClearCLBuffer make_isotropic(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3, double arg4, double arg5, double arg6)

**Macro**
* Ext.CLIJx_makeIsotropic(Image input, ByRef Image destination, Number original_voxel_size_x, Number original_voxel_size_y, Number original_voxel_size_z, Number new_voxel_size)

## mask
**CLIJ2**
* boolean mask(ClearCLImageInterface source, ClearCLImageInterface mask, ClearCLImageInterface destination)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface mask(ClearCLImageInterface source, ClearCLImageInterface mask, ClearCLImageInterface destination)

**Macro**
* Ext.CLIJ2_mask(Image source, Image mask, ByRef Image destination)

**pyclesperanto**
* mask(source : Image, mask : Image, destination : Image = None):

## mask_label
**CLIJ2**
* boolean maskLabel(ClearCLBuffer arg1, ClearCLBuffer arg2, ClearCLBuffer arg3, double arg4)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer mask_label(ClearCLBuffer arg1, ClearCLBuffer arg2, ClearCLBuffer arg3, double arg4)

**Macro**
* Ext.CLIJ2_maskLabel(Image source, Image label_map, ByRef Image destination, Number label_index)

**pyclesperanto**
* mask_label(source : Image, label_map : Image, destination : Image = None, label_index : int = 1):

## mask_stack_with_plane
**CLIJ2**
* boolean maskStackWithPlane(ClearCLImageInterface source, ClearCLImageInterface mask, ClearCLImageInterface destination)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface mask_stack_with_plane(ClearCLImageInterface source, ClearCLImageInterface mask, ClearCLImageInterface destination)

**Macro**
* Ext.CLIJ2_maskStackWithPlane(Image source, Image mask, ByRef Image destination)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## masked_voronoi_labeling
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean maskedVoronoiLabeling(ClearCLBuffer input, ClearCLBuffer mask, ClearCLImageInterface destination)

**clEsperantoJ**
* ClearCLImageInterface masked_voronoi_labeling(ClearCLBuffer input, ClearCLBuffer mask, ClearCLImageInterface destination)

**Macro**
* Ext.CLIJx_maskedVoronoiLabeling(Image input, Image mask, ByRef Image destination)

**pyclesperanto**
* masked_voronoi_labeling(binary_source : Image, mask_image : Image, labeling_destination : Image = None):

## matrix_equal
**CLIJ2**
* boolean matrixEqual(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer matrix_equal(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3)

**Macro**
* Ext.CLIJ2_matrixEqual(Image input1, Image input2, Number tolerance)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## maximum_box
**CLIJ2**
* boolean maximum2DBox(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3, double arg4)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface maximum2d_box(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3, double arg4)

**Macro**
* Ext.CLIJ2_maximum2DBox(Image source, ByRef Image destination, Number radius_x, Number radius_y)

**pyclesperanto**
* maximum_box(source : Image, destination : Image = None, radius_x : int = 1, radius_y : int = 1, radius_z : int = 1):

## maximum_sphere
**CLIJ2**
* boolean maximum2DSphere(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3, double arg4)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface maximum2d_sphere(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3, double arg4)

**Macro**
* Ext.CLIJ2_maximum2DSphere(Image source, ByRef Image destination, Number radius_x, Number radius_y)

**pyclesperanto**
* maximum_sphere(source : Image, destination : Image = None, radius_x : float = 1, radius_y : float = 1, radius_z=0):

## maximum_box
**CLIJ2**
* boolean maximum3DBox(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3, double arg4, double arg5)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface maximum3d_box(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3, double arg4, double arg5)

**Macro**
* Ext.CLIJ2_maximum3DBox(Image source, ByRef Image destination, Number radius_x, Number radius_y, Number radius_z)

**pyclesperanto**
* maximum_box(source : Image, destination : Image = None, radius_x : int = 1, radius_y : int = 1, radius_z : int = 1):

## maximum_slice_by_slice_sphere
**CLIJ2**
* boolean maximum3DSliceBySliceSphere(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3, double arg4)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface maximum3d_slice_by_slice_sphere(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3, double arg4)

**Macro**
* Ext.CLIJ2_maximumSliceBySliceSphere(Image source, ByRef Image destination, Number radiusX, Number radiusY)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## maximum_sphere
**CLIJ2**
* boolean maximum3DSphere(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3, double arg4, double arg5)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface maximum3d_sphere(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3, double arg4, double arg5)

**Macro**
* Ext.CLIJ2_maximum3DSphere(Image source, ByRef Image destination, Number radius_x, Number radius_y, Number radius_z)

**pyclesperanto**
* maximum_sphere(source : Image, destination : Image = None, radius_x : float = 1, radius_y : float = 1, radius_z=0):

## maximum_box
**CLIJ2**
* ClearCLKernel maximumBox(ClearCLImageInterface arg1, ClearCLImageInterface arg2, ClearCLKernel arg3)
* boolean maximumBox(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3, double arg4)
* boolean maximumBox(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3, double arg4, double arg5)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface maximum_box(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3, double arg4)
* ClearCLImageInterface maximum_box(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3, double arg4, double arg5)

**Macro**
* Ext.CLIJ2_maximum2DBox(Image source, ByRef Image destination, Number radius_x, Number radius_y)

**pyclesperanto**
* maximum_box(source : Image, destination : Image = None, radius_x : int = 1, radius_y : int = 1, radius_z : int = 1):

## maximum_diamond
**CLIJ2**
* ClearCLKernel maximumDiamond(ClearCLImageInterface arg1, ClearCLImageInterface arg2, ClearCLKernel arg3)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* <span style="color:red">(Missing)</span>

**Macro**
* <span style="color:red">(Missing)</span>

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## maximum_distance_of_touching_neighbors
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean maximumDistanceOfTouchingNeighbors(ClearCLBuffer distance_matrix, ClearCLBuffer touch_matrix, ClearCLBuffer distancelist_destination)

**clEsperantoJ**
* ClearCLBuffer maximum_distance_of_touching_neighbors(ClearCLBuffer distance_matrix, ClearCLBuffer touch_matrix, ClearCLBuffer distancelist_destination)

**Macro**
* Ext.CLIJx_maximumDistanceOfTouchingNeighbors(Image distance_matrix, Image touch_matrix, ByRef Image distancelist_destination)

**pyclesperanto**
* maximum_distance_of_touching_neighbors(distance_matrix : Image, touch_matrix: Image, distancelist_destination: Image = None):

## maximum_image_and_scalar
**CLIJ2**
* boolean maximumImageAndScalar(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface maximum_image_and_scalar(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3)

**Macro**
* Ext.CLIJ2_maximumImageAndScalar(Image source, ByRef Image destination, Number scalar)

**pyclesperanto**
* maximum_image_and_scalar(source : Image, destination : Image = None, scalar : float = 0):

## maximum_images
**CLIJ2**
* boolean maximumImages(ClearCLImageInterface source1, ClearCLImageInterface source2, ClearCLImageInterface destination)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface maximum_images(ClearCLImageInterface source1, ClearCLImageInterface source2, ClearCLImageInterface destination)

**Macro**
* Ext.CLIJ2_maximumImages(Image source1, Image source2, ByRef Image destination)

**pyclesperanto**
* maximum_images(source1 : Image, source2 : Image, destination : Image = None):

## maximum_neighbor_distance_map
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean maximumNeighborDistanceMap(ClearCLBuffer input, ClearCLBuffer destination)

**clEsperantoJ**
* ClearCLBuffer maximum_neighbor_distance_map(ClearCLBuffer input, ClearCLBuffer destination)

**Macro**
* Ext.CLIJx_maximumNeighborDistanceMap(Image input, ByRef Image destination)

## maximum_octagon
**CLIJ2**
* boolean maximumOctagon(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer maximum_octagon(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3)

**Macro**
* Ext.CLIJ2_maximumOctagon(Image input, ByRef Image destination, Number iterations)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## maximum_of_all_pixels
**CLIJ2**
* double maximumOfAllPixels(ClearCLImageInterface source)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface maximum_of_all_pixels(ClearCLImageInterface source)

**Macro**
* Ext.CLIJ2_maximumOfAllPixels(Image source)

**pyclesperanto**
* maximum_of_all_pixels(source  : Image):

## maximum_of_masked_pixels
**CLIJ2**
* double maximumOfMaskedPixels(ClearCLBuffer source, ClearCLBuffer mask)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer maximum_of_masked_pixels(ClearCLBuffer source, ClearCLBuffer mask)

**Macro**
* Ext.CLIJ2_maximumOfMaskedPixels(Image source, Image mask)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## maximum_of_n_nearest_neighbors_map
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean maximumOfNNearestNeighborsMap(ClearCLBuffer arg1, ClearCLBuffer arg2, ClearCLBuffer arg3, double arg4)

**clEsperantoJ**
* ClearCLBuffer maximum_of_n_nearest_neighbors_map(ClearCLBuffer arg1, ClearCLBuffer arg2, ClearCLBuffer arg3, double arg4)

**Macro**
* Ext.CLIJx_maximumOfNNearestNeighborsMap(Image parametric_map, Image label_map, ByRef Image parametric_map_destination, Number n)

**pyclesperanto**
* maximum_of_n_nearest_neighbors_map(parametric_map : Image, label_map : Image, parametric_map_destination : Image = None, n : int = 1):

## maximum_of_proximal_neighbors_map
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean maximumOfProximalNeighborsMap(ClearCLBuffer arg1, ClearCLBuffer arg2, ClearCLBuffer arg3, double arg4, double arg5)

**clEsperantoJ**
* ClearCLBuffer maximum_of_proximal_neighbors_map(ClearCLBuffer arg1, ClearCLBuffer arg2, ClearCLBuffer arg3, double arg4, double arg5)

**Macro**
* Ext.CLIJx_maximumOfProximalNeighborsMap(Image parametric_map, Image label_map, ByRef Image parametric_map_destination, Number min_distance, Number max_distance)

**pyclesperanto**
* maximum_of_proximal_neighbors_map(parametric_map : Image, label_map : Image, parametric_map_destination : Image = None, min_distance : float = 0, max_distance : float = np.finfo(np.float32).max):

## maximum_of_touching_neighbors
**CLIJ2**
* boolean maximumOfTouchingNeighbors(ClearCLBuffer values, ClearCLBuffer touch_matrix, ClearCLBuffer maximum_values_destination)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer maximum_of_touching_neighbors(ClearCLBuffer values, ClearCLBuffer touch_matrix, ClearCLBuffer maximum_values_destination)

**Macro**
* Ext.CLIJ2_maximumOfTouchingNeighbors(Image values, Image touch_matrix, ByRef Image maximum_values_destination)

**pyclesperanto**
* maximum_of_touching_neighbors(values : Image, touch_matrix : Image, maximum_values_destination : Image = None):

## maximum_of_touching_neighbors_map
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean maximumOfTouchingNeighborsMap(ClearCLBuffer arg1, ClearCLBuffer arg2, ClearCLBuffer arg3, double arg4, boolean arg5)

**clEsperantoJ**
* ClearCLBuffer maximum_of_touching_neighbors_map(ClearCLBuffer arg1, ClearCLBuffer arg2, ClearCLBuffer arg3, double arg4, boolean arg5)

**Macro**
* Ext.CLIJx_maximumOfTouchingNeighborsMap(Image parametric_map, Image label_map, ByRef Image parametric_map_destination, Number radius, Boolean ignore_touching_background)

**pyclesperanto**
* maximum_of_touching_neighbors_map(parametric_map : Image, label_map : Image, parametric_map_destination : Image = None, radius : int = 1, ignore_touching_background : bool = True):

## maximum_x_projection
**CLIJ2**
* boolean maximumXProjection(ClearCLImageInterface source, ClearCLImageInterface destination_max)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface maximum_x_projection(ClearCLImageInterface source, ClearCLImageInterface destination_max)

**Macro**
* Ext.CLIJ2_maximumXProjection(Image source, ByRef Image destination_max)

**pyclesperanto**
* maximum_x_projection(source : Image, destination_max : Image = None):

## maximum_xyz_projection
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean maximumXYZProjection(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3, double arg4, double arg5)
* boolean maximumXYZProjection(ClearCLImage arg1, ClearCLImage arg2, double arg3, double arg4, double arg5)

## maximum_y_projection
**CLIJ2**
* boolean maximumYProjection(ClearCLImageInterface source, ClearCLImageInterface destination_max)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface maximum_y_projection(ClearCLImageInterface source, ClearCLImageInterface destination_max)

**Macro**
* Ext.CLIJ2_maximumYProjection(Image source, ByRef Image destination_max)

**pyclesperanto**
* maximum_y_projection(source : Image, destination_max : Image = None):

## maximum_z_projection
**CLIJ2**
* boolean maximumZProjection(ClearCLImageInterface source, ClearCLImageInterface destination_max)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface maximum_z_projection(ClearCLImageInterface source, ClearCLImageInterface destination_max)

**Macro**
* Ext.CLIJ2_maximumZProjection(Image source, ByRef Image destination_max)

**pyclesperanto**
* maximum_z_projection(source :Image, destination_max :Image = None):

## maximum_z_projection_bounded
**CLIJ2**
* boolean maximumZProjectionBounded(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3, double arg4)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface maximum_z_projection_bounded(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3, double arg4)

**Macro**
* Ext.CLIJ2_maximumZProjectionBounded(Image source, ByRef Image destination_max, Number min_z, Number max_z)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## maximum_distance_of_n_shortest_distances
<span style="color:green">(experimental)</span>

**pyclesperanto**
* maximum_distance_of_n_shortest_distances(distance_matrix : Image, distance_vector_destination: Image = None, n : int = 1):

## mean_box
**CLIJ2**
* boolean mean2DBox(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3, double arg4)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface mean2d_box(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3, double arg4)

**Macro**
* Ext.CLIJ2_mean2DBox(Image source, ByRef Image destination, Number radius_x, Number radius_y)

**pyclesperanto**
* mean_box(source : Image, destination : Image = None, radius_x : float = 1, radius_y : float = 1, radius_z : float = 1):

## mean_sphere
**CLIJ2**
* boolean mean2DSphere(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3, double arg4)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface mean2d_sphere(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3, double arg4)

**Macro**
* Ext.CLIJ2_mean2DSphere(Image source, ByRef Image destination, Number radius_x, Number radius_y)

**pyclesperanto**
* mean_sphere(source : Image, destination : Image = None, radius_x : float = 1, radius_y : float = 1, radius_z : float = 1):

## mean_box
**CLIJ2**
* boolean mean3DBox(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3, double arg4, double arg5)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface mean3d_box(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3, double arg4, double arg5)

**Macro**
* Ext.CLIJ2_mean3DBox(Image source, ByRef Image destination, Number radius_x, Number radius_y, Number radius_z)

**pyclesperanto**
* mean_box(source : Image, destination : Image = None, radius_x : float = 1, radius_y : float = 1, radius_z : float = 1):

## mean_sphere
**CLIJ2**
* boolean mean3DSphere(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3, double arg4, double arg5)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface mean3d_sphere(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3, double arg4, double arg5)

**Macro**
* Ext.CLIJ2_mean3DSphere(Image source, ByRef Image destination, Number radius_x, Number radius_y, Number radius_z)

**pyclesperanto**
* mean_sphere(source : Image, destination : Image = None, radius_x : float = 1, radius_y : float = 1, radius_z : float = 1):

## mean_box
**CLIJ2**
* boolean meanBox(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3, double arg4, double arg5)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface mean_box(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3, double arg4, double arg5)

**Macro**
* Ext.CLIJ2_mean2DBox(Image source, ByRef Image destination, Number radius_x, Number radius_y)

**pyclesperanto**
* mean_box(source : Image, destination : Image = None, radius_x : float = 1, radius_y : float = 1, radius_z : float = 1):

## mean_closest_spot_distance
**CLIJ2**
* double meanClosestSpotDistance(ClearCLBuffer arg1, ClearCLBuffer arg2)
* double[] meanClosestSpotDistance(ClearCLBuffer arg1, ClearCLBuffer arg2, boolean arg3)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer mean_closest_spot_distance(ClearCLBuffer arg1, ClearCLBuffer arg2)
* ClearCLBuffer mean_closest_spot_distance(ClearCLBuffer arg1, ClearCLBuffer arg2, boolean arg3)

**Macro**
* Ext.CLIJ2_meanClosestSpotDistance(Image spotsA, Image spotsB, Boolean bidirectional)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## mean_of_all_pixels
**CLIJ2**
* double meanOfAllPixels(ClearCLImageInterface source)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface mean_of_all_pixels(ClearCLImageInterface source)

**Macro**
* Ext.CLIJ2_meanOfAllPixels(Image source)

**pyclesperanto**
* mean_of_all_pixels(source : Image):

## mean_of_masked_pixels
**CLIJ2**
* double meanOfMaskedPixels(ClearCLBuffer source, ClearCLBuffer mask)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer mean_of_masked_pixels(ClearCLBuffer source, ClearCLBuffer mask)

**Macro**
* Ext.CLIJ2_meanOfMaskedPixels(Image source, Image mask)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## mean_of_n_nearest_neighbors_map
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean meanOfNNearestNeighborsMap(ClearCLBuffer arg1, ClearCLBuffer arg2, ClearCLBuffer arg3, double arg4)

**clEsperantoJ**
* ClearCLBuffer mean_of_n_nearest_neighbors_map(ClearCLBuffer arg1, ClearCLBuffer arg2, ClearCLBuffer arg3, double arg4)

**Macro**
* Ext.CLIJx_meanOfNNearestNeighborsMap(Image parametric_map, Image label_map, ByRef Image parametric_map_destination, Number n)

**pyclesperanto**
* mean_of_n_nearest_neighbors_map(parametric_map : Image, label_map : Image, parametric_map_destination : Image = None, n : int = 1):

## mean_of_pixels_above_threshold
**CLIJ2**
* double meanOfPixelsAboveThreshold(ClearCLBuffer arg1, double arg2)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer mean_of_pixels_above_threshold(ClearCLBuffer arg1, double arg2)

**Macro**
* Ext.CLIJ2_meanOfPixelsAboveThreshold(Image source, Number threshold)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## mean_of_proximal_neighbors_map
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean meanOfProximalNeighborsMap(ClearCLBuffer arg1, ClearCLBuffer arg2, ClearCLBuffer arg3, double arg4, double arg5)

**clEsperantoJ**
* ClearCLBuffer mean_of_proximal_neighbors_map(ClearCLBuffer arg1, ClearCLBuffer arg2, ClearCLBuffer arg3, double arg4, double arg5)

**Macro**
* Ext.CLIJx_meanOfProximalNeighborsMap(Image parametric_map, Image label_map, ByRef Image parametric_map_destination, Number min_distance, Number max_distance)

**pyclesperanto**
* mean_of_proximal_neighbors_map(parametric_map : Image, label_map : Image, parametric_map_destination : Image = None, min_distance : float = 0, max_distance : float = np.finfo(np.float32).max):

## mean_of_touching_neighbors
**CLIJ2**
* boolean meanOfTouchingNeighbors(ClearCLBuffer values, ClearCLBuffer touch_matrix, ClearCLBuffer mean_values_destination)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer mean_of_touching_neighbors(ClearCLBuffer values, ClearCLBuffer touch_matrix, ClearCLBuffer mean_values_destination)

**Macro**
* Ext.CLIJ2_meanOfTouchingNeighbors(Image values, Image touch_matrix, ByRef Image mean_values_destination)

**pyclesperanto**
* mean_of_touching_neighbors(values : Image, touch_matrix : Image, mean_values_destination : Image = None):

## mean_of_touching_neighbors_map
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean meanOfTouchingNeighborsMap(ClearCLBuffer arg1, ClearCLBuffer arg2, ClearCLBuffer arg3, double arg4, boolean arg5)

**clEsperantoJ**
* ClearCLBuffer mean_of_touching_neighbors_map(ClearCLBuffer arg1, ClearCLBuffer arg2, ClearCLBuffer arg3, double arg4, boolean arg5)

**Macro**
* Ext.CLIJx_meanOfTouchingNeighborsMap(Image parametric_map, Image label_map, ByRef Image parametric_map_destination, Number radius, Boolean ignore_touching_background)

**pyclesperanto**
* mean_of_touching_neighbors_map(parametric_map : Image, label_map : Image, parametric_map_destination : Image = None, radius : int = 1, ignore_touching_background : bool = True):

## mean_slice_by_slice_sphere
**CLIJ2**
* boolean meanSliceBySliceSphere(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3, double arg4)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface mean_slice_by_slice_sphere(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3, double arg4)

**Macro**
* Ext.CLIJ2_meanSliceBySliceSphere(Image source, ByRef Image destination, Number radiusX, Number radiusY)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## mean_squared_error
**CLIJ2**
* double meanSquaredError(ClearCLBuffer source1, ClearCLBuffer source2)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer mean_squared_error(ClearCLBuffer source1, ClearCLBuffer source2)

**Macro**
* Ext.CLIJ2_meanSquaredError(Image source1, Image source2)

**pyclesperanto**
* mean_squared_error(source1 : Image, source2 : Image):

## mean_x_projection
**CLIJ2**
* boolean meanXProjection(ClearCLImageInterface source, ClearCLImageInterface destination)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface mean_x_projection(ClearCLImageInterface source, ClearCLImageInterface destination)

**Macro**
* Ext.CLIJ2_meanXProjection(Image source, ByRef Image destination)

**pyclesperanto**
* mean_x_projection(source : Image, destination : Image):

## mean_y_projection
**CLIJ2**
* boolean meanYProjection(ClearCLImageInterface source, ClearCLImageInterface destination)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface mean_y_projection(ClearCLImageInterface source, ClearCLImageInterface destination)

**Macro**
* Ext.CLIJ2_meanYProjection(Image source, ByRef Image destination)

**pyclesperanto**
* mean_y_projection(source : Image, destination : Image):

## mean_z_projection
**CLIJ2**
* boolean meanZProjection(ClearCLImageInterface source, ClearCLImageInterface destination)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface mean_z_projection(ClearCLImageInterface source, ClearCLImageInterface destination)

**Macro**
* Ext.CLIJ2_meanZProjection(Image source, ByRef Image destination)

**pyclesperanto**
* mean_z_projection(source : Image, destination : Image):

## mean_z_projection_above_threshold
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean meanZProjectionAboveThreshold(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3)

**clEsperantoJ**
* ClearCLImageInterface mean_z_projection_above_threshold(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3)

**Macro**
* Ext.CLIJx_meanZProjectionAboveThreshold(Image source, ByRef Image destination, Number threshold)

## mean_z_projection_below_threshold
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean meanZProjectionBelowThreshold(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3)

**clEsperantoJ**
* ClearCLImageInterface mean_z_projection_below_threshold(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3)

**Macro**
* Ext.CLIJx_meanZProjectionBelowThreshold(Image source, ByRef Image destination, Number threshold)

## mean_z_projection_bounded
**CLIJ2**
* boolean meanZProjectionBounded(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3, double arg4)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface mean_z_projection_bounded(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3, double arg4)

**Macro**
* Ext.CLIJ2_meanZProjectionBounded(Image source, ByRef Image destination_mean, Number min_z, Number max_z)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## median_box
**CLIJ2**
* boolean median2DBox(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3, double arg4)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface median2d_box(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3, double arg4)

**Macro**
* Ext.CLIJ2_median2DBox(Image source, ByRef Image destination, Number radiusX, Number radiusY)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## median_sphere
**CLIJ2**
* boolean median2DSphere(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3, double arg4)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface median2d_sphere(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3, double arg4)

**Macro**
* Ext.CLIJ2_median2DSphere(Image source, ByRef Image destination, Number radiusX, Number radiusY)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## median_box
**CLIJ2**
* boolean median3DBox(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3, double arg4, double arg5)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface median3d_box(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3, double arg4, double arg5)

**Macro**
* Ext.CLIJ2_median3DBox(Image source, ByRef Image destination, Number radiusX, Number radiusY, Number radiusZ)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## median_slice_by_slice_box
**CLIJ2**
* boolean median3DSliceBySliceBox(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3, double arg4)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface median3d_slice_by_slice_box(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3, double arg4)

**Macro**
* Ext.CLIJ2_medianSliceBySliceBox(Image source, ByRef Image destination, Number radiusX, Number radiusY)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## median_slice_by_slice_sphere
**CLIJ2**
* boolean median3DSliceBySliceSphere(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3, double arg4)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface median3d_slice_by_slice_sphere(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3, double arg4)

**Macro**
* Ext.CLIJ2_medianSliceBySliceSphere(Image source, ByRef Image destination, Number radiusX, Number radiusY)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## median_sphere
**CLIJ2**
* boolean median3DSphere(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3, double arg4, double arg5)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface median3d_sphere(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3, double arg4, double arg5)

**Macro**
* Ext.CLIJ2_median3DSphere(Image source, ByRef Image destination, Number radiusX, Number radiusY, Number radiusZ)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## median_of_touching_neighbors
**CLIJ2**
* boolean medianOfTouchingNeighbors(ClearCLBuffer values, ClearCLBuffer touch_matrix, ClearCLBuffer median_values_destination)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer median_of_touching_neighbors(ClearCLBuffer values, ClearCLBuffer touch_matrix, ClearCLBuffer median_values_destination)

**Macro**
* Ext.CLIJ2_medianOfTouchingNeighbors(Image values, Image touch_matrix, ByRef Image median_values_destination)

**pyclesperanto**
* median_of_touching_neighbors(values : Image, touch_matrix : Image, median_values_destination : Image = None):

## median_touch_portion_map
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean medianTouchPortionMap(ClearCLBuffer labels, ClearCLBuffer map_destination)

**clEsperantoJ**
* ClearCLBuffer median_touch_portion_map(ClearCLBuffer labels, ClearCLBuffer map_destination)

**Macro**
* Ext.CLIJx_medianTouchPortionMap(Image labels, ByRef Image map_destination)

## median_z_projection
**CLIJ2**
* boolean medianZProjection(ClearCLImageInterface source, ClearCLImageInterface destination)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface median_z_projection(ClearCLImageInterface source, ClearCLImageInterface destination)

**Macro**
* Ext.CLIJ2_medianZProjection(Image source, ByRef Image destination)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## median_z_projection_masked
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean medianZProjectionMasked(ClearCLImageInterface arg1, ClearCLImageInterface arg2, ClearCLImageInterface arg3)

**clEsperantoJ**
* ClearCLImageInterface median_z_projection_masked(ClearCLImageInterface arg1, ClearCLImageInterface arg2, ClearCLImageInterface arg3)

**Macro**
* Ext.CLIJx_medianZProjectionMasked(Image source, ByRef Image destination)

## merge_touching_labels
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean mergeTouchingLabels(ClearCLBuffer source, ClearCLBuffer destination)

**clEsperantoJ**
* ClearCLBuffer merge_touching_labels(ClearCLBuffer source, ClearCLBuffer destination)

**Macro**
* Ext.CLIJx_mergeTouchingLabels(Image source, ByRef Image destination)

**pyclesperanto**
* merge_touching_labels(labels_input: Image, labels_destination: Image = None):

## merge_touching_labels_special
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean mergeTouchingLabelsSpecial(ClearCLBuffer arg1, ClearCLBuffer arg2, ClearCLBuffer arg3, ClearCLBuffer arg4)

**clEsperantoJ**
* ClearCLBuffer merge_touching_labels_special(ClearCLBuffer arg1, ClearCLBuffer arg2, ClearCLBuffer arg3, ClearCLBuffer arg4)

## minimum_box
**CLIJ2**
* boolean minimum2DBox(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3, double arg4)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface minimum2d_box(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3, double arg4)

**Macro**
* Ext.CLIJ2_minimum2DBox(Image source, ByRef Image destination, Number radius_x, Number radius_y)

**pyclesperanto**
* minimum_box(source : Image, destination : Image = None, radius_x : float = 0, radius_y : float = 0, radius_z : float = 0):

## minimum_sphere
**CLIJ2**
* boolean minimum2DSphere(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3, double arg4)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface minimum2d_sphere(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3, double arg4)

**Macro**
* Ext.CLIJ2_minimum2DSphere(Image source, ByRef Image destination, Number radius_x, Number radius_y)

**pyclesperanto**
* minimum_sphere(source : Image, destination : Image = None, radius_x : float = 1, radius_y : float = 1, radius_z : float = 1):

## minimum_box
**CLIJ2**
* boolean minimum3DBox(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3, double arg4, double arg5)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface minimum3d_box(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3, double arg4, double arg5)

**Macro**
* Ext.CLIJ2_minimum3DBox(Image source, ByRef Image destination, Number radius_x, Number radius_y, Number radius_z)

**pyclesperanto**
* minimum_box(source : Image, destination : Image = None, radius_x : float = 0, radius_y : float = 0, radius_z : float = 0):

## minimum_slice_by_slice_sphere
**CLIJ2**
* boolean minimum3DSliceBySliceSphere(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3, double arg4)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface minimum3d_slice_by_slice_sphere(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3, double arg4)

**Macro**
* Ext.CLIJ2_minimumSliceBySliceSphere(Image source, ByRef Image destination, Number radiusX, Number radiusY)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## minimum_sphere
**CLIJ2**
* boolean minimum3DSphere(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3, double arg4, double arg5)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface minimum3d_sphere(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3, double arg4, double arg5)

**Macro**
* Ext.CLIJ2_minimum3DSphere(Image source, ByRef Image destination, Number radius_x, Number radius_y, Number radius_z)

**pyclesperanto**
* minimum_sphere(source : Image, destination : Image = None, radius_x : float = 1, radius_y : float = 1, radius_z : float = 1):

## minimum_box
**CLIJ2**
* ClearCLKernel minimumBox(ClearCLImageInterface arg1, ClearCLImageInterface arg2, ClearCLKernel arg3)
* boolean minimumBox(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3, double arg4)
* boolean minimumBox(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3, double arg4, double arg5)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface minimum_box(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3, double arg4)
* ClearCLImageInterface minimum_box(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3, double arg4, double arg5)

**Macro**
* Ext.CLIJ2_minimum2DBox(Image source, ByRef Image destination, Number radius_x, Number radius_y)

**pyclesperanto**
* minimum_box(source : Image, destination : Image = None, radius_x : float = 0, radius_y : float = 0, radius_z : float = 0):

## minimum_diamond
**CLIJ2**
* ClearCLKernel minimumDiamond(ClearCLImageInterface arg1, ClearCLImageInterface arg2, ClearCLKernel arg3)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* <span style="color:red">(Missing)</span>

**Macro**
* <span style="color:red">(Missing)</span>

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## minimum_distance_of_touching_neighbors
**CLIJ2**
* boolean minimumDistanceOfTouchingNeighbors(ClearCLBuffer distance_matrix, ClearCLBuffer touch_matrix, ClearCLBuffer minimum_distancelist_destination)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer minimum_distance_of_touching_neighbors(ClearCLBuffer distance_matrix, ClearCLBuffer touch_matrix, ClearCLBuffer minimum_distancelist_destination)

**Macro**
* Ext.CLIJ2_minimumDistanceOfTouchingNeighbors(Image distance_matrix, Image touch_matrix, ByRef Image minimum_distancelist_destination)

**pyclesperanto**
* minimum_distance_of_touching_neighbors(distance_matrix : Image, touch_matrix: Image, distancelist_destination: Image = None):

## minimum_image_and_scalar
**CLIJ2**
* boolean minimumImageAndScalar(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface minimum_image_and_scalar(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3)

**Macro**
* Ext.CLIJ2_minimumImageAndScalar(Image source, ByRef Image destination, Number scalar)

**pyclesperanto**
* minimum_image_and_scalar(source : Image, destination : Image = None, scalar : float = 0):

## minimum_images
**CLIJ2**
* boolean minimumImages(ClearCLImageInterface source1, ClearCLImageInterface source2, ClearCLImageInterface destination)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface minimum_images(ClearCLImageInterface source1, ClearCLImageInterface source2, ClearCLImageInterface destination)

**Macro**
* Ext.CLIJ2_minimumImages(Image source1, Image source2, ByRef Image destination)

**pyclesperanto**
* minimum_images(source1 : Image, source2 : Image, destination : Image = None):

## minimum_neighbor_distance_map
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean minimumNeighborDistanceMap(ClearCLBuffer input, ClearCLBuffer destination)

**clEsperantoJ**
* ClearCLBuffer minimum_neighbor_distance_map(ClearCLBuffer input, ClearCLBuffer destination)

**Macro**
* Ext.CLIJx_minimumNeighborDistanceMap(Image input, ByRef Image destination)

## minimum_octagon
**CLIJ2**
* boolean minimumOctagon(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer minimum_octagon(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3)

**Macro**
* Ext.CLIJ2_minimumOctagon(Image input, ByRef Image destination, Number iterations)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## minimum_of_all_pixels
**CLIJ2**
* double minimumOfAllPixels(ClearCLImageInterface source)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface minimum_of_all_pixels(ClearCLImageInterface source)

**Macro**
* Ext.CLIJ2_minimumOfAllPixels(Image source)

**pyclesperanto**
* minimum_of_all_pixels(source : Image):

## minimum_of_masked_pixels
**CLIJ2**
* double minimumOfMaskedPixels(ClearCLBuffer source, ClearCLBuffer mask)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer minimum_of_masked_pixels(ClearCLBuffer source, ClearCLBuffer mask)

**Macro**
* Ext.CLIJ2_minimumOfMaskedPixels(Image source, Image mask)

**pyclesperanto**
* minimum_of_masked_pixels(source : Image, mask : Image):

## minimum_of_n_nearest_neighbors_map
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean minimumOfNNearestNeighborsMap(ClearCLBuffer arg1, ClearCLBuffer arg2, ClearCLBuffer arg3, double arg4)

**clEsperantoJ**
* ClearCLBuffer minimum_of_n_nearest_neighbors_map(ClearCLBuffer arg1, ClearCLBuffer arg2, ClearCLBuffer arg3, double arg4)

**Macro**
* Ext.CLIJx_minimumOfNNearestNeighborsMap(Image parametric_map, Image label_map, ByRef Image parametric_map_destination, Number n)

**pyclesperanto**
* minimum_of_n_nearest_neighbors_map(parametric_map : Image, label_map : Image, parametric_map_destination : Image = None, n : int = 1):

## minimum_of_proximal_neighbors_map
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean minimumOfProximalNeighborsMap(ClearCLBuffer arg1, ClearCLBuffer arg2, ClearCLBuffer arg3, double arg4, double arg5)

**clEsperantoJ**
* ClearCLBuffer minimum_of_proximal_neighbors_map(ClearCLBuffer arg1, ClearCLBuffer arg2, ClearCLBuffer arg3, double arg4, double arg5)

**Macro**
* Ext.CLIJx_minimumOfProximalNeighborsMap(Image parametric_map, Image label_map, ByRef Image parametric_map_destination, Number min_distance, Number max_distance)

**pyclesperanto**
* minimum_of_proximal_neighbors_map(parametric_map : Image, label_map : Image, parametric_map_destination : Image = None, min_distance : float = 0, max_distance : float = np.finfo(np.float32).max):

## minimum_of_touching_neighbors
**CLIJ2**
* boolean minimumOfTouchingNeighbors(ClearCLBuffer values, ClearCLBuffer touch_matrix, ClearCLBuffer minimum_values_destination)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer minimum_of_touching_neighbors(ClearCLBuffer values, ClearCLBuffer touch_matrix, ClearCLBuffer minimum_values_destination)

**Macro**
* Ext.CLIJ2_minimumOfTouchingNeighbors(Image values, Image touch_matrix, ByRef Image minimum_values_destination)

**pyclesperanto**
* minimum_of_touching_neighbors(values : Image, touch_matrix : Image, minimum_values_destination : Image = None):

## minimum_of_touching_neighbors_map
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean minimumOfTouchingNeighborsMap(ClearCLBuffer arg1, ClearCLBuffer arg2, ClearCLBuffer arg3, double arg4, boolean arg5)

**clEsperantoJ**
* ClearCLBuffer minimum_of_touching_neighbors_map(ClearCLBuffer arg1, ClearCLBuffer arg2, ClearCLBuffer arg3, double arg4, boolean arg5)

**Macro**
* Ext.CLIJx_minimumOfTouchingNeighborsMap(Image parametric_map, Image label_map, ByRef Image parametric_map_destination, Number radius, Boolean ignore_touching_background)

**pyclesperanto**
* minimum_of_touching_neighbors_map(parametric_map : Image, label_map : Image, parametric_map_destination : Image = None, radius : int = 1, ignore_touching_background : bool = True):

## minimum_x_projection
**CLIJ2**
* boolean minimumXProjection(ClearCLImageInterface source, ClearCLImageInterface destination_min)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface minimum_x_projection(ClearCLImageInterface source, ClearCLImageInterface destination_min)

**Macro**
* Ext.CLIJ2_minimumXProjection(Image source, ByRef Image destination_min)

**pyclesperanto**
* minimum_x_projection(source : Image, destination_min : Image = None):

## minimum_y_projection
**CLIJ2**
* boolean minimumYProjection(ClearCLImageInterface source, ClearCLImageInterface destination_min)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface minimum_y_projection(ClearCLImageInterface source, ClearCLImageInterface destination_min)

**Macro**
* Ext.CLIJ2_minimumYProjection(Image source, ByRef Image destination_min)

**pyclesperanto**
* minimum_y_projection(source : Image, destination_min : Image = None):

## minimum_z_projection
**CLIJ2**
* boolean minimumZProjection(ClearCLImageInterface source, ClearCLImageInterface destination_min)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface minimum_z_projection(ClearCLImageInterface source, ClearCLImageInterface destination_min)

**Macro**
* Ext.CLIJ2_minimumZProjection(Image source, ByRef Image destination_min)

**pyclesperanto**
* minimum_z_projection(source : Image, destination_min : Image = None):

## minimum_z_projection_bounded
**CLIJ2**
* boolean minimumZProjectionBounded(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3, double arg4)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface minimum_z_projection_bounded(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3, double arg4)

**Macro**
* Ext.CLIJ2_minimumZProjectionBounded(Image source, ByRef Image destination_min, Number min_z, Number max_z)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## minimum_z_projection_thresholded_bounded
**CLIJ2**
* boolean minimumZProjectionThresholdedBounded(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3, double arg4, double arg5)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer minimum_z_projection_thresholded_bounded(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3, double arg4, double arg5)

**Macro**
* Ext.CLIJ2_minimumZProjectionThresholdedBounded(Image source, ByRef Image destination_min, Number min_z, Number max_z)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## mode_of_n_nearest_neighbors_map
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean modeOfNNearestNeighborsMap(ClearCLBuffer arg1, ClearCLBuffer arg2, ClearCLBuffer arg3, double arg4)

**clEsperantoJ**
* ClearCLBuffer mode_of_n_nearest_neighbors_map(ClearCLBuffer arg1, ClearCLBuffer arg2, ClearCLBuffer arg3, double arg4)

**Macro**
* Ext.CLIJx_modeOfNNearestNeighborsMap(Image parametric_map, Image label_map, ByRef Image parametric_map_destination, Number n)

**pyclesperanto**
* mode_of_n_nearest_neighbors_map(parametric_map : Image, label_map : Image, parametric_map_destination : Image = None, n : int = 1):

## mode_of_proximal_neighbors_map
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean modeOfProximalNeighborsMap(ClearCLBuffer arg1, ClearCLBuffer arg2, ClearCLBuffer arg3, double arg4, double arg5)

**clEsperantoJ**
* ClearCLBuffer mode_of_proximal_neighbors_map(ClearCLBuffer arg1, ClearCLBuffer arg2, ClearCLBuffer arg3, double arg4, double arg5)

**Macro**
* Ext.CLIJx_modeOfProximalNeighborsMap(Image parametric_map, Image label_map, ByRef Image parametric_map_destination, Number min_distance, Number max_distance)

**pyclesperanto**
* mode_of_proximal_neighbors_map(parametric_map : Image, label_map : Image, parametric_map_destination : Image = None, min_distance : float = 0, max_distance : float = np.finfo(np.float32).max):

## mode_of_touching_neighbors
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean modeOfTouchingNeighbors(ClearCLBuffer values, ClearCLBuffer touch_matrix, ClearCLBuffer mode_values_destination)

**clEsperantoJ**
* ClearCLBuffer mode_of_touching_neighbors(ClearCLBuffer values, ClearCLBuffer touch_matrix, ClearCLBuffer mode_values_destination)

**Macro**
* Ext.CLIJx_modeOfTouchingNeighbors(Image values, Image touch_matrix, ByRef Image mode_values_destination)

**pyclesperanto**
* mode_of_touching_neighbors(src_values : Image, touch_matrix : Image, dst_values : Image = None):

## mode_of_touching_neighbors_map
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean modeOfTouchingNeighborsMap(ClearCLBuffer arg1, ClearCLBuffer arg2, ClearCLBuffer arg3, double arg4, boolean arg5)

**clEsperantoJ**
* ClearCLBuffer mode_of_touching_neighbors_map(ClearCLBuffer arg1, ClearCLBuffer arg2, ClearCLBuffer arg3, double arg4, boolean arg5)

**Macro**
* Ext.CLIJx_modeOfTouchingNeighborsMap(Image parametric_map, Image label_map, ByRef Image parametric_map_destination, Number radius, Boolean ignore_touching_background)

**pyclesperanto**
* mode_of_touching_neighbors_map(parametric_map : Image, label_map : Image, parametric_map_destination : Image = None, radius : int = 1, ignore_touching_background : bool = True):

## chamfer_distance_map
<span style="color:green">(experimental)</span>

**Macro**
* Ext.CLIJx_morphoLibJChamferDistanceMap(Image input, ByRef Image destination)

## classic_watershed
<span style="color:green">(experimental)</span>

**Macro**
* Ext.CLIJx_morphoLibJClassicWatershed(Image gradient_input, Image binary_restriction_input, ByRef Image destination, Number h_min, Number h_max)

## extended_maxima
<span style="color:green">(experimental)</span>

**Macro**
* Ext.CLIJx_morphoLibJExtendedMaxima(Image input, ByRef Image binary_destination, Number tolerance_threshold)

## extended_minima
<span style="color:green">(experimental)</span>

**Macro**
* Ext.CLIJx_morphoLibJExtendedMinima(Image input, ByRef Image binary_destination, Number tolerance_threshold)

## fill_holes
<span style="color:green">(experimental)</span>

**Macro**
* Ext.CLIJx_morphoLibJFillHoles(Image input, ByRef Image destination)

## flood_fill_components_labeling
<span style="color:green">(experimental)</span>

**Macro**
* Ext.CLIJx_morphoLibJFloodFillComponentsLabeling(Image input, ByRef Image destination)

## keep_largest_region
<span style="color:green">(experimental)</span>

**Macro**
* Ext.CLIJx_morphoLibJKeepLargestRegion(Image binary_input, ByRef Image binary_destination)

## marker_controlled_watershed
<span style="color:green">(experimental)</span>

**Macro**
* Ext.CLIJx_morphoLibJMarkerControlledWatershed(Image gradient_input, Image labelled_spots_image, Image binary_restriction_input, ByRef Image destination)

## morphological_segmentation_label_border_image
<span style="color:green">(experimental)</span>

**Macro**
* Ext.CLIJx_morphoLibJMorphologicalSegmentationLabelBorderImage(Image input, ByRef Image labels_destination, Number tolerance_threshold)

## morphological_segmentation_label_object_image
<span style="color:green">(experimental)</span>

**Macro**
* Ext.CLIJx_morphoLibJMorphologicalSegmentationLabelObjectImage(Image input, ByRef Image labels_destination, Number gradient_radius, Number tolerance_threshold)

## remove_largest_region
<span style="color:green">(experimental)</span>

**Macro**
* Ext.CLIJx_morphoLibJRemoveLargestRegion(Image labels_input, ByRef Image labels_destination, Boolean left, Boolean right, Boolean top, Boolean bottom, Boolean front, Boolean back)

## multiply_image_and_coordinate
**CLIJ2**
* boolean multiplyImageAndCoordinate(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface multiply_image_and_coordinate(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3)

**Macro**
* Ext.CLIJ2_multiplyImageAndCoordinate(Image source, ByRef Image destination, Number dimension)

**pyclesperanto**
* multiply_image_and_coordinate(source : Image, destination : Image = None, dimension = 0):

## multiply_image_and_scalar
**CLIJ2**
* boolean multiplyImageAndScalar(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface multiply_image_and_scalar(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3)

**Macro**
* Ext.CLIJ2_multiplyImageAndScalar(Image source, ByRef Image destination, Number scalar)

**pyclesperanto**
* multiply_image_and_scalar(source : Image, destination : Image = None, scalar : None = 0):

## multiply_image_stack_with_scalars
**CLIJ2**
* boolean multiplyImageStackWithScalars(ClearCLImageInterface arg1, ClearCLImageInterface arg2, float[] arg3)
* boolean multiplyImageStackWithScalars(ClearCLImageInterface arg1, ClearCLImageInterface arg2, ClearCLBuffer arg3)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface multiply_image_stack_with_scalars(ClearCLImageInterface arg1, ClearCLImageInterface arg2, float[] arg3)
* ClearCLBuffer multiply_image_stack_with_scalars(ClearCLImageInterface arg1, ClearCLImageInterface arg2, ClearCLBuffer arg3)

**Macro**
* Ext.CLIJ2_multiplyImageStackWithScalars(Image source, ByRef Image destination, Array scalars)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## multiply_images
**CLIJ2**
* boolean multiplyImages(ClearCLImageInterface factor1, ClearCLImageInterface factor2, ClearCLImageInterface destination)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface multiply_images(ClearCLImageInterface factor1, ClearCLImageInterface factor2, ClearCLImageInterface destination)

**Macro**
* Ext.CLIJ2_multiplyImages(Image factor1, Image factor2, ByRef Image destination)

**pyclesperanto**
* multiply_images(factor1 : Image, factor2 : Image, destination : Image = None):

## multiply_matrix
**CLIJ2**
* boolean multiplyMatrix(ClearCLBuffer matrix1, ClearCLBuffer matrix2, ClearCLBuffer matrix_destination)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer multiply_matrix(ClearCLBuffer matrix1, ClearCLBuffer matrix2, ClearCLBuffer matrix_destination)

**Macro**
* Ext.CLIJ2_multiplyMatrix(Image matrix1, Image matrix2, ByRef Image matrix_destination)

**pyclesperanto**
* multiply_matrix(matrix1, matrix2, matrix_destination):

## multiply_slice_by_slice_with_scalars
**CLIJ2**
* boolean multiplySliceBySliceWithScalars(ClearCLImageInterface arg1, ClearCLImageInterface arg2, float[] arg3)

**CLIJx**
* boolean multiplySliceBySliceWithScalars(ClearCLBuffer arg1, ClearCLBuffer arg2, float[] arg3)
* boolean multiplySliceBySliceWithScalars(ClearCLImage arg1, ClearCLImage arg2, float[] arg3)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* <span style="color:red">(Missing)</span>

**Macro**
* <span style="color:red">(Missing)</span>

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## multiply_stack_with_plane
**CLIJ2**
* boolean multiplyStackWithPlane(ClearCLImageInterface sourceStack, ClearCLImageInterface sourcePlane, ClearCLImageInterface destination)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface multiply_stack_with_plane(ClearCLImageInterface sourceStack, ClearCLImageInterface sourcePlane, ClearCLImageInterface destination)

**Macro**
* Ext.CLIJ2_multiplyStackWithPlane(Image sourceStack, Image sourcePlane, ByRef Image destination)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## n_closest_distances
**CLIJ2**
* boolean nClosestDistances(ClearCLBuffer arg1, ClearCLBuffer arg2, ClearCLBuffer arg3)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer n_closest_distances(ClearCLBuffer arg1, ClearCLBuffer arg2, ClearCLBuffer arg3)

**Macro**
* Ext.CLIJ2_nClosestDistances(Image distance_matrix, ByRef Image distances_destination, ByRef Image indexlist_destination, Number nClosestPointsTofind)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## n_closest_points
**CLIJ2**
* boolean nClosestPoints(ClearCLBuffer arg1, ClearCLBuffer arg2)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer n_closest_points(ClearCLBuffer arg1, ClearCLBuffer arg2)

**Macro**
* Ext.CLIJ2_nClosestPoints(Image distance_matrix, ByRef Image indexlist_destination, Number n)

**pyclesperanto**
* n_closest_points(distance_matrix : Image, indexlist_destination : Image = None, n : int = 1, ignore_background : bool = True, ignore_self : bool = True):

## neighbor_count_with_touch_portion_above_threshold_map
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean neighborCountWithTouchPortionAboveThresholdMap(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3)

**clEsperantoJ**
* ClearCLBuffer neighbor_count_with_touch_portion_above_threshold_map(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3)

**Macro**
* Ext.CLIJx_neighborCountWithTouchPortionAboveThresholdMap(Image labels, ByRef Image map_destination, Number minimum_touch_portion)

## neighbor_distance_range_ratio_map
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean neighborDistanceRangeRatioMap(ClearCLBuffer input, ClearCLBuffer destination)

**clEsperantoJ**
* ClearCLBuffer neighbor_distance_range_ratio_map(ClearCLBuffer input, ClearCLBuffer destination)

**Macro**
* Ext.CLIJx_neighborDistanceRangeRatioMap(Image input, ByRef Image destination)

## neighbors_of_neighbors
**CLIJ2**
* boolean neighborsOfNeighbors(ClearCLBuffer touch_matrix, ClearCLBuffer neighbor_matrix_destination)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer neighbors_of_neighbors(ClearCLBuffer touch_matrix, ClearCLBuffer neighbor_matrix_destination)

**Macro**
* Ext.CLIJ2_neighborsOfNeighbors(Image touch_matrix, ByRef Image neighbor_matrix_destination)

**pyclesperanto**
* neighbors_of_neighbors(touch_matrix : Image, neighbor_matrix_destination : Image = None):

## non_local_means
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean nonLocalMeans(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3, double arg4, double arg5, double arg6)

**clEsperantoJ**
* ClearCLBuffer non_local_means(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3, double arg4, double arg5, double arg6)

**Macro**
* Ext.CLIJx_nonLocalMeans(Image input, ByRef Image destination, Number radiusX, Number radiusY, Number radiusZ, Number sigma)

## nonzero_maximum_box
**CLIJ2**
* boolean nonzeroMaximumBox(ClearCLImageInterface input, ClearCLImageInterface destination)
* boolean nonzeroMaximumBox(ClearCLImageInterface arg1, ClearCLImageInterface arg2, ClearCLImageInterface arg3)
* ClearCLKernel nonzeroMaximumBox(ClearCLImageInterface arg1, ClearCLImageInterface arg2, ClearCLImageInterface arg3, ClearCLKernel arg4)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface nonzero_maximum_box(ClearCLImageInterface input, ClearCLImageInterface destination)
* ClearCLImageInterface nonzero_maximum_box(ClearCLImageInterface arg1, ClearCLImageInterface arg2, ClearCLImageInterface arg3)
* ClearCLKernel nonzero_maximum_box(ClearCLImageInterface arg1, ClearCLImageInterface arg2, ClearCLImageInterface arg3, ClearCLKernel arg4)

**Macro**
* Ext.CLIJ2_nonzeroMaximumBox(Image input, ByRef Image destination)

**pyclesperanto**
* nonzero_maximum_box (input, flag_dst, destination):

## nonzero_maximum_diamond
**CLIJ2**
* boolean nonzeroMaximumDiamond(ClearCLImageInterface input, ClearCLImageInterface destination)
* boolean nonzeroMaximumDiamond(ClearCLImageInterface arg1, ClearCLImageInterface arg2, ClearCLImageInterface arg3)
* ClearCLKernel nonzeroMaximumDiamond(ClearCLImageInterface arg1, ClearCLImageInterface arg2, ClearCLImageInterface arg3, ClearCLKernel arg4)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface nonzero_maximum_diamond(ClearCLImageInterface input, ClearCLImageInterface destination)
* ClearCLImageInterface nonzero_maximum_diamond(ClearCLImageInterface arg1, ClearCLImageInterface arg2, ClearCLImageInterface arg3)
* ClearCLKernel nonzero_maximum_diamond(ClearCLImageInterface arg1, ClearCLImageInterface arg2, ClearCLImageInterface arg3, ClearCLKernel arg4)

**Macro**
* Ext.CLIJ2_nonzeroMaximumDiamond(Image input, ByRef Image destination)

**pyclesperanto**
* nonzero_maximum_diamond (input, flag_dst, destination):

## nonzero_minimum_box
**CLIJ2**
* boolean nonzeroMinimumBox(ClearCLImageInterface input, ClearCLImageInterface destination)
* boolean nonzeroMinimumBox(ClearCLImageInterface arg1, ClearCLImageInterface arg2, ClearCLImageInterface arg3)
* ClearCLKernel nonzeroMinimumBox(ClearCLImageInterface arg1, ClearCLImageInterface arg2, ClearCLImageInterface arg3, ClearCLKernel arg4)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface nonzero_minimum_box(ClearCLImageInterface input, ClearCLImageInterface destination)
* ClearCLImageInterface nonzero_minimum_box(ClearCLImageInterface arg1, ClearCLImageInterface arg2, ClearCLImageInterface arg3)
* ClearCLKernel nonzero_minimum_box(ClearCLImageInterface arg1, ClearCLImageInterface arg2, ClearCLImageInterface arg3, ClearCLKernel arg4)

**Macro**
* Ext.CLIJ2_nonzeroMinimumBox(Image input, ByRef Image destination)

**pyclesperanto**
* nonzero_minimum_box (input, flag_dst, destination):

## nonzero_minimum_diamond
**CLIJ2**
* boolean nonzeroMinimumDiamond(ClearCLImageInterface input, ClearCLImageInterface destination)
* boolean nonzeroMinimumDiamond(ClearCLImageInterface arg1, ClearCLImageInterface arg2, ClearCLImageInterface arg3)
* ClearCLKernel nonzeroMinimumDiamond(ClearCLImageInterface arg1, ClearCLImageInterface arg2, ClearCLImageInterface arg3, ClearCLKernel arg4)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface nonzero_minimum_diamond(ClearCLImageInterface input, ClearCLImageInterface destination)
* ClearCLImageInterface nonzero_minimum_diamond(ClearCLImageInterface arg1, ClearCLImageInterface arg2, ClearCLImageInterface arg3)
* ClearCLKernel nonzero_minimum_diamond(ClearCLImageInterface arg1, ClearCLImageInterface arg2, ClearCLImageInterface arg3, ClearCLKernel arg4)

**Macro**
* Ext.CLIJ2_nonzeroMinimumDiamond(Image input, ByRef Image destination)

**pyclesperanto**
* nonzero_minimum_diamond (input, flag_dst, destination):

## not_equal
**CLIJ2**
* boolean notEqual(ClearCLImageInterface source1, ClearCLImageInterface source2, ClearCLBuffer destination)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer not_equal(ClearCLImageInterface source1, ClearCLImageInterface source2, ClearCLBuffer destination)

**Macro**
* Ext.CLIJ2_notEqual(Image source1, Image source2, ByRef Image destination)

**pyclesperanto**
* not_equal(source1 : Image, source2 : Image, destination : Image = None):

## not_equal_constant
**CLIJ2**
* boolean notEqualConstant(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer not_equal_constant(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3)

**Macro**
* Ext.CLIJ2_notEqualConstant(Image source, ByRef Image destination, Number constant)

**pyclesperanto**
* not_equal_constant(source : Image, destination : Image = None, constant : float = 0):

## onlyzero_overwrite_maximum_box
**CLIJ2**
* boolean onlyzeroOverwriteMaximumBox(ClearCLImageInterface input, ClearCLImageInterface destination)
* boolean onlyzeroOverwriteMaximumBox(ClearCLImageInterface arg1, ClearCLImageInterface arg2, ClearCLImageInterface arg3)
* ClearCLKernel onlyzeroOverwriteMaximumBox(ClearCLImageInterface arg1, ClearCLImageInterface arg2, ClearCLImageInterface arg3, ClearCLKernel arg4)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface onlyzero_overwrite_maximum_box(ClearCLImageInterface input, ClearCLImageInterface destination)
* ClearCLImageInterface onlyzero_overwrite_maximum_box(ClearCLImageInterface arg1, ClearCLImageInterface arg2, ClearCLImageInterface arg3)
* ClearCLKernel onlyzero_overwrite_maximum_box(ClearCLImageInterface arg1, ClearCLImageInterface arg2, ClearCLImageInterface arg3, ClearCLKernel arg4)

**Macro**
* Ext.CLIJ2_onlyzeroOverwriteMaximumBox(Image input, ByRef Image destination)

**pyclesperanto**
* onlyzero_overwrite_maximum_box (input, flag_dst, destination):

## onlyzero_overwrite_maximum_diamond
**CLIJ2**
* boolean onlyzeroOverwriteMaximumDiamond(ClearCLImageInterface input, ClearCLImageInterface destination)
* boolean onlyzeroOverwriteMaximumDiamond(ClearCLImageInterface arg1, ClearCLImageInterface arg2, ClearCLImageInterface arg3)
* ClearCLKernel onlyzeroOverwriteMaximumDiamond(ClearCLImageInterface arg1, ClearCLImageInterface arg2, ClearCLImageInterface arg3, ClearCLKernel arg4)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface onlyzero_overwrite_maximum_diamond(ClearCLImageInterface input, ClearCLImageInterface destination)
* ClearCLImageInterface onlyzero_overwrite_maximum_diamond(ClearCLImageInterface arg1, ClearCLImageInterface arg2, ClearCLImageInterface arg3)
* ClearCLKernel onlyzero_overwrite_maximum_diamond(ClearCLImageInterface arg1, ClearCLImageInterface arg2, ClearCLImageInterface arg3, ClearCLKernel arg4)

**Macro**
* Ext.CLIJ2_onlyzeroOverwriteMaximumDiamond(Image input, ByRef Image destination)

**pyclesperanto**
* onlyzero_overwrite_maximum_diamond(input, flag_dst, destination):

## opening_box
**CLIJ2**
* boolean openingBox(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer opening_box(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3)

**Macro**
* Ext.CLIJ2_openingBox(Image input, ByRef Image destination, Number number_of_erotions_and_dilations)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## opening_diamond
**CLIJ2**
* boolean openingDiamond(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer opening_diamond(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3)

**Macro**
* Ext.CLIJ2_openingDiamond(Image input, ByRef Image destination, Number number_of_erotions_and_dilations)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## operations
<span style="color:green">(experimental)</span>

**pyclesperanto**
* operations(must_have_categories : list = None, must_not_have_categories : list = None) -> dict:

## organise_windows
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean organiseWindows(double arg1, double arg2, double arg3, double arg4, double arg5, double arg6)

**clEsperantoJ**
* boolean organise_windows(double arg1, double arg2, double arg3, double arg4, double arg5, double arg6)

**Macro**
* Ext.CLIJx_organiseWindows(Number startX, Number startY, Number tilesX, Number tilesY, Number tileWidth, Number tileHeight)

## out_of_intensity_range
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean outOfIntensityRange(ClearCLBuffer arg1, ClearCLImageInterface arg2, double arg3, double arg4)

**clEsperantoJ**
* ClearCLImageInterface out_of_intensity_range(ClearCLBuffer arg1, ClearCLImageInterface arg2, double arg3, double arg4)

**Macro**
* Ext.CLIJx_outOfIntensityRange(Image source, ByRef Image destination)

## parametric_watershed
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean parametricWatershed(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3, double arg4, double arg5)

**clEsperantoJ**
* ClearCLBuffer parametric_watershed(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3, double arg4, double arg5)

**Macro**
* Ext.CLIJx_parametricWatershed(Image binary_source, ByRef Image destination, Number sigma_x, Number sigma_y, Number sigma_z)

## particle_image_velocimetry
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean particleImageVelocimetry(ClearCLBuffer arg1, ClearCLBuffer arg2, ClearCLBuffer arg3, ClearCLBuffer arg4, ClearCLBuffer arg5, double arg6, double arg7, double arg8)

**clEsperantoJ**
* ClearCLBuffer particle_image_velocimetry(ClearCLBuffer arg1, ClearCLBuffer arg2, ClearCLBuffer arg3, ClearCLBuffer arg4, ClearCLBuffer arg5, double arg6, double arg7, double arg8)

**Macro**
* Ext.CLIJx_particleImageVelocimetry(Image source1, Image source2, Image destinationDeltaX, Image destinationDeltaY, Image destinationDeltaZ, Number maxDeltaX, Number maxDeltaY, Number maxDeltaZ)

## particle_image_velocimetry
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean particleImageVelocimetry2D(ClearCLBuffer arg1, ClearCLBuffer arg2, ClearCLBuffer arg3, ClearCLBuffer arg4, double arg5)

**clEsperantoJ**
* ClearCLBuffer particle_image_velocimetry2d(ClearCLBuffer arg1, ClearCLBuffer arg2, ClearCLBuffer arg3, ClearCLBuffer arg4, double arg5)

## particle_image_velocimetry_timelapse
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean particleImageVelocimetryTimelapse(ClearCLBuffer arg1, ClearCLBuffer arg2, ClearCLBuffer arg3, ClearCLBuffer arg4, double arg5, double arg6, double arg7, boolean arg8)

**clEsperantoJ**
* ClearCLBuffer particle_image_velocimetry_timelapse(ClearCLBuffer arg1, ClearCLBuffer arg2, ClearCLBuffer arg3, ClearCLBuffer arg4, double arg5, double arg6, double arg7, boolean arg8)

**Macro**
* Ext.CLIJx_particleImageVelocimetryTimelapse(Image source, Image destinationDeltaX, Image destinationDeltaY, Image destinationDeltaZ, Number maxDeltaX, Number maxDeltaY, Number maxDeltaZ, Boolean correctLocalShift)

## paste
**CLIJ2**
* boolean paste(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3, double arg4)
* boolean paste(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3, double arg4, double arg5)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface paste(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3, double arg4)
* ClearCLImageInterface paste(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3, double arg4, double arg5)

**Macro**
* Ext.CLIJ2_paste2D(Image source, ByRef Image destination, Number destination_x, Number destination_y)

**pyclesperanto**
* paste (source : Image, destination : Image = None, destination_x : int = 0, destination_y : int = 0, destination_z : int = 0):

## paste
**CLIJ2**
* boolean paste2D(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3, double arg4)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface paste2d(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3, double arg4)

**Macro**
* Ext.CLIJ2_paste2D(Image source, ByRef Image destination, Number destination_x, Number destination_y)

**pyclesperanto**
* paste (source : Image, destination : Image = None, destination_x : int = 0, destination_y : int = 0, destination_z : int = 0):

## paste
**CLIJ2**
* boolean paste3D(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3, double arg4, double arg5)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface paste3d(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3, double arg4, double arg5)

**Macro**
* Ext.CLIJ2_paste3D(Image source, ByRef Image destination, Number destination_x, Number destination_y, Number destination_z)

**pyclesperanto**
* paste (source : Image, destination : Image = None, destination_x : int = 0, destination_y : int = 0, destination_z : int = 0):

## plugin_function
<span style="color:green">(experimental)</span>

**pyclesperanto**
* plugin_function(

## point_index_list_to_mesh
**CLIJ2**
* boolean pointIndexListToMesh(ClearCLBuffer pointlist, ClearCLBuffer indexlist, ClearCLBuffer mesh_destination)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer point_index_list_to_mesh(ClearCLBuffer pointlist, ClearCLBuffer indexlist, ClearCLBuffer mesh_destination)

**Macro**
* Ext.CLIJ2_pointIndexListToMesh(Image pointlist, Image indexlist, ByRef Image mesh_destination)

**pyclesperanto**
* point_index_list_to_mesh(pointlist: Image, indexlist : Image, mesh_destination : Image = None):

## point_index_list_to_touch_matrix
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean pointIndexListToTouchMatrix(ClearCLBuffer indexlist, ClearCLBuffer matrix_destination)

**clEsperantoJ**
* ClearCLBuffer point_index_list_to_touch_matrix(ClearCLBuffer indexlist, ClearCLBuffer matrix_destination)

**Macro**
* Ext.CLIJx_pointIndexListToTouchMatrix(Image indexlist, ByRef Image matrix_destination)

**pyclesperanto**
* point_index_list_to_touch_matrix(indexlist : Image, matrix_destination : Image = None):

## pointlist_to_labelled_spots
**CLIJ2**
* boolean pointlistToLabelledSpots(ClearCLBuffer pointlist, ClearCLBuffer spots_destination)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer pointlist_to_labelled_spots(ClearCLBuffer pointlist, ClearCLBuffer spots_destination)

**Macro**
* Ext.CLIJ2_pointlistToLabelledSpots(Image pointlist, ByRef Image spots_destination)

**pyclesperanto**
* pointlist_to_labelled_spots(pointlist : Image, spots_destination : Image = None):

## pop_meta_data
<span style="color:green">(experimental)</span>

## power
**CLIJ2**
* boolean power(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface power(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3)

**Macro**
* Ext.CLIJ2_power(Image source, ByRef Image destination, Number exponent)

**pyclesperanto**
* power(source : Image, destination : Image = None, exponent : float = 1):

## power_images
**CLIJ2**
* boolean powerImages(ClearCLBuffer input, ClearCLBuffer exponent, ClearCLBuffer destination)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer power_images(ClearCLBuffer input, ClearCLBuffer exponent, ClearCLBuffer destination)

**Macro**
* Ext.CLIJ2_powerImages(Image input, Image exponent, ByRef Image destination)

**pyclesperanto**
* power_images(input : Image, exponent : Image, destination : Image = None):

## preload_from_disc
<span style="color:green">(experimental)</span>

**CLIJx**
* ClearCLBuffer preloadFromDisc(ClearCLBuffer destination, String filename, String nextFilename, String loaderId)

**clEsperantoJ**
* ClearCLBuffer preload_from_disc(ClearCLBuffer destination, String filename, String nextFilename, String loaderId)

**Macro**
* Ext.CLIJx_preloadFromDisc(Image destination, String filename, String nextFilename, String loaderId)

## presign
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean presign(ClearCLBuffer input, ClearCLBuffer destination)

**clEsperantoJ**
* ClearCLBuffer presign(ClearCLBuffer input, ClearCLBuffer destination)

**Macro**
* Ext.CLIJx_presign(Image input, ByRef Image destination)

## print
**CLIJ2**
* boolean print(ClearCLImageInterface input)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface print(ClearCLImageInterface input)

**Macro**
* Ext.CLIJ2_print(Image input)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## pull
**CLIJ2**
* ImagePlus pull(Object object)

**CLIc**
* std::vector<T> Pull(Buffer& gpu_obj);

**clEsperantoJ**
* ImagePlus pull(Object object)

**Macro**
* <span style="color:red">(Missing)</span>

**pyclesperanto**
* pull(oclarray):

## pull_as_r_o_i
**CLIJ2**
* Roi pullAsROI(ClearCLBuffer binary_input)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer pull_as_r_o_i(ClearCLBuffer binary_input)

**Macro**
* Ext.CLIJ2_pullAsROI(Image binary_input)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## pull_binary
**CLIJ2**
* ImagePlus pullBinary(ClearCLBuffer input)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* <span style="color:red">(Missing)</span>

**Macro**
* <span style="color:red">(Missing)</span>

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## pull_labels_to_roilist
**CLIJ2**
* boolean pullLabelsToROIList(ClearCLBuffer arg1, List arg2)
* ArrayList pullLabelsToROIList(ClearCLBuffer labelmap_input)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer pull_labels_to_roilist(ClearCLBuffer arg1, List arg2)
* ClearCLBuffer pull_labels_to_roilist(ClearCLBuffer labelmap_input)

**Macro**
* Ext.CLIJ2_pullLabelsToROIList(Image labelmap_input)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## pull_labels_to_roimanager
**CLIJ2**
* boolean pullLabelsToROIManager(ClearCLBuffer labelmap_input)
* boolean pullLabelsToROIManager(ClearCLBuffer arg1, RoiManager arg2)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer pull_labels_to_roimanager(ClearCLBuffer labelmap_input)
* ClearCLBuffer pull_labels_to_roimanager(ClearCLBuffer arg1, RoiManager arg2)

**Macro**
* Ext.CLIJ2_pullLabelsToROIManager(Image labelmap_input)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## pull_string
**CLIJ2**
* String pullString(ClearCLImageInterface arg1)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface pull_string(ClearCLImageInterface arg1)

**Macro**
* Ext.CLIJ2_pullString(Image input, ByRef String output)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## pull_tile
<span style="color:green">(experimental)</span>

**CLIJx**
* void pullTile(ImagePlus arg1, String arg2, double arg3, double arg4, double arg5, double arg6, double arg7, double arg8, double arg9, double arg10, double arg11)
* void pullTile(ImagePlus arg1, ClearCLBuffer arg2, double arg3, double arg4, double arg5, double arg6, double arg7, double arg8, double arg9, double arg10, double arg11)
* void pullTile(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3, double arg4, double arg5, double arg6, double arg7, double arg8, double arg9, double arg10, double arg11)

**clEsperantoJ**
* void pull_tile(ImagePlus arg1, String arg2, double arg3, double arg4, double arg5, double arg6, double arg7, double arg8, double arg9, double arg10, double arg11)
* ClearCLBuffer pull_tile(ImagePlus arg1, ClearCLBuffer arg2, double arg3, double arg4, double arg5, double arg6, double arg7, double arg8, double arg9, double arg10, double arg11)
* ClearCLBuffer pull_tile(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3, double arg4, double arg5, double arg6, double arg7, double arg8, double arg9, double arg10, double arg11)

**Macro**
* Ext.CLIJx_pullTile(String image, Number tileIndexX, Number tileIndexY, Number tileIndexZ, Number width, Number height, Number depth, Number marginWidth, Number marginHeight, Number marginDepth)

## pull_to_results_table
**CLIJ2**
* ResultsTable pullToResultsTable(ClearCLBuffer arg1, ResultsTable arg2)
* ResultsTable pullToResultsTable(ClearCLImage arg1, ResultsTable arg2)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer pull_to_results_table(ClearCLBuffer arg1, ResultsTable arg2)
* ClearCLImage pull_to_results_table(ClearCLImage arg1, ResultsTable arg2)

**Macro**
* Ext.CLIJ2_pullToResultsTable(Image source)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## pull_to_results_table_column
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean pullToResultsTableColumn(ClearCLBuffer arg1, ResultsTable arg2, String arg3, boolean arg4)

**clEsperantoJ**
* ClearCLBuffer pull_to_results_table_column(ClearCLBuffer arg1, ResultsTable arg2, String arg3, boolean arg4)

**Macro**
* Ext.CLIJx_pullToResultsTableColumn(Image source, String column_name, Boolean append_new_rows)

## push
**CLIJ2**
* ClearCLBuffer push(Object object)

**CLIc**
* Buffer Push(std::vector<T>& arr, unsigned int[3]);

**clEsperantoJ**
* ClearCLBuffer push(Object object)

**Macro**
* <span style="color:red">(Missing)</span>

**pyclesperanto**
* push(any_array):

## push_array
**CLIJ2**
* boolean pushArray(ClearCLBuffer arg1, Object arg2)
* ClearCLBuffer pushArray(float[] arg1, double arg2, double arg3, double arg4)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer push_array(ClearCLBuffer arg1, Object arg2)
* ClearCLBuffer push_array(float[] arg1, double arg2, double arg3, double arg4)

**Macro**
* Ext.CLIJ2_pushArray(ByRef Image destination, Array input, Number width, Number height, Number depth)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## push_current_selection
**CLIJ2**
* ClearCLBuffer pushCurrentSelection(ImagePlus imp)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* <span style="color:red">(Missing)</span>

**Macro**
* <span style="color:red">(Missing)</span>

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## push_current_slice
**CLIJ2**
* ClearCLBuffer pushCurrentSlice(ImagePlus imp)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* <span style="color:red">(Missing)</span>

**Macro**
* <span style="color:red">(Missing)</span>

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## push_current_slice_selection
<span style="color:green">(experimental)</span>

## push_current_z_stack
**CLIJ2**
* ClearCLBuffer pushCurrentZStack(ImagePlus imp)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* <span style="color:red">(Missing)</span>

**Macro**
* <span style="color:red">(Missing)</span>

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## push_meta_data
<span style="color:green">(experimental)</span>

## push_results_table
**CLIJ2**
* boolean pushResultsTable(ClearCLBuffer arg1, ResultsTable arg2)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer push_results_table(ClearCLBuffer arg1, ResultsTable arg2)

**Macro**
* Ext.CLIJ2_pushResultsTable(ByRef Image destination)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## push_results_table_column
**CLIJ2**
* boolean pushResultsTableColumn(ClearCLBuffer arg1, ResultsTable arg2, String arg3)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer push_results_table_column(ClearCLBuffer arg1, ResultsTable arg2, String arg3)

**Macro**
* Ext.CLIJ2_pushResultsTableColumn(ByRef Image destination, String column_name)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## push_string
**CLIJ2**
* boolean pushString(ClearCLBuffer arg1, String arg2)
* ClearCLBuffer pushString(String arg1)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer push_string(ClearCLBuffer arg1, String arg2)
* ClearCLBuffer push_string(String arg1)

**Macro**
* Ext.CLIJ2_pushString(ByRef Image destination, String input, Number width, Number height, Number depth)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## push_tile
<span style="color:green">(experimental)</span>

**CLIJx**
* ClearCLBuffer pushTile(ImagePlus arg1, double arg2, double arg3, double arg4, double arg5, double arg6, double arg7, double arg8, double arg9, double arg10)
* ClearCLBuffer pushTile(ClearCLBuffer arg1, double arg2, double arg3, double arg4, double arg5, double arg6, double arg7, double arg8, double arg9, double arg10)
* void pushTile(ImagePlus arg1, String arg2, double arg3, double arg4, double arg5, double arg6, double arg7, double arg8, double arg9, double arg10, double arg11)

**clEsperantoJ**
* ClearCLBuffer push_tile(ImagePlus arg1, double arg2, double arg3, double arg4, double arg5, double arg6, double arg7, double arg8, double arg9, double arg10)
* ClearCLBuffer push_tile(ClearCLBuffer arg1, double arg2, double arg3, double arg4, double arg5, double arg6, double arg7, double arg8, double arg9, double arg10)
* void push_tile(ImagePlus arg1, String arg2, double arg3, double arg4, double arg5, double arg6, double arg7, double arg8, double arg9, double arg10, double arg11)

**Macro**
* Ext.CLIJx_pushTile(String image, Number tileIndexX, Number tileIndexY, Number tileIndexZ, Number width, Number height, Number depth, Number marginWidth, Number marginHeight, Number marginDepth)

## push_regionprops
<span style="color:green">(experimental)</span>

**pyclesperanto**
* push_regionprops(props : Union[dict, RegionProperties], first_row_index : int = 0):

## push_regionprops_column
<span style="color:green">(experimental)</span>

**pyclesperanto**
* push_regionprops_column(regionprops : Union[list, dict], column : str):

## pycl
<span style="color:green">(experimental)</span>

## radial_projection
**CLIJ2**
* boolean radialProjection(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* <span style="color:red">(Missing)</span>

**Macro**
* <span style="color:red">(Missing)</span>

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## radians_to_degrees
<span style="color:green">(experimental)</span>

**pyclesperanto**
* radians_to_degrees(source : Image, destination : Image = None):

## radius_to_kernel_size
<span style="color:green">(experimental)</span>

**pyclesperanto**
* radius_to_kernel_size(radius):

## read_image_from_disc
<span style="color:green">(experimental)</span>

**CLIJx**
* ClearCLBuffer readImageFromDisc(String arg1)

**clEsperantoJ**
* ClearCLBuffer read_image_from_disc(String arg1)

**Macro**
* Ext.CLIJx_readImageFromDisc(Image destination, String filename)

## read_intensities_from_map
<span style="color:orange">(deprecated)</span>

**CLIJx**
* boolean readIntensitiesFromMap(ClearCLImageInterface labels, ClearCLImageInterface map_image, ClearCLImageInterface values_destination)

**clEsperantoJ**
* ClearCLImageInterface read_intensities_from_map(ClearCLImageInterface labels, ClearCLImageInterface map_image, ClearCLImageInterface values_destination)

**Macro**
* Ext.CLIJx_readIntensitiesFromMap(Image labels, Image map_image, ByRef Image values_destination)

**pyclesperanto**
* read_intensities_from_map(labels : Image, map_image : Image, values_destination : Image = None):

## read_raw_image_from_disc
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean readRawImageFromDisc(ClearCLBuffer arg1, String arg2)
* ClearCLBuffer readRawImageFromDisc(String arg1, double arg2, double arg3, double arg4, double arg5)

**clEsperantoJ**
* ClearCLBuffer read_raw_image_from_disc(ClearCLBuffer arg1, String arg2)
* ClearCLBuffer read_raw_image_from_disc(String arg1, double arg2, double arg3, double arg4, double arg5)

**Macro**
* Ext.CLIJx_readRawImageFromDisc(Image destination, String filename, Number width, Number height, Number depth, Number bitsPerPixel)

## read_values_from_map
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean readValuesFromMap(ClearCLImageInterface labels, ClearCLImageInterface map_image, ClearCLImageInterface values_destination)

**clEsperantoJ**
* ClearCLImageInterface read_values_from_map(ClearCLImageInterface labels, ClearCLImageInterface map_image, ClearCLImageInterface values_destination)

**Macro**
* Ext.CLIJx_readValuesFromMap(Image labels, Image map_image, ByRef Image values_destination)

## read_values_from_positions
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean readValuesFromPositions(ClearCLImageInterface pointlist, ClearCLImageInterface map_image, ClearCLImageInterface values_destination)

**clEsperantoJ**
* ClearCLImageInterface read_values_from_positions(ClearCLImageInterface pointlist, ClearCLImageInterface map_image, ClearCLImageInterface values_destination)

**Macro**
* Ext.CLIJx_readValuesFromPositions(Image pointlist, Image map_image, ByRef Image values_destination)

## read_intensities_from_positions
<span style="color:green">(experimental)</span>

**pyclesperanto**
* read_intensities_from_positions(pointlist : Image, intensity_image : Image, values_destination : Image = None):

## reduce_labels_to_label_edges
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean reduceLabelsToLabelEdges(ClearCLBuffer input_labels, ClearCLBuffer destination_labels)

**clEsperantoJ**
* ClearCLBuffer reduce_labels_to_label_edges(ClearCLBuffer input_labels, ClearCLBuffer destination_labels)

**Macro**
* Ext.CLIJx_reduceLabelsToLabelEdges(Image input_labels, ByRef Image destination_labels)

## reduce_labels_to_labelled_spots
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean reduceLabelsToLabelledSpots(ClearCLBuffer input_labels, ClearCLBuffer destination_labels)

**clEsperantoJ**
* ClearCLBuffer reduce_labels_to_labelled_spots(ClearCLBuffer input_labels, ClearCLBuffer destination_labels)

**Macro**
* Ext.CLIJx_reduceLabelsToLabelledSpots(Image input_labels, ByRef Image destination_labels)

## reduce_stack
**CLIJ2**
* boolean reduceStack(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3, double arg4)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface reduce_stack(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3, double arg4)

**Macro**
* Ext.CLIJ2_reduceStack(Image input, ByRef Image destination, Number reduction_factor, Number offset)

**pyclesperanto**
* reduce_stack(input : Image, destination : Image = None, reduction_factor : int = 2, offset : int = 0):

## regionprops
<span style="color:green">(experimental)</span>

**pyclesperanto**
* regionprops(labelmap : Image, intensity_image : Image = None, cache : bool = True, extra_properties = []):

## release
**CLIJ2**
* void release(ClearCLImageInterface image)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* <span style="color:red">(Missing)</span>

**Macro**
* <span style="color:red">(Missing)</span>

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## replace_intensities
**CLIJ2**
* boolean replaceIntensities(ClearCLImageInterface input, ClearCLImageInterface new_values_vector, ClearCLImageInterface destination)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface replace_intensities(ClearCLImageInterface input, ClearCLImageInterface new_values_vector, ClearCLImageInterface destination)

**Macro**
* Ext.CLIJ2_replaceIntensities(Image input, Image new_values_vector, ByRef Image destination)

**pyclesperanto**
* replace_intensities(input : Image, new_values_vector : Image, destination : Image = None):

## replace_intensity
**CLIJ2**
* boolean replaceIntensity(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3, double arg4)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface replace_intensity(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3, double arg4)

**Macro**
* Ext.CLIJ2_replaceIntensity(Image input, ByRef Image destination, Number value_to_replace, Number value_replacement)

**pyclesperanto**
* replace_intensity(input : Image, destination : Image = None, value_to_replace : float = 0, value_replacement : float = 1):

## replace_pixels_if_zero
**CLIJ2**
* boolean replacePixelsIfZero(ClearCLImageInterface input1, ClearCLImageInterface input2, ClearCLImageInterface destination)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface replace_pixels_if_zero(ClearCLImageInterface input1, ClearCLImageInterface input2, ClearCLImageInterface destination)

**Macro**
* Ext.CLIJ2_replacePixelsIfZero(Image input1, Image input2, ByRef Image destination)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## report_memory
**CLIJ2**
* String reportMemory()

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* <span style="color:red">(Missing)</span>

**Macro**
* <span style="color:red">(Missing)</span>

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## resample
**CLIJ2**
* boolean resample(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3, double arg4, double arg5, boolean arg6)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* <span style="color:red">(Missing)</span>

**Macro**
* Ext.CLIJ2_resample(Image source, ByRef Image destination, Number factor_x, Number factor_y, Number factor_z, Boolean linear_interpolation)

**pyclesperanto**
* resample(source : Image, destination : Image = None, factor_x : float = 1, factor_y : float = 1, factor_z : float = 1, linear_interpolation : bool = False):

## resample
**CLIJ2**
* boolean resample2D(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3, double arg4, boolean arg5)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface resample2d(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3, double arg4, boolean arg5)

**Macro**
* <span style="color:red">(Missing)</span>

**pyclesperanto**
* resample(source : Image, destination : Image = None, factor_x : float = 1, factor_y : float = 1, factor_z : float = 1, linear_interpolation : bool = False):

## resample
**CLIJ2**
* boolean resample3D(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3, double arg4, double arg5, boolean arg6)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface resample3d(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3, double arg4, double arg5, boolean arg6)

**Macro**
* <span style="color:red">(Missing)</span>

**pyclesperanto**
* resample(source : Image, destination : Image = None, factor_x : float = 1, factor_y : float = 1, factor_z : float = 1, linear_interpolation : bool = False):

## reset_meta_data
<span style="color:green">(experimental)</span>

## reslice_bottom
**CLIJ2**
* boolean resliceBottom(ClearCLImageInterface source, ClearCLImageInterface destination)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface reslice_bottom(ClearCLImageInterface source, ClearCLImageInterface destination)

**Macro**
* Ext.CLIJ2_resliceBottom(Image source, ByRef Image destination)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## reslice_left
**CLIJ2**
* boolean resliceLeft(ClearCLImageInterface source, ClearCLImageInterface destination)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface reslice_left(ClearCLImageInterface source, ClearCLImageInterface destination)

**Macro**
* Ext.CLIJ2_resliceLeft(Image source, ByRef Image destination)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## reslice_radial
**CLIJ2**
* boolean resliceRadial(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3)
* boolean resliceRadial(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3, double arg4, double arg5)
* boolean resliceRadial(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3, double arg4, double arg5, double arg6, double arg7, double arg8)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer reslice_radial(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3)
* ClearCLBuffer reslice_radial(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3, double arg4, double arg5)
* ClearCLBuffer reslice_radial(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3, double arg4, double arg5, double arg6, double arg7, double arg8)

**Macro**
* Ext.CLIJ2_resliceRadial(Image source, ByRef Image destination, Number numberOfAngles, Number angleStepSize, Number startAngleDegrees, Number centerX, Number centerY, Number scaleFactorX, Number scaleFactorY)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## reslice_radial_top
<span style="color:green">(experimental)</span>

## reslice_right
**CLIJ2**
* boolean resliceRight(ClearCLImageInterface source, ClearCLImageInterface destination)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface reslice_right(ClearCLImageInterface source, ClearCLImageInterface destination)

**Macro**
* Ext.CLIJ2_resliceRight(Image source, ByRef Image destination)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## reslice_top
**CLIJ2**
* boolean resliceTop(ClearCLImageInterface source, ClearCLImageInterface destination)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface reslice_top(ClearCLImageInterface source, ClearCLImageInterface destination)

**Macro**
* Ext.CLIJ2_resliceTop(Image source, ByRef Image destination)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## results_table_column_to_image
**CLIJ2**
* boolean resultsTableColumnToImage(ClearCLBuffer arg1, ResultsTable arg2, String arg3)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer results_table_column_to_image(ClearCLBuffer arg1, ResultsTable arg2, String arg3)

**Macro**
* Ext.CLIJ2_resultsTableColumnToImage(ByRef Image destination, String column_name)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## results_table_to_image
**CLIJ2**
* boolean resultsTableToImage2D(ClearCLBuffer arg1, ResultsTable arg2)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* <span style="color:red">(Missing)</span>

**Macro**
* Ext.CLIJ2_resultsTableToImage2D(ByRef Image destination)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## rigid_transform
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean rigidTransform(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3, double arg4, double arg5, double arg6, double arg7, double arg8)

**clEsperantoJ**
* ClearCLBuffer rigid_transform(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3, double arg4, double arg5, double arg6, double arg7, double arg8)

**Macro**
* Ext.CLIJx_rigidTransform(Image input, ByRef Image destination, Number translation_x, Number translation_y, Number translation_z, Number rotation_angle_x, Number rotation_angle_y, Number rotation_angle_z)

**pyclesperanto**
* rigid_transform(source : Image, destination : Image = None, translate_x : float = 0, translate_y : float = 0, translate_z : float = 0, angle_around_x_in_degrees : float = 0, angle_around_y_in_degrees : float = 0, angle_around_z_in_degrees : float = 0, rotate_around_center=True):

## rotate
**CLIJ2**
* boolean rotate2D(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3, boolean arg4)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer rotate2d(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3, boolean arg4)

**Macro**
* Ext.CLIJ2_rotate2D(Image source, ByRef Image destination, Number angle, Boolean rotateAroundCenter)

**pyclesperanto**
* rotate(source : Image, destination : Image = None, angle_around_x_in_degrees : float = 0, angle_around_y_in_degrees : float = 0, angle_around_z_in_degrees : float = 0, rotate_around_center=True):

## rotate
**CLIJ2**
* boolean rotate3D(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3, double arg4, double arg5, boolean arg6)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer rotate3d(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3, double arg4, double arg5, boolean arg6)

**Macro**
* Ext.CLIJ2_rotate3D(Image source, ByRef Image destination, Number angleX, Number angleY, Number angleZ, Boolean rotateAroundCenter)

**pyclesperanto**
* rotate(source : Image, destination : Image = None, angle_around_x_in_degrees : float = 0, angle_around_y_in_degrees : float = 0, angle_around_z_in_degrees : float = 0, rotate_around_center=True):

## rotate_clockwise
**CLIJ2**
* boolean rotateClockwise(ClearCLImageInterface source, ClearCLImageInterface destination)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface rotate_clockwise(ClearCLImageInterface source, ClearCLImageInterface destination)

**Macro**
* Ext.CLIJ2_rotateClockwise(Image source, ByRef Image destination)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## rotate_counter_clockwise
**CLIJ2**
* boolean rotateCounterClockwise(ClearCLImageInterface source, ClearCLImageInterface destination)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface rotate_counter_clockwise(ClearCLImageInterface source, ClearCLImageInterface destination)

**Macro**
* Ext.CLIJ2_rotateCounterClockwise(Image source, ByRef Image destination)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## rotate_left
**CLIJ2**
* boolean rotateLeft(ClearCLImageInterface source, ClearCLImageInterface destination)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* <span style="color:red">(Missing)</span>

**Macro**
* Ext.CLIJ2_rotateLeft(Image source, ByRef Image destination)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## rotate_right
**CLIJ2**
* boolean rotateRight(ClearCLImageInterface source, ClearCLImageInterface destination)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* <span style="color:red">(Missing)</span>

**Macro**
* Ext.CLIJ2_rotateRight(Image source, ByRef Image destination)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## save_as_t_i_f
**CLIJ2**
* boolean saveAsTIF(ClearCLBuffer input, String filename)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer save_as_t_i_f(ClearCLBuffer input, String filename)

**Macro**
* Ext.CLIJ2_saveAsTIF(Image input, String filename)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## scale
**CLIJ2**
* boolean scale(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3)
* boolean scale(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3, double arg4)
* boolean scale(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3, double arg4, double arg5)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer scale(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3)
* ClearCLBuffer scale(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3, double arg4)

**Macro**
* Ext.CLIJ2_scale(Image source, ByRef Image destination, Number scaling_factor_x, Number scaling_factor_y, Number scaling_factor_z,  Boolean scale_to_center)

**pyclesperanto**
* scale(source : Image, destination : Image = None, factor_x : float = 1, factor_y : float = 1, factor_z : float = 1, centered=True):

## scale
**CLIJ2**
* boolean scale2D(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3, double arg4)
* boolean scale2D(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3, double arg4, boolean arg5)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer scale2d(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3, double arg4)
* ClearCLBuffer scale2d(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3, double arg4, boolean arg5)

**Macro**
* Ext.CLIJ2_scale2D(Image source, ByRef Image destination, Number scaling_factor_x, Number scaling_factor_y, Boolean scale_to_center)

**pyclesperanto**
* scale(source : Image, destination : Image = None, factor_x : float = 1, factor_y : float = 1, factor_z : float = 1, centered=True):

## scale
**CLIJ2**
* boolean scale3D(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3, double arg4, double arg5)
* boolean scale3D(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3, double arg4, double arg5, boolean arg6)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer scale3d(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3, double arg4, double arg5)
* ClearCLBuffer scale3d(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3, double arg4, double arg5, boolean arg6)

**Macro**
* Ext.CLIJ2_scale3D(Image source, ByRef Image destination, Number scaling_factor_x, Number scaling_factor_y, Number scaling_factor_z,  Boolean scale_to_center)

**pyclesperanto**
* scale(source : Image, destination : Image = None, factor_x : float = 1, factor_y : float = 1, factor_z : float = 1, centered=True):

## seeded_watershed
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean seededWatershed(ClearCLBuffer arg1, ClearCLBuffer arg2, ClearCLBuffer arg3, double arg4)

**clEsperantoJ**
* ClearCLBuffer seeded_watershed(ClearCLBuffer arg1, ClearCLBuffer arg2, ClearCLBuffer arg3, double arg4)

**Macro**
* Ext.CLIJx_seededWatershed(Image label_map_seeds, Image input, ByRef Image label_map_destination, Float threshold)

## set
**CLIJ2**
* boolean set(ClearCLImageInterface arg1, double arg2)

**CLIc**
* void Set(Buffer&, float);

**clEsperantoJ**
* ClearCLImageInterface set(ClearCLImageInterface arg1, double arg2)

**Macro**
* Ext.CLIJ2_set(Image source, Number value)

**pyclesperanto**
* set(source : Image, scalar : float = 0):

## set_column
**CLIJ2**
* boolean setColumn(ClearCLImageInterface arg1, double arg2, double arg3)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface set_column(ClearCLImageInterface arg1, double arg2, double arg3)

**Macro**
* Ext.CLIJ2_setColumn(Image source, Number column_index, Number value)

**pyclesperanto**
* set_column(source : Image, column_index : int = 0, value : float = 0):

## set_image_borders
**CLIJ2**
* boolean setImageBorders(ClearCLImageInterface arg1, double arg2)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface set_image_borders(ClearCLImageInterface arg1, double arg2)

**Macro**
* Ext.CLIJ2_setImageBorders(Image destination, Number value)

**pyclesperanto**
* set_image_borders(destination : Image, value : float = 0):

## set_non_zero_pixels_to_pixel_index
**CLIJ2**
* boolean setNonZeroPixelsToPixelIndex(ClearCLImageInterface source, ClearCLImageInterface destination)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface set_non_zero_pixels_to_pixel_index(ClearCLImageInterface source, ClearCLImageInterface destination)

**Macro**
* Ext.CLIJ2_setNonZeroPixelsToPixelIndex(Image source, Image destination)

**pyclesperanto**
* set_non_zero_pixels_to_pixel_index(input : Image, output : Image, offset : float = 1):

## set_plane
**CLIJ2**
* boolean setPlane(ClearCLImageInterface arg1, double arg2, double arg3)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface set_plane(ClearCLImageInterface arg1, double arg2, double arg3)

**Macro**
* Ext.CLIJ2_setPlane(Image source, Number plane_index, Number value)

**pyclesperanto**
* set_plane(source : Image, plane_index : int = 0, value : float = 0):

## set_ramp_x
**CLIJ2**
* boolean setRampX(ClearCLImageInterface source)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface set_ramp_x(ClearCLImageInterface source)

**Macro**
* Ext.CLIJ2_setRampX(Image source)

**pyclesperanto**
* set_ramp_x(source : Image):

## set_ramp_y
**CLIJ2**
* boolean setRampY(ClearCLImageInterface source)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface set_ramp_y(ClearCLImageInterface source)

**Macro**
* Ext.CLIJ2_setRampY(Image source)

**pyclesperanto**
* set_ramp_y(source : Image):

## set_ramp_z
**CLIJ2**
* boolean setRampZ(ClearCLImageInterface source)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface set_ramp_z(ClearCLImageInterface source)

**Macro**
* Ext.CLIJ2_setRampZ(Image source)

**pyclesperanto**
* set_ramp_z(source : Image):

## set_random
**CLIJ2**
* boolean setRandom(ClearCLBuffer arg1, double arg2, double arg3)
* boolean setRandom(ClearCLBuffer arg1, double arg2, double arg3, double arg4)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer set_random(ClearCLBuffer arg1, double arg2, double arg3)
* ClearCLBuffer set_random(ClearCLBuffer arg1, double arg2, double arg3, double arg4)

**Macro**
* Ext.CLIJ2_setRandom(Image source, Number minimumValue, Number maximumValue, Number seed)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## set_row
**CLIJ2**
* boolean setRow(ClearCLImageInterface arg1, double arg2, double arg3)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface set_row(ClearCLImageInterface arg1, double arg2, double arg3)

**Macro**
* Ext.CLIJ2_setRow(Image source, Number row_index, Number value)

**pyclesperanto**
* set_row(source : Image, row_index : int = 0, value : float = 0):

## set_where_xequals_y
**CLIJ2**
* boolean setWhereXequalsY(ClearCLImageInterface arg1, double arg2)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface set_where_xequals_y(ClearCLImageInterface arg1, double arg2)

**Macro**
* Ext.CLIJ2_setWhereXequalsY(Image source, Number value)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## set_where_xgreater_than_y
**CLIJ2**
* boolean setWhereXgreaterThanY(ClearCLImageInterface arg1, double arg2)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface set_where_xgreater_than_y(ClearCLImageInterface arg1, double arg2)

**Macro**
* Ext.CLIJ2_setWhereXgreaterThanY(Image source, Number value)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## set_where_xsmaller_than_y
**CLIJ2**
* boolean setWhereXsmallerThanY(ClearCLImageInterface arg1, double arg2)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface set_where_xsmaller_than_y(ClearCLImageInterface arg1, double arg2)

**Macro**
* Ext.CLIJ2_setWhereXsmallerThanY(Image source, Number value)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## set_wait_for_kernel_finish
<span style="color:green">(experimental)</span>

**pyclesperanto**
* set_wait_for_kernel_finish(wait_for_kernel_finish : bool = None):

## set_where_x_equals_y
<span style="color:green">(experimental)</span>

**pyclesperanto**
* set_where_x_equals_y(source : Image, value : float = 0):

## set_where_x_greater_than_y
<span style="color:green">(experimental)</span>

**pyclesperanto**
* set_where_x_greater_than_y(source : Image, value : float = 0):

## set_where_x_smaller_than_y
<span style="color:green">(experimental)</span>

**pyclesperanto**
* set_where_x_smaller_than_y(source : Image, value : float = 0):

## shift_intensities_to_close_gaps
**CLIJ2**
* boolean shiftIntensitiesToCloseGaps(ClearCLBuffer arg1, ClearCLBuffer arg2)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* <span style="color:red">(Missing)</span>

**Macro**
* <span style="color:red">(Missing)</span>

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## shortest_distances
**CLIJ2**
* boolean shortestDistances(ClearCLBuffer distance_matrix, ClearCLBuffer destination_minimum_distances)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer shortest_distances(ClearCLBuffer distance_matrix, ClearCLBuffer destination_minimum_distances)

**Macro**
* Ext.CLIJ2_shortestDistances(Image distance_matrix, ByRef Image destination_minimum_distances)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## show_glasbey_on_grey
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean showGlasbeyOnGrey(ClearCLBuffer red, ClearCLBuffer labelling, String title)

**clEsperantoJ**
* ClearCLBuffer show_glasbey_on_grey(ClearCLBuffer red, ClearCLBuffer labelling, String title)

**Macro**
* Ext.CLIJx_showGlasbeyOnGrey(Image red, Image labelling, String title)

## show_grey
<span style="color:green">(experimental)</span>

**CLIJx**
* ImagePlus showGrey(ClearCLBuffer input, String title)

**clEsperantoJ**
* ClearCLBuffer show_grey(ClearCLBuffer input, String title)

**Macro**
* Ext.CLIJx_showGrey(Image input, String title)

## show_r_g_b
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean showRGB(ClearCLBuffer red, ClearCLBuffer green, ClearCLBuffer blue, String title)

**clEsperantoJ**
* ClearCLBuffer show_r_g_b(ClearCLBuffer red, ClearCLBuffer green, ClearCLBuffer blue, String title)

**Macro**
* Ext.CLIJx_showRGB(Image red, Image green, Image blue, String title)

## shrink_labels
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean shrinkLabels(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3, boolean arg4)

**clEsperantoJ**
* ClearCLBuffer shrink_labels(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3, boolean arg4)

**Macro**
* Ext.CLIJx_shrinkLabels(Image labels_input, ByRef Image labels_destination, Number radius, Boolean relabel_islands)

## sigma_to_kernel_size
<span style="color:green">(experimental)</span>

**pyclesperanto**
* sigma_to_kernel_size(sigma):

## similar
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean similar(ClearCLBuffer arg1, ClearCLBuffer arg2, ClearCLBuffer arg3, double arg4)

**clEsperantoJ**
* ClearCLBuffer similar(ClearCLBuffer arg1, ClearCLBuffer arg2, ClearCLBuffer arg3, double arg4)

**Macro**
* Ext.CLIJx_similar(Image input_image1, Image input_image2, ByRef Image binary_destination, Number tolerance)

## bilateral
<span style="color:green">(experimental)</span>

**Macro**
* Ext.CLIJx_simpleITKBilateral(Image input, ByRef Image destination, Number domainSigma, Number rangeSigma, Number numberOfRangeGaussianSamples)

## binary_fillhole
<span style="color:green">(experimental)</span>

**Macro**
* Ext.CLIJx_simpleITKBinaryFillhole(Image input, ByRef Image destination)

## binary_pruning
<span style="color:green">(experimental)</span>

**Macro**
* Ext.CLIJx_simpleITKBinaryPruning(Image input, ByRef Image destination)

## binary_thinning
<span style="color:green">(experimental)</span>

**Macro**
* Ext.CLIJx_simpleITKBinaryThinning(Image input, ByRef Image destination)

## binomial_blur
<span style="color:green">(experimental)</span>

**Macro**
* Ext.CLIJx_simpleITKBinomialBlur(Image input, ByRef Image destination, Number repetitions)

## bounded_reciprocal
<span style="color:green">(experimental)</span>

**Macro**
* Ext.CLIJx_simpleITKBoundedReciprocal(Image input, ByRef Image destination)

## canny_edge_detection
<span style="color:green">(experimental)</span>

**Macro**
* Ext.CLIJx_simpleITKCannyEdgeDetection(Image input, ByRef Image destination, Number lower_threshold, Numer upper_threshold, Number variance, Number maximum_error)

## connected_component
<span style="color:green">(experimental)</span>

**Macro**
* Ext.CLIJx_simpleITKConnectedComponent(Image input, ByRef Image destination)

## danielsson_distance_map
<span style="color:green">(experimental)</span>

**Macro**
* Ext.CLIJx_simpleITKDanielssonDistanceMap(Image input, ByRef Image destination)

## discrete_gaussian
<span style="color:green">(experimental)</span>

**Macro**
* Ext.CLIJx_simpleITKDiscreteGaussian(Image input, ByRef Image destination, Number sigma_x, Number sigma_y, Number sigma_z)

## fft_convolution
<span style="color:green">(experimental)</span>

**Macro**
* Ext.CLIJx_simpleITKFFTConvolution(Image input, Image input_kernel, ByRef Image destination)

## h_maxima
<span style="color:green">(experimental)</span>

**Macro**
* Ext.CLIJx_simpleITKHMaxima(Image input, ByRef Image destination, Number h)

## inverse_deconvolution
<span style="color:green">(experimental)</span>

**Macro**
* Ext.CLIJx_simpleITKInverseDeconvolution(Image input, Image input_psf, ByRef Image destination, Number kernelZeroMagnitudeThreshold, Boolean normalize)

## landweber_deconvolution
<span style="color:green">(experimental)</span>

**Macro**
* Ext.CLIJx_simpleITKLandweberDeconvolution(Image input, Image input_psf, ByRef Image destination, Number alpha)

## median
<span style="color:green">(experimental)</span>

**Macro**
* Ext.CLIJx_simpleITKMedian(Image input, ByRef Image destination, Number radius_x, Number radius_y, Number radius_z)

## median_projection
<span style="color:green">(experimental)</span>

**Macro**
* Ext.CLIJx_simpleITKMedianProjection(Image input, ByRef Image destination)

## morphological_watershed
<span style="color:green">(experimental)</span>

**Macro**
* Ext.CLIJx_simpleITKMorphologicalWatershed(Image input, ByRef Image destination, Number level)

## otsu_multiple_thresholds
<span style="color:green">(experimental)</span>

**Macro**
* Ext.CLIJx_simpleITKOtsuMultipleThresholds(Image input, ByRef Image destination, Number number_of_thresholds)

## otsu_threshold
<span style="color:green">(experimental)</span>

**Macro**
* Ext.CLIJx_simpleITKOtsuThreshold(Image input, ByRef Image destination)

## tikhonov_deconvolution
<span style="color:green">(experimental)</span>

**Macro**
* Ext.CLIJx_simpleITKTikhonovDeconvolution(Image input, Image input_psf, ByRef Image destination, Number regularisation_constant, Boolean normalize)

## wiener_deconvolution
<span style="color:green">(experimental)</span>

**Macro**
* Ext.CLIJx_simpleITKWienerDeconvolution(Image input, Image input_psf, ByRef Image destination, Number noise_variance, Boolean normalize)

## zero_crossing
<span style="color:green">(experimental)</span>

**Macro**
* Ext.CLIJx_simpleITKZeroCrossing(Image input, ByRef Image destination)

## zero_crossing_based_edge_detection
<span style="color:green">(experimental)</span>

**Macro**
* Ext.CLIJx_simpleITKZeroCrossingBasedEdgeDetection(Image input, ByRef Image destination, Number variance, Number maximum_error)

## simple_itk_richardson_lucy_deconvolution
<span style="color:green">(experimental)</span>

**Macro**
* Ext.CLIJx_simpleITKRichardsonLucyDeconvolution(Image input, Image input_psf, ByRef Image destination, Number num_iterations, Boolean normalize)

## sinus
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean sinus(ClearCLImageInterface source, ClearCLImageInterface destination)

**clEsperantoJ**
* ClearCLImageInterface sinus(ClearCLImageInterface source, ClearCLImageInterface destination)

**Macro**
* Ext.CLIJx_sinus(Image source, ByRef Image destination)

## skeletonize
<span style="color:orange">(deprecated)</span>

**CLIJx**
* boolean skeletonize(ClearCLBuffer source, ClearCLBuffer destination)

**Macro**
* Ext.CLIJx_skeletonize(Image source, ByRef Image destination)

## smaller
**CLIJ2**
* boolean smaller(ClearCLBuffer source1, ClearCLBuffer source2, ClearCLBuffer destination)

**CLIc**
* void Smaller(Buffer&, Buffer&, Buffer&);

**clEsperantoJ**
* ClearCLBuffer smaller(ClearCLBuffer source1, ClearCLBuffer source2, ClearCLBuffer destination)

**Macro**
* Ext.CLIJ2_smaller(Image source1, Image source2, ByRef Image destination)

**pyclesperanto**
* smaller(source1 : Image, source2 : Image, destination : Image = None):

## smaller_constant
**CLIJ2**
* boolean smallerConstant(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer smaller_constant(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3)

**Macro**
* Ext.CLIJ2_smallerConstant(Image source, ByRef Image destination, Number constant)

**pyclesperanto**
* smaller_constant(source : Image, destination : Image = None, constant : float = 0):

## smaller_or_equal
**CLIJ2**
* boolean smallerOrEqual(ClearCLBuffer source1, ClearCLBuffer source2, ClearCLBuffer destination)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer smaller_or_equal(ClearCLBuffer source1, ClearCLBuffer source2, ClearCLBuffer destination)

**Macro**
* Ext.CLIJ2_smallerOrEqual(Image source1, Image source2, ByRef Image destination)

**pyclesperanto**
* smaller_or_equal(source1 : Image, source2 : Image, destination : Image = None):

## smaller_or_equal_constant
**CLIJ2**
* boolean smallerOrEqualConstant(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer smaller_or_equal_constant(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3)

**Macro**
* Ext.CLIJ2_smallerOrEqualConstant(Image source, ByRef Image destination, Number constant)

**pyclesperanto**
* smaller_or_equal_constant(source : Image, destination : Image = None, constant : float = 0):

## sobel
**CLIJ2**
* boolean sobel(ClearCLBuffer source, ClearCLBuffer destination)

**CLIc**
* void Sobel(Buffer&, Buffer&);

**clEsperantoJ**
* ClearCLBuffer sobel(ClearCLBuffer source, ClearCLBuffer destination)

**Macro**
* Ext.CLIJ2_sobel(Image source, ByRef Image destination)

**pyclesperanto**
* sobel(source : Image, destination : Image = None):

## sobel_slice_by_slice
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean sobelSliceBySlice(ClearCLImageInterface source, ClearCLImageInterface destination)

**clEsperantoJ**
* ClearCLImageInterface sobel_slice_by_slice(ClearCLImageInterface source, ClearCLImageInterface destination)

**Macro**
* Ext.CLIJx_sobelSliceBySlice(Image source, ByRef Image destination)

## sorensen_dice_coefficient
**CLIJ2**
* double sorensenDiceCoefficient(ClearCLBuffer source1, ClearCLBuffer source2)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer sorensen_dice_coefficient(ClearCLBuffer source1, ClearCLBuffer source2)

**Macro**
* Ext.CLIJ2_sorensenDiceCoefficient(Image source1, Image source2)

**pyclesperanto**
* sorensen_dice_coefficient(source1 : Image, source2 : Image):

## sphere_transform
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean sphereTransform(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3, double arg4, double arg5, double arg6, double arg7)

**clEsperantoJ**
* ClearCLBuffer sphere_transform(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3, double arg4, double arg5, double arg6, double arg7)

**Macro**
* Ext.CLIJx_sphereTransform(Image input, ByRef Image destination, Number number_of_angles, Number delta_angle_in_degrees, Number relative_center_x, Number relative_center_y, Number relative_center_z)

## spots_to_point_list
**CLIJ2**
* boolean spotsToPointList(ClearCLBuffer input_spots, ClearCLBuffer destination_pointlist)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer spots_to_point_list(ClearCLBuffer input_spots, ClearCLBuffer destination_pointlist)

**Macro**
* Ext.CLIJ2_spotsToPointList(Image input_spots, ByRef Image destination_pointlist)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## spots_to_pointlist
<span style="color:green">(experimental)</span>

**pyclesperanto**
* spots_to_pointlist(input_spots:Image, destination_pointlist :Image = None):

## squared_difference
**CLIJ2**
* boolean squaredDifference(ClearCLBuffer source1, ClearCLBuffer source2, ClearCLBuffer destination)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer squared_difference(ClearCLBuffer source1, ClearCLBuffer source2, ClearCLBuffer destination)

**Macro**
* Ext.CLIJ2_squaredDifference(Image source1, Image source2, ByRef Image destination)

**pyclesperanto**
* squared_difference(source1 : Image, source2 : Image, destination : Image = None):

## stack_to_tiles
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean stackToTiles(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3, double arg4)

**clEsperantoJ**
* ClearCLImageInterface stack_to_tiles(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3, double arg4)

**Macro**
* Ext.CLIJx_stackToTiles(Image source, ByRef Image destination, Number tiles_x, Number tiles_y)

## standard_deviation_box
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean standardDeviationBox(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3, double arg4, double arg5)

**clEsperantoJ**
* ClearCLImageInterface standard_deviation_box(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3, double arg4, double arg5)

**Macro**
* Ext.CLIJx_standardDeviationBox(Image source, ByRef Image destination, Number radius_x, Number radius_y, Number radius_z)

## standard_deviation_of_all_pixels
**CLIJ2**
* double standardDeviationOfAllPixels(ClearCLImageInterface source)
* double standardDeviationOfAllPixels(ClearCLImageInterface arg1, double arg2)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface standard_deviation_of_all_pixels(ClearCLImageInterface source)
* ClearCLImageInterface standard_deviation_of_all_pixels(ClearCLImageInterface arg1, double arg2)

**Macro**
* Ext.CLIJ2_standardDeviationOfAllPixels(Image source)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## standard_deviation_of_masked_pixels
**CLIJ2**
* double standardDeviationOfMaskedPixels(ClearCLBuffer source, ClearCLBuffer mask)
* double standardDeviationOfMaskedPixels(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer standard_deviation_of_masked_pixels(ClearCLBuffer source, ClearCLBuffer mask)
* ClearCLBuffer standard_deviation_of_masked_pixels(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3)

**Macro**
* Ext.CLIJ2_standardDeviationOfMaskedPixels(Image source, Image mask)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## standard_deviation_of_n_nearest_neighbors_map
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean standardDeviationOfNNearestNeighborsMap(ClearCLBuffer arg1, ClearCLBuffer arg2, ClearCLBuffer arg3, double arg4)

**clEsperantoJ**
* ClearCLBuffer standard_deviation_of_n_nearest_neighbors_map(ClearCLBuffer arg1, ClearCLBuffer arg2, ClearCLBuffer arg3, double arg4)

**Macro**
* Ext.CLIJx_standardDeviationOfNNearestNeighborsMap(Image parametric_map, Image label_map, ByRef Image parametric_map_destination, Number n)

**pyclesperanto**
* standard_deviation_of_n_nearest_neighbors_map(parametric_map : Image, label_map : Image, parametric_map_destination : Image = None, n : int = 1):

## standard_deviation_of_proximal_neighbors_map
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean standardDeviationOfProximalNeighborsMap(ClearCLBuffer arg1, ClearCLBuffer arg2, ClearCLBuffer arg3, double arg4, double arg5)

**clEsperantoJ**
* ClearCLBuffer standard_deviation_of_proximal_neighbors_map(ClearCLBuffer arg1, ClearCLBuffer arg2, ClearCLBuffer arg3, double arg4, double arg5)

**Macro**
* Ext.CLIJx_standardDeviationOfProximalNeighborsMap(Image parametric_map, Image label_map, ByRef Image parametric_map_destination, Number min_distance, Number max_distance)

**pyclesperanto**
* standard_deviation_of_proximal_neighbors_map(parametric_map : Image, label_map : Image, parametric_map_destination : Image = None, min_distance : float = 0, max_distance : float = np.finfo(np.float32).max):

## standard_deviation_of_touching_neighbors
**CLIJ2**
* boolean standardDeviationOfTouchingNeighbors(ClearCLBuffer values, ClearCLBuffer touch_matrix, ClearCLBuffer standard_deviation_values_destination)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer standard_deviation_of_touching_neighbors(ClearCLBuffer values, ClearCLBuffer touch_matrix, ClearCLBuffer standard_deviation_values_destination)

**Macro**
* Ext.CLIJ2_standardDeviationOfTouchingNeighbors(Image values, Image touch_matrix, ByRef Image standard_deviation_values_destination)

**pyclesperanto**
* standard_deviation_of_touching_neighbors(values : Image, touch_matrix : Image, standard_deviation_values_destination : Image = None):

## standard_deviation_of_touching_neighbors_map
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean standardDeviationOfTouchingNeighborsMap(ClearCLBuffer arg1, ClearCLBuffer arg2, ClearCLBuffer arg3, double arg4, boolean arg5)

**clEsperantoJ**
* ClearCLBuffer standard_deviation_of_touching_neighbors_map(ClearCLBuffer arg1, ClearCLBuffer arg2, ClearCLBuffer arg3, double arg4, boolean arg5)

**Macro**
* Ext.CLIJx_standardDeviationOfTouchingNeighborsMap(Image parametric_map, Image label_map, ByRef Image parametric_map_destination, Number radius, Boolean ignore_touching_background)

**pyclesperanto**
* standard_deviation_of_touching_neighbors_map(parametric_map : Image, label_map : Image, parametric_map_destination : Image = None, radius : int = 1, ignore_touching_background : bool = True):

## standard_deviation_sphere
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean standardDeviationSphere(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3, double arg4, double arg5)

**clEsperantoJ**
* ClearCLImageInterface standard_deviation_sphere(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3, double arg4, double arg5)

**Macro**
* Ext.CLIJx_standardDeviationSphere(Image source, ByRef Image destination, Number radius_x, Number radius_y, Number radius_z)

## standard_deviation_z_projection
**CLIJ2**
* boolean standardDeviationZProjection(ClearCLImageInterface source, ClearCLImageInterface destination)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface standard_deviation_z_projection(ClearCLImageInterface source, ClearCLImageInterface destination)

**Macro**
* Ext.CLIJ2_standardDeviationZProjection(Image source, ByRef Image destination)

**pyclesperanto**
* standard_deviation_z_projection(source : Image, destination : Image = None):

## start_continuous_webcam_acquisition
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean startContinuousWebcamAcquisition(double arg1, double arg2, double arg3)

**clEsperantoJ**
* boolean start_continuous_webcam_acquisition(double arg1, double arg2, double arg3)

**Macro**
* Ext.CLIJx_startContinuousWebcamAcquisition(Number cameraDeviceIndex, Number imageWidth, Number imageHeight)

## statistics_of_background_and_labelled_pixels
**CLIJ2**
* double[][] statisticsOfBackgroundAndLabelledPixels(ClearCLBuffer input, ClearCLBuffer labelmap)
* ResultsTable statisticsOfBackgroundAndLabelledPixels(ClearCLBuffer arg1, ClearCLBuffer arg2, ResultsTable arg3)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer statistics_of_background_and_labelled_pixels(ClearCLBuffer input, ClearCLBuffer labelmap)
* ClearCLBuffer statistics_of_background_and_labelled_pixels(ClearCLBuffer arg1, ClearCLBuffer arg2, ResultsTable arg3)

**Macro**
* Ext.CLIJ2_statisticsOfBackgroundAndLabelledPixels(Image input, Image labelmap)

**pyclesperanto**
* statistics_of_background_and_labelled_pixels(input : Image = None, labelmap : Image = None):

## statistics_of_image
**CLIJ2**
* ResultsTable statisticsOfImage(ClearCLBuffer arg1, ResultsTable arg2)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer statistics_of_image(ClearCLBuffer arg1, ResultsTable arg2)

**Macro**
* Ext.CLIJ2_statisticsOfImage(Image input)

**pyclesperanto**
* statistics_of_image(image : Image):

## statistics_of_labelled_pixels
**CLIJ2**
* double[] statisticsOfLabelledPixels(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3)
* double[][] statisticsOfLabelledPixels(ClearCLBuffer input, ClearCLBuffer labelmap)
* double[][] statisticsOfLabelledPixels(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3, double arg4)
* ResultsTable statisticsOfLabelledPixels(ClearCLBuffer arg1, ClearCLBuffer arg2, ResultsTable arg3)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer statistics_of_labelled_pixels(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3)
* ClearCLBuffer statistics_of_labelled_pixels(ClearCLBuffer input, ClearCLBuffer labelmap)
* ClearCLBuffer statistics_of_labelled_pixels(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3, double arg4)
* ClearCLBuffer statistics_of_labelled_pixels(ClearCLBuffer arg1, ClearCLBuffer arg2, ResultsTable arg3)

**Macro**
* Ext.CLIJ2_statisticsOfLabelledPixels(Image input, Image labelmap)

**pyclesperanto**
* statistics_of_labelled_pixels(intensity_image : Image = None, label_image : Image = None):

## statisticsOfLabelledPixels_single_threaded
**CLIJ2**
* double[][] statisticsOfLabelledPixels_single_threaded(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3, double arg4)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer statistics_of_labelled_pixels_single_threaded(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3, double arg4)

**Macro**
* <span style="color:red">(Missing)</span>

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## stop_continuous_webcam_acquisition
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean stopContinuousWebcamAcquisition(double arg1)

**clEsperantoJ**
* boolean stop_continuous_webcam_acquisition(double arg1)

**Macro**
* Ext.CLIJx_stopContinuousWebcamAcquisition(Number cameraDeviceIndex)

## stop_watch
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean stopWatch(String text)

**clEsperantoJ**
* boolean stop_watch(String text)

**Macro**
* Ext.CLIJx_stopWatch(String text)

## subtract
**CLIJ2**
* boolean subtract(ClearCLImageInterface subtrahend, ClearCLImageInterface minuend, ClearCLImageInterface destination)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* <span style="color:red">(Missing)</span>

**Macro**
* Ext.CLIJ2_subtractImages(Image subtrahend, Image minuend, ByRef Image destination)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## subtract_background
<span style="color:orange">(deprecated)</span>

**CLIJx**
* boolean subtractBackground(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3, double arg4)
* boolean subtractBackground(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3, double arg4, double arg5)

**clEsperantoJ**
* ClearCLImageInterface subtract_background(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3, double arg4)
* ClearCLImageInterface subtract_background(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3, double arg4, double arg5)

**Macro**
* Ext.CLIJx_subtractBackground2D(Image input, ByRef Image destination, Number sigmaX, Number sigmaY)

## subtract_background
<span style="color:orange">(deprecated)</span>

**CLIJx**
* boolean subtractBackground2D(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3, double arg4)

**clEsperantoJ**
* ClearCLImageInterface subtract_background2d(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3, double arg4)

**Macro**
* Ext.CLIJx_subtractBackground2D(Image input, ByRef Image destination, Number sigmaX, Number sigmaY)

## subtract_background
<span style="color:orange">(deprecated)</span>

**CLIJx**
* boolean subtractBackground3D(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3, double arg4, double arg5)

**clEsperantoJ**
* ClearCLImageInterface subtract_background3d(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3, double arg4, double arg5)

**Macro**
* Ext.CLIJx_subtractBackground3D(Image input, ByRef Image destination, Number sigmaX, Number sigmaY, Number sigmaZ)

## subtract_gaussian_background
<span style="color:orange">(deprecated)</span>

**CLIJx**
* boolean subtractGaussianBackground(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3, double arg4, double arg5)

**clEsperantoJ**
* ClearCLImageInterface subtract_gaussian_background(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3, double arg4, double arg5)

**Macro**
* Ext.CLIJx_subtractGaussianBackground(Image input, ByRef Image destination, Number sigmaX, Number sigmaY, Number sigmaZ)

**pyclesperanto**
* subtract_gaussian_background(input : Image, destination : Image = None, sigma_x : float = 2, sigma_y : float = 2, sigma_z : float = 2):

## subtract_image_from_scalar
**CLIJ2**
* boolean subtractImageFromScalar(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface subtract_image_from_scalar(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3)

**Macro**
* Ext.CLIJ2_subtractImageFromScalar(Image input, ByRef Image destination, Number scalar)

**pyclesperanto**
* subtract_image_from_scalar(input : Image, destination : Image = None, scalar : float = 0):

## subtract_images
**CLIJ2**
* boolean subtractImages(ClearCLImageInterface subtrahend, ClearCLImageInterface minuend, ClearCLImageInterface destination)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface subtract_images(ClearCLImageInterface subtrahend, ClearCLImageInterface minuend, ClearCLImageInterface destination)

**Macro**
* Ext.CLIJ2_subtractImages(Image subtrahend, Image minuend, ByRef Image destination)

**pyclesperanto**
* subtract_images(subtrahend : Image, minuend : Image, destination : Image = None):

## sum_image_slice_by_slice
**CLIJ2**
* boolean sumImageSliceBySlice(ClearCLImageInterface source, ClearCLImageInterface destination)
* double[] sumImageSliceBySlice(ClearCLImageInterface arg1)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface sum_image_slice_by_slice(ClearCLImageInterface source, ClearCLImageInterface destination)
* ClearCLImageInterface sum_image_slice_by_slice(ClearCLImageInterface arg1)

**Macro**
* Ext.CLIJ2_sumImageSliceBySlice(Image source, ByRef Image destination)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## sum_of_all_pixels
**CLIJ2**
* double sumOfAllPixels(ClearCLImageInterface source)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface sum_of_all_pixels(ClearCLImageInterface source)

**Macro**
* Ext.CLIJ2_sumOfAllPixels(Image source)

**pyclesperanto**
* sum_of_all_pixels(source : Image):

## sum_pixels
**CLIJ2**
* double sumPixels(ClearCLImageInterface source)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* <span style="color:red">(Missing)</span>

**Macro**
* Ext.CLIJ2_sumOfAllPixels(Image source)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## sum_pixels_slice_by_slice
**CLIJ2**
* double[] sumPixelsSliceByslice(ClearCLImageInterface arg1)

**CLIJx**
* double[] sumPixelsSliceBySlice(ClearCLBuffer arg1)
* double[] sumPixelsSliceBySlice(ClearCLImage arg1)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* <span style="color:red">(Missing)</span>

**Macro**
* <span style="color:red">(Missing)</span>

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## sum_pixels_slice_byslice
**CLIJ2**
* double[] sumPixelsSliceByslice(ClearCLImageInterface arg1)

**CLIJx**
* double[] sumPixelsSliceBySlice(ClearCLBuffer arg1)
* double[] sumPixelsSliceBySlice(ClearCLImage arg1)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* <span style="color:red">(Missing)</span>

**Macro**
* <span style="color:red">(Missing)</span>

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## sum_x_projection
**CLIJ2**
* boolean sumXProjection(ClearCLImageInterface source, ClearCLImageInterface destination)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface sum_x_projection(ClearCLImageInterface source, ClearCLImageInterface destination)

**Macro**
* Ext.CLIJ2_sumXProjection(Image source, ByRef Image destination)

**pyclesperanto**
* sum_x_projection(source : Image, destination : Image = None):

## sum_y_projection
**CLIJ2**
* boolean sumYProjection(ClearCLImageInterface source, ClearCLImageInterface destination)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface sum_y_projection(ClearCLImageInterface source, ClearCLImageInterface destination)

**Macro**
* Ext.CLIJ2_sumYProjection(Image source, ByRef Image destination)

**pyclesperanto**
* sum_y_projection(source : Image, destination : Image = None):

## sum_z_projection
**CLIJ2**
* boolean sumZProjection(ClearCLImageInterface source, ClearCLImageInterface destination_sum)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface sum_z_projection(ClearCLImageInterface source, ClearCLImageInterface destination_sum)

**Macro**
* Ext.CLIJ2_sumZProjection(Image source, ByRef Image destination_sum)

**pyclesperanto**
* sum_z_projection(source : Image, destination : Image = None):

## sum_reduction_x
<span style="color:green">(experimental)</span>

**pyclesperanto**
* sum_reduction_x(src : Image, dst : Image = None, blocksize : int = 256):

## tenengrad
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean tenengrad(ClearCLImageInterface source, ClearCLImageInterface destination)

**clEsperantoJ**
* ClearCLImageInterface tenengrad(ClearCLImageInterface source, ClearCLImageInterface destination)

**Macro**
* Ext.CLIJx_tenengrad(Image source, ByRef Image destination)

## tenengrad_fusion
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean tenengradFusion(ClearCLBuffer arg1, float[] arg2, float arg3, ClearCLBuffer[] arg4)
* boolean tenengradFusion(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3, double arg4, double arg5, double arg6, double arg7)

**clEsperantoJ**
* ClearCLBuffer[] tenengrad_fusion(ClearCLBuffer arg1, float[] arg2, float arg3, ClearCLBuffer[] arg4)
* ClearCLBuffer tenengrad_fusion(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3, double arg4, double arg5, double arg6, double arg7)

**Macro**
* Ext.CLIJx_tenengradFusion(Image input, Image destination, Number number_of_substacks, Number sigmaX, Number sigmaY, Number sigmaZ, Number exponent)

## tenengrad_slice_by_slice
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean tenengradSliceBySlice(ClearCLImageInterface source, ClearCLImageInterface destination)

**clEsperantoJ**
* ClearCLImageInterface tenengrad_slice_by_slice(ClearCLImageInterface source, ClearCLImageInterface destination)

**Macro**
* Ext.CLIJx_tenengradSliceBySlice(Image source, ByRef Image destination)

## threshold
**CLIJ2**
* boolean threshold(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface threshold(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3)

**Macro**
* Ext.CLIJ2_threshold(Image source, ByRef Image destination, Number threshold)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## threshold_default
**CLIJ2**
* boolean thresholdDefault(ClearCLBuffer input, ClearCLBuffer destination)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* <span style="color:red">(Missing)</span>

**Macro**
* Ext.CLIJ2_thresholdDefault(Image input, ByRef Image destination)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## threshold_dog
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean thresholdDoG(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3, double arg4, double arg5, boolean arg6)

**clEsperantoJ**
* ClearCLBuffer threshold_dog(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3, double arg4, double arg5, boolean arg6)

**Macro**
* Ext.CLIJx_thresholdDoG(Image input, ByRef Image destination, Number sigma1, Number sigma2, Number threshold, Boolean above_threshold)

## threshold_huang
**CLIJ2**
* boolean thresholdHuang(ClearCLBuffer input, ClearCLBuffer destination)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer threshold_huang(ClearCLBuffer input, ClearCLBuffer destination)

**Macro**
* Ext.CLIJ2_thresholdHuang(Image input, ByRef Image destination)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## thresholdIJ_IsoData
**CLIJ2**
* boolean thresholdIJ_IsoData(ClearCLBuffer input, ClearCLBuffer destination)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer threshold_ij__iso_data(ClearCLBuffer input, ClearCLBuffer destination)

**Macro**
* Ext.CLIJ2_thresholdIJ_IsoData(Image input, ByRef Image destination)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## threshold_intermodes
**CLIJ2**
* boolean thresholdIntermodes(ClearCLBuffer input, ClearCLBuffer destination)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer threshold_intermodes(ClearCLBuffer input, ClearCLBuffer destination)

**Macro**
* Ext.CLIJ2_thresholdIntermodes(Image input, ByRef Image destination)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## threshold_iso_data
**CLIJ2**
* boolean thresholdIsoData(ClearCLBuffer input, ClearCLBuffer destination)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer threshold_iso_data(ClearCLBuffer input, ClearCLBuffer destination)

**Macro**
* Ext.CLIJ2_thresholdIsoData(Image input, ByRef Image destination)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## threshold_li
**CLIJ2**
* boolean thresholdLi(ClearCLBuffer input, ClearCLBuffer destination)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer threshold_li(ClearCLBuffer input, ClearCLBuffer destination)

**Macro**
* Ext.CLIJ2_thresholdLi(Image input, ByRef Image destination)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## threshold_max_entropy
**CLIJ2**
* boolean thresholdMaxEntropy(ClearCLBuffer input, ClearCLBuffer destination)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer threshold_max_entropy(ClearCLBuffer input, ClearCLBuffer destination)

**Macro**
* Ext.CLIJ2_thresholdMaxEntropy(Image input, ByRef Image destination)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## threshold_mean
**CLIJ2**
* boolean thresholdMean(ClearCLBuffer input, ClearCLBuffer destination)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer threshold_mean(ClearCLBuffer input, ClearCLBuffer destination)

**Macro**
* Ext.CLIJ2_thresholdMean(Image input, ByRef Image destination)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## threshold_min_error
**CLIJ2**
* boolean thresholdMinError(ClearCLBuffer input, ClearCLBuffer destination)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer threshold_min_error(ClearCLBuffer input, ClearCLBuffer destination)

**Macro**
* Ext.CLIJ2_thresholdMinError(Image input, ByRef Image destination)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## threshold_minimum
**CLIJ2**
* boolean thresholdMinimum(ClearCLBuffer input, ClearCLBuffer destination)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer threshold_minimum(ClearCLBuffer input, ClearCLBuffer destination)

**Macro**
* Ext.CLIJ2_thresholdMinimum(Image input, ByRef Image destination)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## threshold_moments
**CLIJ2**
* boolean thresholdMoments(ClearCLBuffer input, ClearCLBuffer destination)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer threshold_moments(ClearCLBuffer input, ClearCLBuffer destination)

**Macro**
* Ext.CLIJ2_thresholdMoments(Image input, ByRef Image destination)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## threshold_otsu
**CLIJ2**
* boolean thresholdOtsu(ClearCLBuffer input, ClearCLBuffer destination)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer threshold_otsu(ClearCLBuffer input, ClearCLBuffer destination)

**Macro**
* Ext.CLIJ2_thresholdOtsu(Image input, ByRef Image destination)

**pyclesperanto**
* threshold_otsu(input : Image, destination : Image = None):

## threshold_percentile
**CLIJ2**
* boolean thresholdPercentile(ClearCLBuffer input, ClearCLBuffer destination)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer threshold_percentile(ClearCLBuffer input, ClearCLBuffer destination)

**Macro**
* Ext.CLIJ2_thresholdPercentile(Image input, ByRef Image destination)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## threshold_renyi_entropy
**CLIJ2**
* boolean thresholdRenyiEntropy(ClearCLBuffer input, ClearCLBuffer destination)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer threshold_renyi_entropy(ClearCLBuffer input, ClearCLBuffer destination)

**Macro**
* Ext.CLIJ2_thresholdRenyiEntropy(Image input, ByRef Image destination)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## threshold_shanbhag
**CLIJ2**
* boolean thresholdShanbhag(ClearCLBuffer input, ClearCLBuffer destination)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer threshold_shanbhag(ClearCLBuffer input, ClearCLBuffer destination)

**Macro**
* Ext.CLIJ2_thresholdShanbhag(Image input, ByRef Image destination)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## threshold_triangle
**CLIJ2**
* boolean thresholdTriangle(ClearCLBuffer input, ClearCLBuffer destination)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer threshold_triangle(ClearCLBuffer input, ClearCLBuffer destination)

**Macro**
* Ext.CLIJ2_thresholdTriangle(Image input, ByRef Image destination)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## threshold_yen
**CLIJ2**
* boolean thresholdYen(ClearCLBuffer input, ClearCLBuffer destination)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer threshold_yen(ClearCLBuffer input, ClearCLBuffer destination)

**Macro**
* Ext.CLIJ2_thresholdYen(Image input, ByRef Image destination)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## top_hat_box
**CLIJ2**
* boolean topHatBox(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3, double arg4, double arg5)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer top_hat_box(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3, double arg4, double arg5)

**Macro**
* Ext.CLIJ2_topHatBox(Image input, ByRef Image destination, Number radiusX, Number radiusY, Number radiusZ)

**pyclesperanto**
* top_hat_box(input : Image, destination : Image = None, radius_x : float = 1, radius_y : float = 1, radius_z : float = 1):

## top_hat_octagon
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean topHatOctagon(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3)

**clEsperantoJ**
* ClearCLBuffer top_hat_octagon(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3)

**Macro**
* Ext.CLIJx_topHatOctagon(Image input, ByRef Image destination, Number iterations)

## top_hat_octagon_slice_by_slice
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean topHatOctagonSliceBySlice(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3)

**clEsperantoJ**
* ClearCLBuffer top_hat_octagon_slice_by_slice(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3)

**Macro**
* Ext.CLIJx_topHatOctagonSliceBySlice(Image input, ByRef Image destination, Number iterations)

## top_hat_sphere
**CLIJ2**
* boolean topHatSphere(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3, double arg4, double arg5)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer top_hat_sphere(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3, double arg4, double arg5)

**Macro**
* Ext.CLIJ2_topHatSphere(Image input, ByRef Image destination, Number radiusX, Number radiusY, Number radiusZ)

**pyclesperanto**
* top_hat_sphere(input : Image, destination : Image = None, radius_x : float = 1, radius_y : float = 1, radius_z : float = 1):

## touch_matrix_to_adjacency_matrix
**CLIJ2**
* boolean touchMatrixToAdjacencyMatrix(ClearCLBuffer touch_matrix, ClearCLBuffer adjacency_matrix)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer touch_matrix_to_adjacency_matrix(ClearCLBuffer touch_matrix, ClearCLBuffer adjacency_matrix)

**Macro**
* Ext.CLIJ2_touchMatrixToAdjacencyMatrix(Image touch_matrix, ByRef Image adjacency_matrix)

**pyclesperanto**
* touch_matrix_to_adjacency_matrix(touch_matrix :Image, adjacency_matrix_destination :Image = None, self_adjacent : bool = True):

## touch_matrix_to_mesh
**CLIJ2**
* boolean touchMatrixToMesh(ClearCLBuffer pointlist, ClearCLBuffer touch_matrix, ClearCLBuffer mesh_destination)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer touch_matrix_to_mesh(ClearCLBuffer pointlist, ClearCLBuffer touch_matrix, ClearCLBuffer mesh_destination)

**Macro**
* Ext.CLIJ2_touchMatrixToMesh(Image pointlist, Image touch_matrix, ByRef Image mesh_destination)

**pyclesperanto**
* touch_matrix_to_mesh(pointlist  : Image, touch_matrix : Image, mesh_destination : Image):

## touching_neighbor_count_map
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean touchingNeighborCountMap(ClearCLBuffer input, ClearCLBuffer destination)

**clEsperantoJ**
* ClearCLBuffer touching_neighbor_count_map(ClearCLBuffer input, ClearCLBuffer destination)

**Macro**
* Ext.CLIJx_touchingNeighborCountMap(Image input, ByRef Image destination)

**pyclesperanto**
* touching_neighbor_count_map(input : Image, destination : Image = None):

## train_auto_context_weka_model_with_options
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean trainAutoContextWekaModelWithOptions(ClearCLBuffer arg1, ClearCLBuffer arg2, String arg3, String arg4, double arg5, double arg6, double arg7, double arg8)

**clEsperantoJ**
* ClearCLBuffer train_auto_context_weka_model_with_options(ClearCLBuffer arg1, ClearCLBuffer arg2, String arg3, String arg4, double arg5, double arg6, double arg7, double arg8)

## train_weka_from_table
<span style="color:green">(experimental)</span>

**CLIJx**
* CLIJxWeka2 trainWekaFromTable(ResultsTable arg1, String arg2, double arg3, double arg4, double arg5)
* CLIJxWeka2 trainWekaFromTable(ResultsTable arg1, String arg2, String arg3, double arg4, double arg5, double arg6)

**clEsperantoJ**
* CLIJxWeka2 train_weka_from_table(ResultsTable arg1, String arg2, double arg3, double arg4, double arg5)
* CLIJxWeka2 train_weka_from_table(ResultsTable arg1, String arg2, String arg3, double arg4, double arg5, double arg6)

**Macro**
* Ext.CLIJx_trainWekaFromTable(String groundTruthColumnName, String saveModelFilename, Number trees, Number features, Number maxDepth)

## train_weka_model
<span style="color:green">(experimental)</span>

**CLIJx**
* CLIJxWeka2 trainWekaModel(ClearCLBuffer featureStack3D, ClearCLBuffer groundTruth2D, String saveModelFilename)

**clEsperantoJ**
* ClearCLBuffer train_weka_model(ClearCLBuffer featureStack3D, ClearCLBuffer groundTruth2D, String saveModelFilename)

**Macro**
* Ext.CLIJx_trainWekaModel(Image featureStack3D, Image groundTruth2D, String saveModelFilename)

## train_weka_model_with_options
<span style="color:green">(experimental)</span>

**CLIJx**
* CLIJxWeka2 trainWekaModelWithOptions(ClearCLBuffer arg1, ClearCLBuffer arg2, String arg3, double arg4, double arg5, double arg6)

**clEsperantoJ**
* ClearCLBuffer train_weka_model_with_options(ClearCLBuffer arg1, ClearCLBuffer arg2, String arg3, double arg4, double arg5, double arg6)

**Macro**
* Ext.CLIJx_trainWekaModelWithOptions(Image featureStack3D, Image groundTruth2D, String saveModelFilename, Number trees, Number features, Number maxDepth)

## translate
**CLIJ2**
* boolean translate2D(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3, double arg4)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer translate2d(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3, double arg4)

**Macro**
* Ext.CLIJ2_translate2D(Image source, ByRef Image destination, Number translateX, Number translateY)

**pyclesperanto**
* translate(source : Image, destination : Image = None, translate_x : float = 0, translate_y : float = 0, translate_z : float = 0):

## translate
**CLIJ2**
* boolean translate3D(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3, double arg4, double arg5)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer translate3d(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3, double arg4, double arg5)

**Macro**
* Ext.CLIJ2_translate3D(Image source, ByRef Image destination, Number translateX, Number translateY, Number translateZ)

**pyclesperanto**
* translate(source : Image, destination : Image = None, translate_x : float = 0, translate_y : float = 0, translate_z : float = 0):

## translation_registration
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean translationRegistration(ClearCLBuffer arg1, ClearCLBuffer arg2, double[] arg3)
* boolean translationRegistration(ClearCLBuffer input1, ClearCLBuffer input2, ClearCLBuffer destination)

**clEsperantoJ**
* ClearCLBuffer translation_registration(ClearCLBuffer arg1, ClearCLBuffer arg2, double[] arg3)
* ClearCLBuffer translation_registration(ClearCLBuffer input1, ClearCLBuffer input2, ClearCLBuffer destination)

**Macro**
* Ext.CLIJx_translationRegistration(Image input1, Image input2, ByRef Image destination)

## translation_timelapse_registration
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean translationTimelapseRegistration(ClearCLBuffer input, ClearCLBuffer output)

**clEsperantoJ**
* ClearCLBuffer translation_timelapse_registration(ClearCLBuffer input, ClearCLBuffer output)

**Macro**
* Ext.CLIJx_translationTimelapseRegistration(Image input, ByRef Image output)

## transpose_xy
**CLIJ2**
* boolean transposeXY(ClearCLBuffer input, ClearCLBuffer destination)
* transposeXY(input, buffer);
* transposeXY(input, buffer);

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer transpose_xy(ClearCLBuffer input, ClearCLBuffer destination)

**Macro**
* Ext.CLIJ2_transposeXY(Image input, ByRef Image destination)

**pyclesperanto**
* transpose_xy(input : Image, destination : Image = None):

## transpose_xz
**CLIJ2**
* boolean transposeXZ(ClearCLBuffer input, ClearCLBuffer destination)
* transposeXZ(input, buffer);

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer transpose_xz(ClearCLBuffer input, ClearCLBuffer destination)

**Macro**
* Ext.CLIJ2_transposeXZ(Image input, ByRef Image destination)

**pyclesperanto**
* transpose_xz(input : Image, destination : Image = None):

## transpose_yz
**CLIJ2**
* boolean transposeYZ(ClearCLBuffer input, ClearCLBuffer destination)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer transpose_yz(ClearCLBuffer input, ClearCLBuffer destination)

**Macro**
* Ext.CLIJ2_transposeYZ(Image input, ByRef Image destination)

**pyclesperanto**
* transpose_yz(input : Image, destination : Image = None):

## types
<span style="color:green">(experimental)</span>

## undefined_to_zero
**CLIJ2**
* boolean undefinedToZero(ClearCLBuffer source, ClearCLBuffer destination)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer undefined_to_zero(ClearCLBuffer source, ClearCLBuffer destination)

**Macro**
* Ext.CLIJ2_undefinedToZero(Image source, ByRef Image destination)

**pyclesperanto**
* undefined_to_zero(source : Image, destination : Image = None):

## variance_box
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean varianceBox(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3, double arg4, double arg5)

**clEsperantoJ**
* ClearCLImageInterface variance_box(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3, double arg4, double arg5)

**Macro**
* Ext.CLIJx_varianceBox(Image source, ByRef Image destination, Number radius_x, Number radius_y, Number radius_z)

## variance_of_all_pixels
**CLIJ2**
* double varianceOfAllPixels(ClearCLBuffer source)
* double varianceOfAllPixels(ClearCLImageInterface arg1, double arg2)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer variance_of_all_pixels(ClearCLBuffer source)
* ClearCLImageInterface variance_of_all_pixels(ClearCLImageInterface arg1, double arg2)

**Macro**
* Ext.CLIJ2_varianceOfAllPixels(Image source)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## variance_of_masked_pixels
**CLIJ2**
* double varianceOfMaskedPixels(ClearCLBuffer source, ClearCLBuffer mask)
* double varianceOfMaskedPixels(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer variance_of_masked_pixels(ClearCLBuffer source, ClearCLBuffer mask)
* ClearCLBuffer variance_of_masked_pixels(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3)

**Macro**
* Ext.CLIJ2_varianceOfMaskedPixels(Image source, Image mask)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## variance_sphere
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean varianceSphere(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3, double arg4, double arg5)

**clEsperantoJ**
* ClearCLImageInterface variance_sphere(ClearCLImageInterface arg1, ClearCLImageInterface arg2, double arg3, double arg4, double arg5)

**Macro**
* Ext.CLIJx_varianceSphere(Image source, ByRef Image destination, Number radius_x, Number radius_y, Number radius_z)

## visualize_outlines_on_original
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean visualizeOutlinesOnOriginal(ClearCLBuffer intensity, ClearCLBuffer labels, ClearCLBuffer destination)

**clEsperantoJ**
* ClearCLBuffer visualize_outlines_on_original(ClearCLBuffer intensity, ClearCLBuffer labels, ClearCLBuffer destination)

**Macro**
* Ext.CLIJx_visualizeOutlinesOnOriginal(Image intensity, Image labels, ByRef Image destination)

## voronoi_labeling
**CLIJ2**
* boolean voronoiLabeling(ClearCLBuffer input, ClearCLImageInterface destination)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLImageInterface voronoi_labeling(ClearCLBuffer input, ClearCLImageInterface destination)

**Macro**
* Ext.CLIJ2_voronoiLabeling(Image input, ByRef Image destination)

**pyclesperanto**
* voronoi_labeling(binary_source : Image, labeling_destination : Image = None):

## voronoi_octagon
**CLIJ2**
* boolean voronoiOctagon(ClearCLBuffer input, ClearCLBuffer destination)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer voronoi_octagon(ClearCLBuffer input, ClearCLBuffer destination)

**Macro**
* Ext.CLIJ2_voronoiOctagon(Image input, ByRef Image destination)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## voronoi_otsu_labeling
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean voronoiOtsuLabeling(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3, double arg4)

**clEsperantoJ**
* ClearCLBuffer voronoi_otsu_labeling(ClearCLBuffer arg1, ClearCLBuffer arg2, double arg3, double arg4)

**Macro**
* Ext.CLIJx_voronoiOtsuLabeling(Image input, ByRef Image destination, Number spot_sigma, Number outline_sigma)

**pyclesperanto**
* voronoi_otsu_labeling(source : Image, label_image_destination : Image = None, spot_sigma : float = 2, outline_sigma : float = 2):

## watershed
**CLIJ2**
* boolean watershed(ClearCLBuffer binary_source, ClearCLBuffer destination)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer watershed(ClearCLBuffer binary_source, ClearCLBuffer destination)

**Macro**
* Ext.CLIJ2_watershed(Image binary_source, ByRef Image destination)

**pyclesperanto**
* <span style="color:red">(Missing)</span>

## weka_label_classifier
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean wekaLabelClassifier(ClearCLBuffer input, ClearCLBuffer label_map, ClearCLBuffer destination, String features, String modelfilename)

**clEsperantoJ**
* ClearCLBuffer weka_label_classifier(ClearCLBuffer input, ClearCLBuffer label_map, ClearCLBuffer destination, String features, String modelfilename)

**Macro**
* Ext.CLIJx_wekaLabelClassifier(Image input, Image label_map, ByRef Image destination, String features, String modelfilename)

## weka_regional_label_classifier
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean wekaRegionalLabelClassifier(ClearCLBuffer arg1, ClearCLBuffer arg2, ClearCLBuffer arg3, String arg4, String arg5, double arg6, double arg7, double arg8, double arg9)

**clEsperantoJ**
* ClearCLBuffer weka_regional_label_classifier(ClearCLBuffer arg1, ClearCLBuffer arg2, ClearCLBuffer arg3, String arg4, String arg5, double arg6, double arg7, double arg8, double arg9)

**Macro**
* Ext.CLIJx_wekaRegionalLabelClassifier(Image input, Image label_map, ByRef Image destination, String features, String modelfilename, Number radius_of_maximum, Number radius_of_minimum, Number radius_of_mean, Number radius_of_standard_deviation)

## write_v_t_k_line_list_to_disc
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean writeVTKLineListToDisc(ClearCLBuffer pointlist, ClearCLBuffer touch_matrix, String filename)

**clEsperantoJ**
* ClearCLBuffer write_v_t_k_line_list_to_disc(ClearCLBuffer pointlist, ClearCLBuffer touch_matrix, String filename)

**Macro**
* Ext.CLIJx_writeVTKLineListToDisc(Image pointlist, Image touch_matrix, String filename)

## write_values_to_positions
**CLIJ2**
* boolean writeValuesToPositions(ClearCLBuffer positions_and_values, ClearCLBuffer destination)

**CLIc**
* <span style="color:red">(Missing)</span>

**clEsperantoJ**
* ClearCLBuffer write_values_to_positions(ClearCLBuffer positions_and_values, ClearCLBuffer destination)

**Macro**
* Ext.CLIJ2_writeValuesToPositions(Image positions_and_values, ByRef Image destination)

**pyclesperanto**
* write_values_to_positions(positions_and_values : Image, destination : Image = None):

## write_xyz_point_list_to_disc
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean writeXYZPointListToDisc(ClearCLBuffer pointlist, String filename)

**clEsperantoJ**
* ClearCLBuffer write_xyz_point_list_to_disc(ClearCLBuffer pointlist, String filename)

**Macro**
* Ext.CLIJx_writeXYZPointListToDisc(Image pointlist, String filename)

## z_position_of_maximum_z_projection
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean zPositionOfMaximumZProjection(ClearCLImageInterface source, ClearCLImageInterface destination)

**clEsperantoJ**
* ClearCLImageInterface z_position_of_maximum_z_projection(ClearCLImageInterface source, ClearCLImageInterface destination)

**Macro**
* Ext.CLIJx_zPositionOfMaximumZProjection(Image source, ByRef Image destination)

## z_position_of_minimum_z_projection
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean zPositionOfMinimumZProjection(ClearCLImageInterface source, ClearCLImageInterface destination)

**clEsperantoJ**
* ClearCLImageInterface z_position_of_minimum_z_projection(ClearCLImageInterface source, ClearCLImageInterface destination)

**Macro**
* Ext.CLIJx_zPositionOfMinimumZProjection(Image source, ByRef Image destination)

## z_position_projection
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean zPositionProjection(ClearCLImageInterface source_stack, ClearCLImageInterface z_position, ClearCLImageInterface destination)

**clEsperantoJ**
* ClearCLImageInterface z_position_projection(ClearCLImageInterface source_stack, ClearCLImageInterface z_position, ClearCLImageInterface destination)

**Macro**
* Ext.CLIJx_zPositionProjection(Image source_stack, Image z_position, ByRef Image destination)

## z_position_range_projection
<span style="color:green">(experimental)</span>

**CLIJx**
* boolean zPositionRangeProjection(ClearCLImageInterface arg1, ClearCLImageInterface arg2, ClearCLImageInterface arg3, int arg4, int arg5)

**clEsperantoJ**
* ClearCLImageInterface z_position_range_projection(ClearCLImageInterface arg1, ClearCLImageInterface arg2, ClearCLImageInterface arg3, int arg4, int arg5)

**Macro**
* Ext.CLIJx_zPositionRangeProjection(Image source_stack, Image z_position, ByRef Image destination, Number start_z, Number end_z)



647 methods listed.
import Foundation

extension CIFilter{ 
/// Triangle Kaleidoscope
///
/// - Parameters
///   - Parameter inputRotation: Rotation angle of the triangle.
///   - Parameter inputDecay: The decay determines how fast the color fades from the center triangle.
///   - Parameter inputPoint: The x and y position to use as the center of the triangular area in the input image.
///   - Parameter inputSize: The size in pixels of the triangle.
/// -  Returns: The filtered image or nil
	class func triangleKaleidoscope(inputRotation:CGColorSpace,inputDecay:CGColorSpace,inputPoint:CIVector,inputSize:Double = 700)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CITriangleKaleidoscope"){ 
			filter.setValue(inputRotation, forKey:"inputRotation")
			filter.setValue(inputDecay, forKey:"inputDecay")
			filter.setValue(inputPoint, forKey:"inputPoint")
			filter.setValue(inputSize, forKey:"inputSize")
			result = filter
		}
		return result
	}
}

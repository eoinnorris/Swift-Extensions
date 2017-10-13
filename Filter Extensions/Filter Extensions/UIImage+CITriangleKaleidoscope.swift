import Foundation

extension UIImage{ 
/// Triangle Kaleidoscope
///
/// - Parameters
///   - Parameter inputRotation: Rotation angle of the triangle.
///   - Parameter inputDecay: The decay determines how fast the color fades from the center triangle.
///   - Parameter inputPoint: The x and y position to use as the center of the triangular area in the input image.
///   - Parameter inputSize: The size in pixels of the triangle.
/// -  Returns: The filtered image or nil
	func triangleKaleidoscope(inputRotation:CGColorSpace,inputDecay:CGColorSpace,inputPoint:CIVector,inputSize:Double = 700)->UIImage?{ 
		if let filter = CIFilter.triangleKaleidoscope(inputRotation:inputRotation,inputDecay:inputDecay,inputPoint:inputPoint,inputSize:inputSize){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}
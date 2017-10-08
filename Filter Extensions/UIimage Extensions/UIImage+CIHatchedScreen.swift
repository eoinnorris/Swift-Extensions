import Foundation

extension UIImage{ 
/// Hatched Screen
///
/// - Parameters
///   - Parameter inputCenter: The x and y position to use as the center of the hatched screen pattern
///   - Parameter inputAngle: The angle of the pattern.
///   - Parameter inputWidth: The distance between lines in the pattern.
///   - Parameter inputSharpness: The amount of sharpening to apply.
/// -  Returns: The filtered image or nil
	func hatchedScreen(inputCenter:CIVector,inputAngle:Double = 0,inputWidth:Double = 6,inputSharpness:CGColorSpace)->UIImage?{ 
		if let filter = CIFilter.hatchedScreen(inputCenter:inputCenter,inputAngle:inputAngle,inputWidth:inputWidth,inputSharpness:inputSharpness){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}
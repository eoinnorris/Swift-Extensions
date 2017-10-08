import Foundation

extension UIImage{ 
/// Circular Screen
///
/// - Parameters
///   - Parameter inputCenter: The x and y position to use as the center of the circular screen pattern
///   - Parameter inputWidth: The distance between each circle in the pattern.
///   - Parameter inputSharpness: The sharpness of the circles. The larger the value, the sharper the circles.
/// -  Returns: The filtered image or nil
	func circularScreen(inputCenter:CIVector,inputWidth:Double = 6,inputSharpness:CGColorSpace)->UIImage?{ 
		if let filter = CIFilter.circularScreen(inputCenter:inputCenter,inputWidth:inputWidth,inputSharpness:inputSharpness){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}
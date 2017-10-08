import Foundation

extension UIImage{ 
/// Dot Screen
///
/// - Parameters
///   - Parameter inputCenter: The x and y position to use as the center of the dot screen pattern
///   - Parameter inputAngle: The angle of the pattern.
///   - Parameter inputWidth: The distance between dots in the pattern.
///   - Parameter inputSharpness: The sharpness of the pattern. The larger the value, the sharper the pattern.
/// -  Returns: The filtered image or nil
	func dotScreen(inputCenter:CIVector,inputAngle:Double = 0,inputWidth:Double = 6,inputSharpness:CGColorSpace)->UIImage?{ 
		if let filter = CIFilter.dotScreen(inputCenter:inputCenter,inputAngle:inputAngle,inputWidth:inputWidth,inputSharpness:inputSharpness){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}
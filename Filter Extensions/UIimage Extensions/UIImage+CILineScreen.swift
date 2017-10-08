import Foundation

extension UIImage{ 
/// Line Screen
///
/// - Parameters
///   - Parameter inputCenter: The x and y position to use as the center of the line screen pattern
///   - Parameter inputAngle: The angle of the pattern.
///   - Parameter inputWidth: The distance between lines in the pattern.
///   - Parameter inputSharpness: The sharpness of the pattern. The larger the value, the sharper the pattern.
/// -  Returns: The filtered image or nil
	func lineScreen(inputCenter:CIVector,inputAngle:Double = 0,inputWidth:Double = 6,inputSharpness:CGColorSpace)->UIImage?{ 
		if let filter = CIFilter.lineScreen(inputCenter:inputCenter,inputAngle:inputAngle,inputWidth:inputWidth,inputSharpness:inputSharpness){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}
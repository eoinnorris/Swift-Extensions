import Foundation

extension UIImage{ 
/// Checkerboard
///
/// - Parameters
///   - Parameter inputCenter: The center of the effect as x and y coordinates.
///   - Parameter inputColor1: A color to use for the second set of squares.
///   - Parameter inputColor0: A color to use for the first set of squares.
///   - Parameter inputWidth: The width of the squares in the pattern.
///   - Parameter inputSharpness: The sharpness of the edges in pattern. The smaller the value, the more blurry the pattern. Values range from 0.0 to 1.0.
/// -  Returns: The filtered image or nil
	func checkerboardGenerator(inputCenter:CIVector,inputColor1:CIColor,inputColor0:CIColor,inputWidth:Double = 80,inputSharpness:Double = 1)->UIImage?{ 
		if let filter = CIFilter.checkerboardGenerator(inputCenter:inputCenter,inputColor1:inputColor1,inputColor0:inputColor0,inputWidth:inputWidth,inputSharpness:inputSharpness){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}
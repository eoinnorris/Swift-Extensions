import Foundation

extension UIImage{ 
/// Radial Gradient
///
/// - Parameters
///   - Parameter inputCenter: The center of the effect as x and y coordinates.
///   - Parameter inputColor0: The first color to use in the gradient.
///   - Parameter inputRadius1: The radius of the ending circle to use in the gradient.
///   - Parameter inputRadius0: The radius of the starting circle to use in the gradient.
///   - Parameter inputColor1: The second color to use in the gradient.
/// -  Returns: The filtered image or nil
	func radialGradient(inputCenter:CIVector,inputColor0:CIColor,inputRadius1:Double = 100,inputRadius0:Double = 5,inputColor1:CIColor)->UIImage?{ 
		if let filter = CIFilter.radialGradient(inputCenter:inputCenter,inputColor0:inputColor0,inputRadius1:inputRadius1,inputRadius0:inputRadius0,inputColor1:inputColor1){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}
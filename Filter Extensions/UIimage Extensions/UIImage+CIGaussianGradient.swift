import Foundation

extension UIImage{ 
/// Gaussian Gradient
///
/// - Parameters
///   - Parameter inputCenter: The center of the effect as x and y coordinates.
///   - Parameter inputColor0: The first color to use in the gradient.
///   - Parameter inputRadius: The radius of the Gaussian distribution.
///   - Parameter inputColor1: The second color to use in the gradient.
/// -  Returns: The filtered image or nil
	func gaussianGradient(inputCenter:CIVector,inputColor0:CIColor,inputRadius:Double = 300,inputColor1:CIColor)->UIImage?{ 
		if let filter = CIFilter.gaussianGradient(inputCenter:inputCenter,inputColor0:inputColor0,inputRadius:inputRadius,inputColor1:inputColor1){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}
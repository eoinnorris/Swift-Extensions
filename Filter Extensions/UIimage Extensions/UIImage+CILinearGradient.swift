import Foundation

extension UIImage{ 
/// Linear Gradient
///
/// - Parameters
///   - Parameter inputColor0: The first color to use in the gradient.
///   - Parameter inputPoint1: The ending position of the gradient -- where the second color begins.
///   - Parameter inputPoint0: The starting position of the gradient -- where the first color begins.
///   - Parameter inputColor1: The second color to use in the gradient.
/// -  Returns: The filtered image or nil
	func linearGradient(inputColor0:CIColor,inputPoint1:CIVector,inputPoint0:CIVector,inputColor1:CIColor)->UIImage?{ 
		if let filter = CIFilter.linearGradient(inputColor0:inputColor0,inputPoint1:inputPoint1,inputPoint0:inputPoint0,inputColor1:inputColor1){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}
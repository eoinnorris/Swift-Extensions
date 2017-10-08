import Foundation

extension UIImage{ 
/// Masked Variable Blur
///
/// - Parameters
///   - Parameter inputMask: 
///   - Parameter inputRadius: The distance from the center of the effect.
/// -  Returns: The filtered image or nil
	func maskedVariableBlur(inputMask:CIImage,inputRadius:Double = 5)->UIImage?{ 
		if let filter = CIFilter.maskedVariableBlur(inputMask:inputMask,inputRadius:inputRadius){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}
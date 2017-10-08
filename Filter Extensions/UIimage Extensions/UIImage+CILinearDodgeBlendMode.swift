import Foundation

extension UIImage{ 
/// Linear Dodge Blend Mode
///
/// - Parameters
///   - Parameter inputBackgroundImage: The image to use as a background image.
/// -  Returns: The filtered image or nil
	func linearDodgeBlendMode(inputBackgroundImage:CIImage)->UIImage?{ 
		if let filter = CIFilter.linearDodgeBlendMode(inputBackgroundImage:inputBackgroundImage){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}
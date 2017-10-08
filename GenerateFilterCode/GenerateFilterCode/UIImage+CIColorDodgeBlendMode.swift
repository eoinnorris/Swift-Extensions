import Foundation

extension UIImage{ 
/// Color Dodge Blend Mode
///
/// - Parameters
///   - Parameter inputBackgroundImage: The image to use as a background image.
/// -  Returns: The filtered image or nil
	func colorDodgeBlendMode(inputBackgroundImage:CIImage)->UIImage?{ 
		if let filter = CIFilter.colorDodgeBlendMode(inputBackgroundImage:inputBackgroundImage){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}
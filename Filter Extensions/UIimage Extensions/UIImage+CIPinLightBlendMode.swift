import Foundation

extension UIImage{ 
/// Pin Light Blend Mode
///
/// - Parameters
///   - Parameter inputBackgroundImage: The image to use as a background image.
/// -  Returns: The filtered image or nil
	func pinLightBlendMode(inputBackgroundImage:CIImage)->UIImage?{ 
		if let filter = CIFilter.pinLightBlendMode(inputBackgroundImage:inputBackgroundImage){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}
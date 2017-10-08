import Foundation

extension UIImage{ 
/// Soft Light Blend Mode
///
/// - Parameters
///   - Parameter inputBackgroundImage: The image to use as a background image.
/// -  Returns: The filtered image or nil
	func softLightBlendMode(inputBackgroundImage:CIImage)->UIImage?{ 
		if let filter = CIFilter.softLightBlendMode(inputBackgroundImage:inputBackgroundImage){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}
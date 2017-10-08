import Foundation

extension UIImage{ 
/// Overlay Blend Mode
///
/// - Parameters
///   - Parameter inputBackgroundImage: The image to use as a background image.
/// -  Returns: The filtered image or nil
	func overlayBlendMode(inputBackgroundImage:CIImage)->UIImage?{ 
		if let filter = CIFilter.overlayBlendMode(inputBackgroundImage:inputBackgroundImage){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}
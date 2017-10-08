import Foundation

extension UIImage{ 
/// Darken Blend Mode
///
/// - Parameters
///   - Parameter inputBackgroundImage: The image to use as a background image.
/// -  Returns: The filtered image or nil
	func darkenBlendMode(inputBackgroundImage:CIImage)->UIImage?{ 
		if let filter = CIFilter.darkenBlendMode(inputBackgroundImage:inputBackgroundImage){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}
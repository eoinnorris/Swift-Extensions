import Foundation

extension UIImage{ 
/// Luminosity Blend Mode
///
/// - Parameters
///   - Parameter inputBackgroundImage: The image to use as a background image.
/// -  Returns: The filtered image or nil
	func luminosityBlendMode(inputBackgroundImage:CIImage)->UIImage?{ 
		if let filter = CIFilter.luminosityBlendMode(inputBackgroundImage:inputBackgroundImage){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}
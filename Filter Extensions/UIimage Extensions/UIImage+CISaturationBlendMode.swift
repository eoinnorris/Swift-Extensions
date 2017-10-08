import Foundation

extension UIImage{ 
/// Saturation Blend Mode
///
/// - Parameters
///   - Parameter inputBackgroundImage: The image to use as a background image.
/// -  Returns: The filtered image or nil
	func saturationBlendMode(inputBackgroundImage:CIImage)->UIImage?{ 
		if let filter = CIFilter.saturationBlendMode(inputBackgroundImage:inputBackgroundImage){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}
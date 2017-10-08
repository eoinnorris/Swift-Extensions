import Foundation

extension UIImage{ 
/// Hue Blend Mode
///
/// - Parameters
///   - Parameter inputBackgroundImage: The image to use as a background image.
/// -  Returns: The filtered image or nil
	func hueBlendMode(inputBackgroundImage:CIImage)->UIImage?{ 
		if let filter = CIFilter.hueBlendMode(inputBackgroundImage:inputBackgroundImage){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}
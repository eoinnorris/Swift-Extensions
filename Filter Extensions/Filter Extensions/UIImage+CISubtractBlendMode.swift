import Foundation

extension UIImage{ 
/// Subtract Blend Mode
///
/// - Parameters
///   - Parameter inputBackgroundImage: The image to use as a background image.
/// -  Returns: The filtered image or nil
	func subtractBlendMode(inputBackgroundImage:CIImage)->UIImage?{ 
		if let filter = CIFilter.subtractBlendMode(inputBackgroundImage:inputBackgroundImage){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}
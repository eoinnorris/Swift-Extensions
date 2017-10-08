import Foundation

extension UIImage{ 
/// Divide Blend Mode
///
/// - Parameters
///   - Parameter inputBackgroundImage: The image to use as a background image.
/// -  Returns: The filtered image or nil
	func divideBlendMode(inputBackgroundImage:CIImage)->UIImage?{ 
		if let filter = CIFilter.divideBlendMode(inputBackgroundImage:inputBackgroundImage){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}
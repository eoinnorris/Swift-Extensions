import Foundation

extension UIImage{ 
/// Multiply Blend Mode
///
/// - Parameters
///   - Parameter inputBackgroundImage: The image to use as a background image.
/// -  Returns: The filtered image or nil
	func multiplyBlendMode(inputBackgroundImage:CIImage)->UIImage?{ 
		if let filter = CIFilter.multiplyBlendMode(inputBackgroundImage:inputBackgroundImage){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}
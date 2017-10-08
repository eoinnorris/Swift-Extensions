import Foundation

extension UIImage{ 
/// Difference Blend Mode
///
/// - Parameters
///   - Parameter inputBackgroundImage: The image to use as a background image.
/// -  Returns: The filtered image or nil
	func differenceBlendMode(inputBackgroundImage:CIImage)->UIImage?{ 
		if let filter = CIFilter.differenceBlendMode(inputBackgroundImage:inputBackgroundImage){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}
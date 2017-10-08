import Foundation

extension UIImage{ 
/// Exclusion Blend Mode
///
/// - Parameters
///   - Parameter inputBackgroundImage: The image to use as a background image.
/// -  Returns: The filtered image or nil
	func exclusionBlendMode(inputBackgroundImage:CIImage)->UIImage?{ 
		if let filter = CIFilter.exclusionBlendMode(inputBackgroundImage:inputBackgroundImage){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}
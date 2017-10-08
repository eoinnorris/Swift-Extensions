import Foundation

extension UIImage{ 
/// Linear Burn Blend Mode
///
/// - Parameters
///   - Parameter inputBackgroundImage: The image to use as a background image.
/// -  Returns: The filtered image or nil
	func linearBurnBlendMode(inputBackgroundImage:CIImage)->UIImage?{ 
		if let filter = CIFilter.linearBurnBlendMode(inputBackgroundImage:inputBackgroundImage){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}
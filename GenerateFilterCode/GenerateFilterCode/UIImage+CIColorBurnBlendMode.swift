import Foundation

extension UIImage{ 
/// Color Burn Blend Mode
///
/// - Parameters
///   - Parameter inputBackgroundImage: The image to use as a background image.
/// -  Returns: The filtered image or nil
	func colorBurnBlendMode(inputBackgroundImage:CIImage)->UIImage?{ 
		if let filter = CIFilter.colorBurnBlendMode(inputBackgroundImage:inputBackgroundImage){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}
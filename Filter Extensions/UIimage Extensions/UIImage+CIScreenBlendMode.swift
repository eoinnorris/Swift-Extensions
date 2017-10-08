import Foundation

extension UIImage{ 
/// Screen Blend Mode
///
/// - Parameters
///   - Parameter inputBackgroundImage: The image to use as a background image.
/// -  Returns: The filtered image or nil
	func screenBlendMode(inputBackgroundImage:CIImage)->UIImage?{ 
		if let filter = CIFilter.screenBlendMode(inputBackgroundImage:inputBackgroundImage){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}
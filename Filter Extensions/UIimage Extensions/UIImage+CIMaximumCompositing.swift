import Foundation

extension UIImage{ 
/// Maximum
///
/// - Parameters
///   - Parameter inputBackgroundImage: The image to use as a background image.
/// -  Returns: The filtered image or nil
	func maximumCompositing(inputBackgroundImage:CIImage)->UIImage?{ 
		if let filter = CIFilter.maximumCompositing(inputBackgroundImage:inputBackgroundImage){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}